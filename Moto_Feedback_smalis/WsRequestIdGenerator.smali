.class public Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;
.super Ljava/lang/Object;
.source "WsRequestIdGenerator.java"


# static fields
.field private static sInstance:Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;


# instance fields
.field private requestId:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;->requestId:J

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;
    .locals 2

    const-class v0, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;->sInstance:Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;

    invoke-direct {v1}, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;-><init>()V

    sput-object v1, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;->sInstance:Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;

    :cond_0
    sget-object v1, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;->sInstance:Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getNewWsRequestId()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;->requestId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/motorola/feedback/transport/cce/WsRequestIdGenerator;->requestId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
