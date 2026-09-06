.class public Lfr/bmartel/protocol/http/HttpFrame;
.super Ljava/lang/Object;
.source "HttpFrame.java"

# interfaces
.implements Lfr/bmartel/protocol/http/inter/IHttpFrame;


# instance fields
.field private body:Lfr/bmartel/protocol/http/utils/IByteList;

.field private chunked:Z

.field private headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private httpVersion:Lfr/bmartel/protocol/http/HttpVersion;

.field private isRequestFrame:Z

.field private isResponseFrame:Z

.field private method:Ljava/lang/String;

.field private queryString:Ljava/lang/String;

.field private reader:Lfr/bmartel/protocol/http/HttpReader;

.field private reasonPhrase:Ljava/lang/String;

.field private statusCode:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfr/bmartel/protocol/http/HttpVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lfr/bmartel/protocol/http/HttpVersion;-><init>(II)V

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->httpVersion:Lfr/bmartel/protocol/http/HttpVersion;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->isResponseFrame:Z

    iput-boolean v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->isRequestFrame:Z

    iput-boolean v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->chunked:Z

    new-instance v0, Lfr/bmartel/protocol/http/HttpReader;

    invoke-direct {v0}, Lfr/bmartel/protocol/http/HttpReader;-><init>()V

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->reader:Lfr/bmartel/protocol/http/HttpReader;

    const-string v0, ""

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->host:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->method:Ljava/lang/String;

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->uri:Ljava/lang/String;

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->queryString:Ljava/lang/String;

    new-instance v1, Lfr/bmartel/protocol/http/utils/ListOfBytes;

    invoke-direct {v1}, Lfr/bmartel/protocol/http/utils/ListOfBytes;-><init>()V

    iput-object v1, p0, Lfr/bmartel/protocol/http/HttpFrame;->body:Lfr/bmartel/protocol/http/utils/IByteList;

    const/4 v1, -0x1

    iput v1, p0, Lfr/bmartel/protocol/http/HttpFrame;->statusCode:I

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->reasonPhrase:Ljava/lang/String;

    new-instance v0, Lfr/bmartel/protocol/http/HttpReader;

    invoke-direct {v0}, Lfr/bmartel/protocol/http/HttpReader;-><init>()V

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->reader:Lfr/bmartel/protocol/http/HttpReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfr/bmartel/protocol/http/HttpVersion;Ljava/util/HashMap;Ljava/lang/String;Lfr/bmartel/protocol/http/utils/IByteList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfr/bmartel/protocol/http/HttpVersion;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lfr/bmartel/protocol/http/utils/IByteList;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lfr/bmartel/protocol/http/HttpVersion;

    const/4 v0, 0x1

    invoke-direct {p2, v0, v0}, Lfr/bmartel/protocol/http/HttpVersion;-><init>(II)V

    iput-object p2, p0, Lfr/bmartel/protocol/http/HttpFrame;->httpVersion:Lfr/bmartel/protocol/http/HttpVersion;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lfr/bmartel/protocol/http/HttpFrame;->isResponseFrame:Z

    iput-boolean p2, p0, Lfr/bmartel/protocol/http/HttpFrame;->isRequestFrame:Z

    iput-boolean p2, p0, Lfr/bmartel/protocol/http/HttpFrame;->chunked:Z

    new-instance p2, Lfr/bmartel/protocol/http/HttpReader;

    invoke-direct {p2}, Lfr/bmartel/protocol/http/HttpReader;-><init>()V

    iput-object p2, p0, Lfr/bmartel/protocol/http/HttpFrame;->reader:Lfr/bmartel/protocol/http/HttpReader;

    const-string p2, ""

    iput-object p2, p0, Lfr/bmartel/protocol/http/HttpFrame;->host:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    iput-object p2, p0, Lfr/bmartel/protocol/http/HttpFrame;->method:Ljava/lang/String;

    iput-object p2, p0, Lfr/bmartel/protocol/http/HttpFrame;->uri:Ljava/lang/String;

    iput-object p2, p0, Lfr/bmartel/protocol/http/HttpFrame;->queryString:Ljava/lang/String;

    new-instance v1, Lfr/bmartel/protocol/http/utils/ListOfBytes;

    invoke-direct {v1}, Lfr/bmartel/protocol/http/utils/ListOfBytes;-><init>()V

    iput-object v1, p0, Lfr/bmartel/protocol/http/HttpFrame;->body:Lfr/bmartel/protocol/http/utils/IByteList;

    const/4 v1, -0x1

    iput v1, p0, Lfr/bmartel/protocol/http/HttpFrame;->statusCode:I

    iput-object p2, p0, Lfr/bmartel/protocol/http/HttpFrame;->reasonPhrase:Ljava/lang/String;

    new-instance p2, Lfr/bmartel/protocol/http/HttpVersion;

    invoke-direct {p2, v0, v0}, Lfr/bmartel/protocol/http/HttpVersion;-><init>(II)V

    iput-object p2, p0, Lfr/bmartel/protocol/http/HttpFrame;->httpVersion:Lfr/bmartel/protocol/http/HttpVersion;

    iput-object p3, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    iput-object p1, p0, Lfr/bmartel/protocol/http/HttpFrame;->method:Ljava/lang/String;

    iput-object p4, p0, Lfr/bmartel/protocol/http/HttpFrame;->uri:Ljava/lang/String;

    iput-object p5, p0, Lfr/bmartel/protocol/http/HttpFrame;->body:Lfr/bmartel/protocol/http/utils/IByteList;

    return-void
