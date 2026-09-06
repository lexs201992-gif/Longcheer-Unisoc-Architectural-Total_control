.class public Lcom/motorola/ccc/http/proxy/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HttpProxyManager"

.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HttpProxyManager"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/motorola/ccc/http/proxy/Logger;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/motorola/ccc/http/proxy/Logger;->logger:Lorg/slf4j/Logger;

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/motorola/ccc/http/proxy/Logger;->logger:Lorg/slf4j/Logger;

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/motorola/ccc/http/proxy/Logger;->logger:Lorg/slf4j/Logger;

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/motorola/ccc/http/proxy/Logger;->logger:Lorg/slf4j/Logger;

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method
