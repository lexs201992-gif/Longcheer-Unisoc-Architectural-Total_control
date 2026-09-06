.class public final Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;
.super Ljava/lang/Object;
.source "MTKEmdloggerSocketConn.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$Companion;,
        Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketListenHandler;,
        Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketMessageHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u0000 \"2\u00020\u0001:\u0003\"#$B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0017\u001a\u00020\u0006J\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u001b\u001a\u00020\u0003J\u0008\u0010\u001c\u001a\u00020\u0019H\u0002J\u000e\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0003J\u000e\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0003J\u000e\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0003R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0004R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00060\u0014R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00060\u0016R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;",
        "",
        "mServerName",
        "",
        "(Ljava/lang/String;)V",
        "isConnected",
        "",
        "()Z",
        "mCommandAndResponsMap",
        "",
        "mInputStream",
        "Ljava/io/InputStream;",
        "mOutputStream",
        "Ljava/io/OutputStream;",
        "getMServerName",
        "()Ljava/lang/String;",
        "setMServerName",
        "mSocket",
        "Landroid/net/LocalSocket;",
        "mSocketListenHandler",
        "Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketListenHandler;",
        "mSocketMessageHandler",
        "Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketMessageHandler;",
        "connect",
        "disconnect",
        "",
        "getResponseFromServer",
        "sendData",
        "listen",
        "sendDataToServer",
        "data",
        "sendToServer",
        "setResponseFromServer",
        "serverData",
        "Companion",
        "SocketListenHandler",
        "SocketMessageHandler",
        "extloglib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field public static final Companion:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$Companion;

.field public static final ERROR_SOCKET_CONNECTION_ERROR:Ljava/lang/String; = "connection_error"

.field public static final MSG_SOCKET_READ:I = 0x1

.field public static final MSG_SOCKET_START_LISTEN:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCommandAndResponsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mServerName:Ljava/lang/String;

.field private mSocket:Landroid/net/LocalSocket;

.field private final mSocketListenHandler:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketListenHandler;

.field private final mSocketMessageHandler:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketMessageHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->Companion:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$Companion;

    const-string v0, "MTKEmdloggerSocketConn"

    sput-object v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "mServerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mServerName:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mCommandAndResponsMap:Ljava/util/Map;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SocketListenHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SocketMessageHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketListenHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketListenHandler;-><init>(Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocketListenHandler:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketListenHandler;

    new-instance p1, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketMessageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketMessageHandler;-><init>(Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocketMessageHandler:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketMessageHandler;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$listen(Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->listen()V

    return-void
.end method

.method private final listen()V
    .locals 7

    const/16 v0, 0x400

    new-array v1, v0, [B

    sget-object v2, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    const-string v3, "Socket listen start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mInputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    sget-object v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    const-string v1, "Get a empty response from native layer, socket connection lost!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response from native byte size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v2, [B

    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocketMessageHandler:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketMessageHandler;

    new-instance v3, Ljava/lang/String;

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    const-string v2, "read failed"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->disconnect()V

    return-void
.end method


# virtual methods
.method public final connect()Z
    .locals 3

    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocket:Landroid/net/LocalSocket;

    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mServerName:Ljava/lang/String;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iget-object v1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mOutputStream:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mInputStream:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocketListenHandler:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketListenHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn$SocketListenHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    const-string v2, "EODF cannot connect to modem socket"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->disconnect()V

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized disconnect()V
    .locals 4

    const-string v0, "Exception happended while closing socket: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V

    iget-object v1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownOutput()V

    iget-object v1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocket:Landroid/net/LocalSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final getMServerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mServerName:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized getResponseFromServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "sendData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mCommandAndResponsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mSocket:Landroid/net/LocalSocket;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final sendDataToServer(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mServerName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendDataToServer() mServerName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mOutputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\u0000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mOutputStream:Ljava/io/OutputStream;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    sget-object v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    const-string v1, "IOException while sending command to native."

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->disconnect()V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    sget-object p1, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendToServer done! sendSuccess = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final declared-synchronized sendToServer(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "sendToServer() mServerName = "

    monitor-enter p0

    :try_start_0
    const-string v1, "data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mServerName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " data = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mCommandAndResponsMap:Ljava/util/Map;

    const-string v2, ""

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Service is not connect & re-connect failed!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->sendDataToServer(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final setMServerName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mServerName:Ljava/lang/String;

    return-void
.end method

.method public final declared-synchronized setResponseFromServer(Ljava/lang/String;)V
    .locals 6

    const-string v0, "setResponseFromServer() mServerName = "

    monitor-enter p0

    :try_start_0
    const-string v1, "serverData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mServerName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " serverData = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mCommandAndResponsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->mCommandAndResponsMap:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
