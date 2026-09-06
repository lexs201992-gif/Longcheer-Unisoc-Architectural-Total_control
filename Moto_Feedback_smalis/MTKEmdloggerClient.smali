.class public final Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;
.super Ljava/lang/Object;
.source "MTKEmdLoggerClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0008J\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;",
        "",
        "()V",
        "mModemSocketConn",
        "Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;",
        "executeCommand",
        "",
        "command",
        "",
        "isWaitingResponse",
        "getResponse",
        "setLogSize",
        "size",
        "startLog",
        "stopLog",
        "Companion",
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
.field private static final COMMAND_DEEP_PAUSE:Ljava/lang/String; = "deep_pause"

.field private static final COMMAND_EXECUTE_SUCCESS:Ljava/lang/String; = "1"

.field private static final COMMAND_SET_LOG_SIZE:Ljava/lang/String; = "setlogsize"

.field private static final COMMAND_SET_STORAGE_PATH:Ljava/lang/String; = "set_storage_path"

.field private static final COMMAND_START:Ljava/lang/String; = "deep_start"

.field public static final Companion:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient$Companion;

.field private static final MODEM_LOG_SERVER_NAME:Ljava/lang/String; = "com.mediatek.mdlogger.socket1"

.field private static final SD_CARD_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mModemSocketConn:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->Companion:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient$Companion;

    const-string v0, "MTKEmdloggerClient"

    sput-object v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;

    const-string v1, "com.mediatek.mdlogger.socket1"

    invoke-direct {v0, v1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->mModemSocketConn:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;

    return-void
.end method

.method private final executeCommand(Ljava/lang/String;Z)Z
    .locals 4

    sget-object v0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-->executeCommand(), command = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isWaitingResponse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->mModemSocketConn:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;

    invoke-virtual {v1, p1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->sendToServer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, p2, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "1"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "<--executeCommand result, isSuccess = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "executeCommand result, sendSuccess = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private final getResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->mModemSocketConn:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;

    invoke-virtual {v0, p1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->getResponseFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3a98

    :goto_0
    if-eqz v0, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    :cond_1
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x64

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    iget-object v3, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->mModemSocketConn:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;

    invoke-virtual {v3}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->mModemSocketConn:Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;

    invoke-virtual {v0, p1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerSocketConn;->getResponseFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_3
    sget-object p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "receiveFromServer timeout, command = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object p0, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->TAG:Ljava/lang/String;

    const/16 p1, 0x3a98

    int-to-long v3, p1

    sub-long/2addr v3, v1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getResponse, responseStr = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " and waiting time = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized setLogSize(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "setlogsize,"

    monitor-enter p0

    :try_start_0
    const-string v1, "size"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->executeCommand(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized startLog()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "set_storage_path,/data"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    const-string v0, "deep_start,2"

    invoke-direct {p0, v0, v1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopLog()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "deep_pause"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/help/extlog/mtkLogs/MTKEmdloggerClient;->executeCommand(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
