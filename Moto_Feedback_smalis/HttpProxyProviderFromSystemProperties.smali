.class public Lcom/motorola/ccc/http/proxy/provider/HttpProxyProviderFromSystemProperties;
.super Ljava/lang/Object;
.source "HttpProxyProviderFromSystemProperties.java"

# interfaces
.implements Lcom/motorola/ccc/http/proxy/provider/HttpProxyProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProxyHost()Lorg/apache/http/HttpHost;
    .locals 3

    const-string p0, "http.proxyHost"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http.proxyPort"

    const-string v1, "-1"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "systemProxyHost: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " systemProxyPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpProxyManager"

    invoke-static {v2, v1}, Lcom/motorola/ccc/http/proxy/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, p0, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
