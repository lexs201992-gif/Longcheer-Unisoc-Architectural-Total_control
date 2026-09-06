.class public Lnet/oauth/OAuthAccessor;
.super Ljava/lang/Object;
.source "OAuthAccessor.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4d967877bf9ee767L


# instance fields
.field public accessToken:Ljava/lang/String;

.field public final consumer:Lnet/oauth/OAuthConsumer;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public requestToken:Ljava/lang/String;

.field public tokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/oauth/OAuthConsumer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oauth/OAuthAccessor;->properties:Ljava/util/Map;

    iput-object p1, p0, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/oauth/OAuthAccessor;->requestToken:Ljava/lang/String;

    iput-object p1, p0, Lnet/oauth/OAuthAccessor;->accessToken:Ljava/lang/String;

    iput-object p1, p0, Lnet/oauth/OAuthAccessor;->tokenSecret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/oauth/OAuthAccessor;->properties:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public newRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lnet/oauth/OAuthMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry;",
            ">;)",
            "Lnet/oauth/OAuthMessage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    if-nez p1, :cond_1

    const-string p1, "httpMethod"

    invoke-virtual {p0, p1}, Lnet/oauth/OAuthAccessor;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    invoke-virtual {v0, p1}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "GET"

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    new-instance v0, Lnet/oauth/OAuthMessage;

    invoke-direct {v0, p1, p2, p3}, Lnet/oauth/OAuthMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {v0, p0}, Lnet/oauth/OAuthMessage;->addRequiredParameters(Lnet/oauth/OAuthAccessor;)V

    iget-object p0, p0, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string p1, "HTTP.header.Accept-Encoding"

    invoke-virtual {p0, p1}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lnet/oauth/OAuthMessage;->getHeaders()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lnet/oauth/OAuth$Parameter;

    const-string p3, "Accept-Encoding"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Lnet/oauth/OAuth$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lnet/oauth/OAuthAccessor;->properties:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
