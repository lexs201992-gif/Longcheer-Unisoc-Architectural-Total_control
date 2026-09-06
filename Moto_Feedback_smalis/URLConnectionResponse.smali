.class public Lnet/oauth/client/URLConnectionResponse;
.super Lnet/oauth/http/HttpResponseMessage;
.source "URLConnectionResponse.java"


# instance fields
.field private final connection:Ljava/net/URLConnection;

.field private final requestEncoding:Ljava/lang/String;

.field private final requestExcerpt:[B

.field private final requestHeaders:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/oauth/http/HttpMessage;Ljava/lang/String;[BLjava/net/URLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lnet/oauth/http/HttpMessage;->method:Ljava/lang/String;

    iget-object v1, p1, Lnet/oauth/http/HttpMessage;->url:Ljava/net/URL;

    invoke-direct {p0, v0, v1}, Lnet/oauth/http/HttpResponseMessage;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    iput-object p2, p0, Lnet/oauth/client/URLConnectionResponse;->requestHeaders:Ljava/lang/String;

    iput-object p3, p0, Lnet/oauth/client/URLConnectionResponse;->requestExcerpt:[B

    invoke-virtual {p1}, Lnet/oauth/http/HttpMessage;->getContentCharset()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/oauth/client/URLConnectionResponse;->requestEncoding:Ljava/lang/String;

    iput-object p4, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    iget-object p1, p0, Lnet/oauth/client/URLConnectionResponse;->headers:Ljava/util/List;

    invoke-direct {p0}, Lnet/oauth/client/URLConnectionResponse;->getHeaders()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getHeaders()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {v3, v1}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Type"

    if-eqz v3, :cond_1

    iget-object v5, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Lnet/oauth/OAuth$Parameter;

    invoke-direct {v6, v5, v3}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    new-instance v1, Lnet/oauth/OAuth$Parameter;

    iget-object p0, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v4, p0}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/oauth/http/HttpResponseMessage;->dump(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/oauth/client/URLConnectionResponse;->requestHeaders:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/oauth/client/URLConnectionResponse;->requestExcerpt:[B

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lnet/oauth/client/URLConnectionResponse;->requestExcerpt:[B

    iget-object v4, p0, Lnet/oauth/client/URLConnectionResponse;->requestEncoding:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "HTTP request"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {v4, v3}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {v5, v3}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HTTP "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/oauth/client/URLConnectionResponse;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/oauth/client/URLConnectionResponse;->body:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/oauth/client/URLConnectionResponse;->body:Ljava/io/InputStream;

    check-cast v1, Lnet/oauth/client/ExcerptInputStream;

    invoke-virtual {v1}, Lnet/oauth/client/ExcerptInputStream;->getExcerpt()[B

    move-result-object v1

    invoke-virtual {p0}, Lnet/oauth/client/URLConnectionResponse;->getContentCharset()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string p0, "HTTP response"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getStatusCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xc8

    return p0
.end method

.method public openBody()Ljava/io/InputStream;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lnet/oauth/client/URLConnectionResponse;->connection:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