.end method

.method private cleanParser()V
    .locals 2

    new-instance v0, Lfr/bmartel/protocol/http/HttpVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lfr/bmartel/protocol/http/HttpVersion;-><init>(II)V

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->httpVersion:Lfr/bmartel/protocol/http/HttpVersion;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->method:Ljava/lang/String;

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->uri:Ljava/lang/String;

    new-instance v1, Lfr/bmartel/protocol/http/utils/ListOfBytes;

    invoke-direct {v1}, Lfr/bmartel/protocol/http/utils/ListOfBytes;-><init>()V

    iput-object v1, p0, Lfr/bmartel/protocol/http/HttpFrame;->body:Lfr/bmartel/protocol/http/utils/IByteList;

    const/4 v1, -0x1

    iput v1, p0, Lfr/bmartel/protocol/http/HttpFrame;->statusCode:I

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->reasonPhrase:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->isRequestFrame:Z

    iput-boolean v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->isResponseFrame:Z

    return-void
.end method

.method private setChunked(Z)V
    .locals 0

    iput-boolean p1, p0, Lfr/bmartel/protocol/http/HttpFrame;->chunked:Z

    return-void
.end method


# virtual methods
.method public decodeFrame(Ljava/io/InputStream;)Lfr/bmartel/protocol/http/states/HttpStates;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->reader:Lfr/bmartel/protocol/http/HttpReader;

    invoke-virtual {v0, p1}, Lfr/bmartel/protocol/http/HttpReader;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_READING_ERROR:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_0
    const-string v0, "HTTP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->MALFORMED_HTTP_FRAME:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "HTTP/"

    if-nez v1, :cond_8

    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "OPTIONS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "DELETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lfr/bmartel/protocol/http/HttpVersion;

    invoke-direct {v1, p1}, Lfr/bmartel/protocol/http/HttpVersion;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lfr/bmartel/protocol/http/HttpFrame;->httpVersion:Lfr/bmartel/protocol/http/HttpVersion;

    iget p1, v1, Lfr/bmartel/protocol/http/HttpVersion;->versionDigit1:I

    if-nez p1, :cond_3

    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_WRONG_VERSION:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->MALFORMED_HTTP_FRAME:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_4
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfr/bmartel/protocol/http/utils/StringUtils;->isInteger(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lfr/bmartel/protocol/http/HttpFrame;->statusCode:I

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfr/bmartel/protocol/http/HttpFrame;->reasonPhrase:Ljava/lang/String;

    iput-boolean v2, p0, Lfr/bmartel/protocol/http/HttpFrame;->isResponseFrame:Z

    goto :goto_1

    :cond_5
    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->MALFORMED_HTTP_FRAME:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_6
    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->MALFORMED_HTTP_FRAME:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_7
    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->MALFORMED_HTTP_FRAME:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_8
    :goto_0
    iput-object p1, p0, Lfr/bmartel/protocol/http/HttpFrame;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfr/bmartel/protocol/http/HttpFrame;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->MALFORMED_HTTP_FRAME:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_9
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lfr/bmartel/protocol/http/HttpVersion;

    invoke-direct {v0, p1}, Lfr/bmartel/protocol/http/HttpVersion;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->httpVersion:Lfr/bmartel/protocol/http/HttpVersion;

    iput-boolean v2, p0, Lfr/bmartel/protocol/http/HttpFrame;->isRequestFrame:Z

    :goto_1
    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_FRAME_OK:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_a
    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_WRONG_VERSION:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_b
    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->MALFORMED_HTTP_FRAME:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1
.end method

.method public getBody()Lfr/bmartel/protocol/http/utils/IByteList;
    .locals 1

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->body:Lfr/bmartel/protocol/http/utils/IByteList;

    return-object v0
.end method

.method public getContentLength()I
    .locals 3

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    const-string v1, "Content-Length"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    return v2
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpVersion()Lfr/bmartel/protocol/http/HttpVersion;
    .locals 1

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->httpVersion:Lfr/bmartel/protocol/http/HttpVersion;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Lfr/bmartel/protocol/http/HttpReader;
    .locals 1

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->reader:Lfr/bmartel/protocol/http/HttpReader;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->statusCode:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-boolean v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->chunked:Z

    return v0
.end method

.method public isHttpRequestFrame()Z
    .locals 1

    iget-boolean v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->isRequestFrame:Z

    return v0
.end method

.method public isHttpResponseFrame()Z
    .locals 1

    iget-boolean v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->isResponseFrame:Z

    return v0
.end method

.method public parseBody(Ljava/io/InputStream;)Lfr/bmartel/protocol/http/states/HttpStates;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lfr/bmartel/protocol/http/HttpFrame;->getContentLength()I

    move-result v0

    if-lez v0, :cond_7

    rem-int/lit16 v1, v0, 0xff9

    if-nez v1, :cond_0

    div-int/lit16 v2, v0, 0xff9

    goto :goto_0

    :cond_0
    div-int/lit16 v2, v0, 0xff9

    add-int/lit8 v2, v2, 0x1

    :goto_0
    new-instance v3, Lfr/bmartel/protocol/http/utils/ListOfBytes;

    invoke-direct {v3}, Lfr/bmartel/protocol/http/utils/ListOfBytes;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_4

    if-eqz v1, :cond_2

    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_2

    mul-int/lit16 v6, v5, 0xff9

    sub-int v6, v0, v6

    new-array v7, v6, [B

    move v8, v4

    :goto_2
    if-ge v8, v6, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v7}, Lfr/bmartel/protocol/http/utils/ListOfBytes;->add([B)I

    goto :goto_4

    :cond_2
    const/16 v6, 0xff9

    new-array v7, v6, [B

    move v8, v4

    :goto_3
    if-ge v8, v6, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v7}, Lfr/bmartel/protocol/http/utils/ListOfBytes;->add([B)I

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_BODY_PARSE_ERROR:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_5
    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_BODY_PARSE_ERROR:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1

    :cond_6
    iput-object v3, p0, Lfr/bmartel/protocol/http/HttpFrame;->body:Lfr/bmartel/protocol/http/utils/IByteList;

    goto :goto_5

    :cond_7
    new-instance p1, Lfr/bmartel/protocol/http/utils/ListOfBytes;

    invoke-direct {p1}, Lfr/bmartel/protocol/http/utils/ListOfBytes;-><init>()V

    iput-object p1, p0, Lfr/bmartel/protocol/http/HttpFrame;->body:Lfr/bmartel/protocol/http/utils/IByteList;

    :goto_5
    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_FRAME_OK:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1
.end method

.method public parseHeader(Ljava/io/InputStream;)Lfr/bmartel/protocol/http/states/HttpStates;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->reader:Lfr/bmartel/protocol/http/HttpReader;

    invoke-virtual {v0, p1}, Lfr/bmartel/protocol/http/HttpReader;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    const-string v0, "Host"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfr/bmartel/protocol/http/HttpFrame;->host:Ljava/lang/String;

    :cond_2
    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_FRAME_OK:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1
.end method

.method public parseHttp(Ljava/io/InputStream;)Lfr/bmartel/protocol/http/states/HttpStates;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_STATE_NONE:Lfr/bmartel/protocol/http/states/HttpStates;

    invoke-direct {p0}, Lfr/bmartel/protocol/http/HttpFrame;->cleanParser()V

    monitor-enter p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, p1}, Lfr/bmartel/protocol/http/HttpFrame;->decodeFrame(Ljava/io/InputStream;)Lfr/bmartel/protocol/http/states/HttpStates;

    move-result-object v0

    sget-object v1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_FRAME_OK:Lfr/bmartel/protocol/http/states/HttpStates;

    if-ne v0, v1, :cond_9

    invoke-virtual {p0, p1}, Lfr/bmartel/protocol/http/HttpFrame;->parseHeader(Ljava/io/InputStream;)Lfr/bmartel/protocol/http/states/HttpStates;

    move-result-object v0

    sget-object v1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_FRAME_OK:Lfr/bmartel/protocol/http/states/HttpStates;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lfr/bmartel/protocol/http/HttpFrame;->getHeaders()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lfr/bmartel/protocol/http/HttpFrame;->getHeaders()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "chunked"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lfr/bmartel/protocol/http/HttpFrame;->setChunked(Z)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v4, ""

    move v5, v2

    move v6, v5

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_6

    if-eqz v5, :cond_2

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v8, v1

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-int v6, v8

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    if-nez v5, :cond_4

    move v5, v1

    :cond_4
    move v8, v2

    :goto_2
    if-ne v8, v1, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v6, v2

    goto :goto_0

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_0

    :catch_0
    :cond_6
    :goto_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    new-instance v1, Lfr/bmartel/protocol/http/utils/ListOfBytes;

    invoke-direct {v1, v4}, Lfr/bmartel/protocol/http/utils/ListOfBytes;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lfr/bmartel/protocol/http/HttpFrame;->body:Lfr/bmartel/protocol/http/utils/IByteList;

    goto :goto_4

    :cond_7
    sget-object v1, Lfr/bmartel/protocol/http/states/HttpStates;->HTTP_FRAME_OK:Lfr/bmartel/protocol/http/states/HttpStates;

    if-ne v0, v1, :cond_8

    invoke-direct {p0, v2}, Lfr/bmartel/protocol/http/HttpFrame;->setChunked(Z)V

    invoke-virtual {p0, p1}, Lfr/bmartel/protocol/http/HttpFrame;->parseBody(Ljava/io/InputStream;)Lfr/bmartel/protocol/http/states/HttpStates;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_8
    :goto_4
    monitor-exit p1

    return-object v0

    :cond_9
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    sget-object p1, Lfr/bmartel/protocol/http/states/HttpStates;->SOCKET_ERROR:Lfr/bmartel/protocol/http/states/HttpStates;

    return-object p1
.end method

.method public setHeaders(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lfr/bmartel/protocol/http/HttpFrame;->method:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    const-string v2, "\r\n"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lfr/bmartel/protocol/http/HttpFrame;->method:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/bmartel/protocol/http/HttpFrame;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/bmartel/protocol/http/HttpFrame;->httpVersion:Lfr/bmartel/protocol/http/HttpVersion;

    invoke-virtual {v3}, Lfr/bmartel/protocol/http/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lfr/bmartel/protocol/http/HttpFrame;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lfr/bmartel/protocol/http/HttpFrame;->httpVersion:Lfr/bmartel/protocol/http/HttpVersion;

    invoke-virtual {v3}, Lfr/bmartel/protocol/http/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lfr/bmartel/protocol/http/HttpFrame;->body:Lfr/bmartel/protocol/http/utils/IByteList;

    invoke-interface {v3}, Lfr/bmartel/protocol/http/utils/IByteList;->getSize()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lfr/bmartel/protocol/http/HttpFrame;->body:Lfr/bmartel/protocol/http/utils/IByteList;

    invoke-interface {v6}, Lfr/bmartel/protocol/http/utils/IByteList;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lfr/bmartel/protocol/http/HttpFrame;->headers:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lfr/bmartel/protocol/http/HttpFrame;->body:Lfr/bmartel/protocol/http/utils/IByteList;

    invoke-interface {v4}, Lfr/bmartel/protocol/http/utils/IByteList;->getBytes()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
