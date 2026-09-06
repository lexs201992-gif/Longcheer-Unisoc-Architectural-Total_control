.class public Lcom/lenovo/lsf/lenovoid/net/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;,
        Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestMethod;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpUtil"

.field private static final UTF_8_ENCODE:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildURL(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    array-length v0, p2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/lenovo/lsf/lenovoid/net/HttpUtil;->urlencode([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string p2, "+"

    const-string v0, "%20"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "*"

    const-string v0, "%2A"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleErrorRetStr(Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;->status_code:I

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/net/HttpParser;->parseError(Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleErrorRetStr code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpUtil"

    invoke-static {v2, v1}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "USS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "USS-H"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleErrorRetStr : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static handleStatusCodeRetInt(Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;)I
    .locals 3

    iget v0, p0, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;->status_code:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/net/HttpParser;->parseError(Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    move v2, v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handleStatusCodeRetInt : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HttpUtil"

    invoke-static {v0, p0}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static request(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestMethod;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/lsf/lenovoid/net/HttpUtilException;
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "accessing server url = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HttpUtil"

    invoke-static {v0, p0}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/lenovo/lsf/lenovoid/net/HttpUtil;->streamRequestUrl(Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestMethod;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/lenovo/lsf/lenovoid/net/HttpUtilException;

    const-string p1, "HTTP_EXCEPTION"

    invoke-direct {p0, p1}, Lcom/lenovo/lsf/lenovoid/net/HttpUtilException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static requestRetryHttp(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestMethod;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/lsf/lenovoid/net/HttpUtilException;
        }
    .end annotation

    const-string p0, "HttpUtil"

    const-string v0, "accessing server url = "

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/lenovo/lsf/lenovoid/net/HttpUtil;->streamRequestUrl(Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestMethod;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "streamRequest exception = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/lenovo/lsf/lenovoid/net/HttpUtilException;

    const-string p1, "HTTP_EXCEPTION"

    invoke-direct {p0, p1}, Lcom/lenovo/lsf/lenovoid/net/HttpUtilException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static streamRequestUrl(Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestMethod;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;"
        }
    .end annotation

    sget-object v0, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestMethod;->GET:Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestMethod;

    const/4 v1, -0x1

    const/16 v2, 0x400

    const/16 v3, 0x190

    const-string v4, "code = "

    const/4 v5, 0x0

    const/16 v6, 0x4e20

    const-string v7, "HttpUtil"

    const/4 v8, 0x0

    if-ne p0, v0, :cond_6

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/lenovo/lsf/lenovoid/net/HttpUtil;->buildURL(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    new-instance p1, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;

    invoke-direct {p1}, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;-><init>()V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p2

    iput p2, p1, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;->status_code:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p1, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;->status_code:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;->status_code:I

    if-lt p2, v3, :cond_1

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_4

    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array p4, v2, [B

    :goto_2
    invoke-virtual {p2, p4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p3, p4, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;->access$002(Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;[B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    return-object p1

    :cond_4
    if-eqz p0, :cond_11

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p0, v8

    :goto_3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_11

    :goto_4
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_d

    :catchall_1
    move-exception p1

    move-object v8, p0

    :goto_5
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    throw p1

    :cond_6
    :try_start_3
    invoke-static {p1, p2, v8}, Lcom/lenovo/lsf/lenovoid/net/HttpUtil;->buildURL(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p4, :cond_7

    :try_start_4
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const-string p1, "POST"

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string p4, "UTF-8"

    if-eqz p3, :cond_c

    :try_start_5
    array-length v0, p3

    const/4 v6, 0x2

    if-lt v0, v6, :cond_c

    array-length v0, p3

    rem-int/2addr v0, v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_9

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_8
    return-object v8

    :cond_9
    move v0, v5

    :goto_7
    :try_start_6
    array-length v6, p3

    if-ge v0, v6, :cond_b

    aget-object v6, p3, v0

    if-eqz v6, :cond_a

    add-int/lit8 v9, v0, 0x1

    aget-object v10, p3, v9

    if-eqz v10, :cond_a

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v6, p3, v9

    invoke-static {v6, p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    :cond_b
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    if-lez p3, :cond_c

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    sub-int/2addr p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "str_params length = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    new-instance p1, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;

    invoke-direct {p1}, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;-><init>()V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p2

    iput p2, p1, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;->status_code:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p1, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;->status_code:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;->status_code:I

    if-lt p2, v3, :cond_d

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    :goto_8
    if-eqz p2, :cond_10

    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array p4, v2, [B

    :goto_9
    invoke-virtual {p2, p4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v1, :cond_e

    invoke-virtual {p3, p4, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_e
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;->access$002(Lcom/lenovo/lsf/lenovoid/net/HttpUtil$RequestResult;[B)[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_f
    return-object p1

    :cond_10
    if-eqz p0, :cond_11

    goto :goto_c

    :catch_2
    move-exception p1

    goto :goto_a

    :catch_3
    move-exception p1

    goto :goto_b

    :catchall_2
    move-exception p1

    goto :goto_e

    :catch_4
    move-exception p1

    move-object p0, v8

    :goto_a
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_11

    goto :goto_c

    :catch_5
    move-exception p1

    move-object p0, v8

    :goto_b
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/lenovo/lsf/lenovoid/utility/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p0, :cond_11

    :goto_c
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_11
    :goto_d
    return-object v8

    :catchall_3
    move-exception p1

    move-object v8, p0

    :goto_e
    if-eqz v8, :cond_12

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_12
    throw p1
.end method

.method public static urlencode([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "UTF-8"

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    move v4, v1

    :goto_0
    :try_start_0
    array-length v5, p0

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    aget-object v6, p0, v5

    if-eqz v6, :cond_1

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, p0, v4

    invoke-static {v6, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, p0, v5

    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_2
    const-string p0, "*"

    const-string v0, "%2A"

    invoke-virtual {v3, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Params must have an even number of elements."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
