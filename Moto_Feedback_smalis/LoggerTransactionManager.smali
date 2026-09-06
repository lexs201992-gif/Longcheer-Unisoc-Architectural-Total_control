.class public final Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;
.super Ljava/lang/Object;
.source "LoggerTransactionManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoggerTransactionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoggerTransactionManager.kt\ncom/motorola/help/extlog/transaction/LoggerTransactionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,538:1\n1855#2:539\n1855#2,2:540\n1856#2:542\n1855#2:543\n1855#2,2:544\n1856#2:546\n766#2:547\n857#2,2:548\n1864#2,2:550\n1855#2,2:552\n1866#2:554\n1855#2,2:555\n1855#2,2:557\n1864#2,3:559\n1855#2,2:562\n766#2:564\n857#2,2:565\n1855#2,2:567\n1855#2,2:569\n766#2:571\n857#2,2:572\n1855#2,2:574\n*S KotlinDebug\n*F\n+ 1 LoggerTransactionManager.kt\ncom/motorola/help/extlog/transaction/LoggerTransactionManager\n*L\n183#1:539\n190#1:540,2\n183#1:542\n280#1:543\n284#1:544,2\n280#1:546\n321#1:547\n321#1:548,2\n337#1:550,2\n339#1:552,2\n337#1:554\n363#1:555,2\n387#1:557,2\n395#1:559,3\n404#1:562,2\n422#1:564\n422#1:565,2\n457#1:567,2\n471#1:569,2\n504#1:571\n504#1:572,2\n519#1:574,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J!\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J!\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ!\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J+\u0010 \u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00042\u0008\u0010!\u001a\u0004\u0018\u00010\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\"J1\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00060$2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u000c2\u0008\u0010!\u001a\u0004\u0018\u00010\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&J\u0010\u0010\'\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u0012\u0010(\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u001a\u0010)\u001a\u0004\u0018\u00010\u00062\u0006\u0010!\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0010H\u0002J\u0010\u0010+\u001a\u00020,2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010-\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J!\u0010.\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J\u0018\u0010/\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u00100\u001a\u000201H\u0002J!\u00102\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J!\u00103\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J7\u00104\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00042\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u00062\u0006\u0010!\u001a\u00020\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00106J+\u00107\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00042\u0008\u0010!\u001a\u0004\u0018\u00010\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\"J!\u00108\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J!\u00109\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J\u0016\u0010:\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006;"
    }
    d2 = {
        "Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;",
        "",
        "()V",
        "REQUEST_ID_CONTINUOUS_LOGGING",
        "",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "mCurLogRequests",
        "",
        "Lcom/motorola/help/extlog/transaction/LoggingRequest;",
        "mCurLoggersInfo",
        "Lcom/motorola/help/extlog/transaction/LoggerInfo;",
        "addLogTypeToLoggerList",
        "",
        "logger",
        "Lcom/motorola/help/extlog/loggers/BaseLogger;",
        "cancelFixedDurationLogCollection",
        "",
        "context",
        "Landroid/content/Context;",
        "data",
        "Landroid/os/Bundle;",
        "(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cleanUp",
        "requestId",
        "(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clearAllLoggingSessions",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collectContinuousLogs",
        "collectFixedDurationLogs",
        "requestContent",
        "(Landroid/content/Context;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collectLogsForSession",
        "",
        "logSession",
        "(Landroid/content/Context;Lcom/motorola/help/extlog/transaction/LoggingRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "duplicateLogRequest",
        "getLogSession",
        "getLogTypes",
        "isContinuousLog",
        "getPositionFromLoggerInfo",
        "",
        "requestMask",
        "resetLoggers",
        "setLoggerState",
        "state",
        "Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;",
        "startContinuousLogging",
        "startFixedDurationLogCollection",
        "startLoggers",
        "requestPath",
        "(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stopAllLogs",
        "stopContinuousLogging",
        "stopFixedDurationLogCollection",
        "transact",
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
.field public static final INSTANCE:Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;

.field private static final REQUEST_ID_CONTINUOUS_LOGGING:J = -0x1L

.field private static final TAG:Ljava/lang/String;

.field private static final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private static mCurLogRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/help/extlog/transaction/LoggingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurLoggersInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/help/extlog/transaction/LoggerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;

    invoke-direct {v0}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;-><init>()V

    sput-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->INSTANCE:Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;

    const-string v0, "eOdf_thread"

    invoke-static {v0}, Lkotlinx/coroutines/ThreadPoolDispatcherKt;->newSingleThreadContext(Ljava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const-string v0, "LoggerTransactionManager"

    sput-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLoggersInfo:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$cancelFixedDurationLogCollection(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->cancelFixedDurationLogCollection(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$cleanUp(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->cleanUp(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$clearAllLoggingSessions(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->clearAllLoggingSessions(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$collectContinuousLogs(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->collectContinuousLogs(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$collectFixedDurationLogs(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->collectFixedDurationLogs(Landroid/content/Context;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$collectLogsForSession(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;Lcom/motorola/help/extlog/transaction/LoggingRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->collectLogsForSession(Landroid/content/Context;Lcom/motorola/help/extlog/transaction/LoggingRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogSession(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;J)Lcom/motorola/help/extlog/transaction/LoggingRequest;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->getLogSession(J)Lcom/motorola/help/extlog/transaction/LoggingRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$requestMask(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->requestMask(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$resetLoggers(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->resetLoggers(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startContinuousLogging(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->startContinuousLogging(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startFixedDurationLogCollection(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->startFixedDurationLogCollection(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startLoggers(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->startLoggers(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$stopAllLogs(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->stopAllLogs(Landroid/content/Context;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$stopContinuousLogging(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->stopContinuousLogging(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$stopFixedDurationLogCollection(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->stopFixedDurationLogCollection(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final addLogTypeToLoggerList(Lcom/motorola/help/extlog/loggers/BaseLogger;)Z
    .locals 7

    check-cast p0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;

    sget-object p0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLoggersInfo:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "TAG"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/help/extlog/transaction/LoggerInfo;

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->getLogType()Lcom/motorola/help/extlog/loggers/BaseLogger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3, p1}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->getActiveLogReqs()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {v0, p0}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->setActiveLogReqs(I)V

    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->getActiveLogReqs()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Active request("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ") incremented for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    new-instance v0, Lcom/motorola/help/extlog/transaction/LoggerInfo;

    invoke-direct {v0, p1}, Lcom/motorola/help/extlog/transaction/LoggerInfo;-><init>(Lcom/motorola/help/extlog/loggers/BaseLogger;)V

    invoke-virtual {v0, v2}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->setActiveLogReqs(I)V

    sget-object v3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLoggersInfo:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getLogTypeConstant()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Added "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to loggers list"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    xor-int/2addr p0, v2

    return p0
.end method

.method private final cancelFixedDurationLogCollection(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;

    iget v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;

    invoke-direct {v0, p0, p3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    iget v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->label:I

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    iget-object p0, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p0, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->J$0:J

    iget-object p2, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    iget-object v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v10, p0

    move-object p1, v1

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string p3, "com.motorola.help.extlog.extra.request_id"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string p3, "com.motorola.help.extlog.extra.request_content"

    invoke-virtual {p2, p3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v10, v11}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->getLogSession(J)Lcom/motorola/help/extlog/transaction/LoggingRequest;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getLogSessionState()Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;

    move-result-object p3

    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;->STOPPING:Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;

    if-eq p3, v1, :cond_6

    iput-object p0, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->L$2:Ljava/lang/Object;

    iput-wide v10, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->J$0:J

    iput v2, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->label:I

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->stopAllLogs(Landroid/content/Context;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v7, :cond_4

    return-object v7

    :cond_4
    :goto_1
    iput-object p2, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->L$2:Ljava/lang/Object;

    iput v8, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cancelFixedDurationLogCollection$1;->label:I

    invoke-direct {p0, p1, v10, v11, v0}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->cleanUp(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v7, :cond_5

    return-object v7

    :cond_5
    move-object p0, p2

    :goto_2
    sget-object p1, Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;->CANCELLED:Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;

    invoke-virtual {p0, p1}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->setLogSessionState(Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final cleanUp(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;

    iget v2, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v3, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->label:I

    const-string v4, "TAG"

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v7, :cond_1

    iget v3, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->I$1:I

    iget v8, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->I$0:I

    iget-wide v9, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->J$0:J

    iget-object v11, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->L$0:Ljava/lang/Object;

    check-cast v14, Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v4

    move v4, v7

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v6, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sget-object v3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    const/4 v11, 0x0

    move-wide/from16 v1, p2

    move-object v3, v0

    move-object/from16 v0, p1

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-gez v11, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v12, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    invoke-virtual {v12}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getRequestId()J

    move-result-wide v14

    cmp-long v14, v14, v1

    if-nez v14, :cond_6

    invoke-virtual {v12}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getLoggerList()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v14, v0

    move/from16 v17, v13

    move-object v13, v3

    move v3, v11

    move-object v11, v12

    move-object v12, v10

    move-wide/from16 v18, v1

    move-object v1, v8

    move-object v2, v9

    move/from16 v8, v17

    move-wide/from16 v9, v18

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/help/extlog/loggers/BaseLogger;

    sget-object v15, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v5, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getLogTypeConstant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 p1, v2

    const-string v2, "Found logging session for clean up at index "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v5, v2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v14, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->L$3:Ljava/lang/Object;

    iput-wide v9, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->J$0:J

    iput v8, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->I$0:I

    iput v3, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->I$1:I

    const/4 v4, 0x1

    iput v4, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$cleanUp$1;->label:I

    const/4 v2, 0x0

    invoke-virtual {v0, v14, v2, v1}, Lcom/motorola/help/extlog/loggers/BaseLogger;->cleanUpLogs(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, p1

    if-ne v0, v2, :cond_4

    return-object v2

    :cond_4
    :goto_3
    move v7, v4

    move-object/from16 v4, v16

    const/4 v6, -0x1

    goto :goto_2

    :cond_5
    move-object/from16 v16, v4

    move v4, v7

    iput v3, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move v11, v8

    move-object v3, v13

    move-object v0, v14

    move-object v8, v1

    move-wide/from16 v17, v9

    move-object v9, v2

    move-wide/from16 v1, v17

    move-object v10, v12

    goto :goto_4

    :cond_6
    move-object/from16 v16, v4

    move v4, v7

    move v11, v13

    :goto_4
    move v7, v4

    move-object/from16 v4, v16

    const/4 v6, -0x1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v16, v4

    iget v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    iget v2, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    move-object/from16 v3, v16

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removed log request.Now logrequestsize "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/motorola/help/extlog/OdfPackageDataClearReceiver;->Companion:Lcom/motorola/help/extlog/OdfPackageDataClearReceiver$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/motorola/help/extlog/OdfPackageDataClearReceiver$Companion;->setComponentEnabledSetting(Landroid/content/Context;Z)V

    :cond_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final clearAllLoggingSessions(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;

    iget v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p0, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;->label:I

    sub-int/2addr p0, v2

    iput p0, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;

    invoke-direct {v0, p0, p2}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    iget v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;->label:I

    const-string v2, "TAG"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p0, v1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Enter clearAllLogs"

    invoke-virtual {p0, v1, v4}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/help/extlog/loggers/BaseLogger;->Companion:Lcom/motorola/help/extlog/loggers/BaseLogger$Companion;

    invoke-virtual {p0}, Lcom/motorola/help/extlog/loggers/BaseLogger$Companion;->getAllAvailableLoggerObjects()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/help/extlog/loggers/BaseLogger;

    sget-object v4, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v5, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getLogTypeConstant()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "clearing  logger "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$clearAllLoggingSessions$1;->label:I

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v4, v0}, Lcom/motorola/help/extlog/loggers/BaseLogger;->reset(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_3

    return-object p2

    :cond_4
    sget-object p1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLoggersInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    sget-object p1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    sget-object p1, Lcom/motorola/help/extlog/OdfPackageDataClearReceiver;->Companion:Lcom/motorola/help/extlog/OdfPackageDataClearReceiver$Companion;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/motorola/help/extlog/OdfPackageDataClearReceiver$Companion;->setComponentEnabledSetting(Landroid/content/Context;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final collectContinuousLogs(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;

    iget v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;

    invoke-direct {v0, p0, p3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p0, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->J$0:J

    iget-object p2, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    invoke-virtual {v6}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getRequestId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    move v5, v3

    :cond_4
    if-eqz v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    check-cast v2, Ljava/util/List;

    move-object p3, v2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    const-string v4, "TAG"

    if-nez p3, :cond_7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    const-string v2, "com.motorola.help.extlog.extra.request_path"

    const/4 v5, 0x0

    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.motorola.help.extlog.extra.request_content"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.motorola.help.extlog.extra.request_id"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sget-object p2, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "CollectContinuousLogs with request id "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v8, v4}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    const-wide/16 v8, 0x0

    cmp-long p2, v6, v8

    if-lez p2, :cond_8

    iput-object p1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->L$1:Ljava/lang/Object;

    iput-wide v6, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->J$0:J

    iput v3, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectContinuousLogs$1;->label:I

    invoke-direct {p0, p1, p3, v5, v0}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->collectLogsForSession(Landroid/content/Context;Lcom/motorola/help/extlog/transaction/LoggingRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, p1

    move-object p2, v2

    move-wide p0, v6

    :goto_2
    check-cast p3, Ljava/util/List;

    sget-object v1, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    invoke-virtual {v1, v0, p3, p2}, Lcom/motorola/help/extlog/util/ExtLogUtil;->copyLogsToHostApp(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    sget-object p2, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    sget-object v1, Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;->COMPLETED:Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;

    invoke-virtual {p2, v0, v1, p0, p1}, Lcom/motorola/help/extlog/util/ExtLogUtil;->sendGetLogStatusBroadcast(Landroid/content/Context;Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;J)V

    sget-object p0, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    invoke-virtual {p0, p3}, Lcom/motorola/help/extlog/util/ExtLogUtil;->cleanUpUnCompressedLogFiles(Ljava/util/List;)V

    goto :goto_3

    :cond_7
    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "No logging for continuous logs exists"

    invoke-virtual {p0, p1, p2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final collectFixedDurationLogs(Landroid/content/Context;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;

    iget v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;

    invoke-direct {v0, p0, p5}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->label:I

    const-string v3, "TAG"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-wide p2, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->J$0:J

    iget-object p0, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    iget-object p1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p5, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    check-cast p5, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_3
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    invoke-virtual {v7}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getRequestId()J

    move-result-wide v7

    cmp-long v7, v7, p2

    if-nez v7, :cond_4

    move v7, v5

    goto :goto_2

    :cond_4
    move v7, v4

    :goto_2
    if-eqz v7, :cond_3

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object p5, v2

    check-cast p5, Ljava/util/List;

    move-object v2, p5

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    iput-object p1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->L$0:Ljava/lang/Object;

    iput-object p5, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->L$1:Ljava/lang/Object;

    iput-wide p2, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->J$0:J

    iput v5, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectFixedDurationLogs$1;->label:I

    invoke-direct {p0, p1, v2, p4, v0}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->collectLogsForSession(Landroid/content/Context;Lcom/motorola/help/extlog/transaction/LoggingRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, p5

    move-object p5, p0

    move-object p0, v9

    :goto_3
    check-cast p5, Ljava/util/List;

    sget-object p4, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Collected all logs for FDT with request id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v0, p2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    invoke-virtual {p0}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getRequestPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p5, p0}, Lcom/motorola/help/extlog/util/ExtLogUtil;->copyLogsToHostApp(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    invoke-virtual {p0, p5}, Lcom/motorola/help/extlog/util/ExtLogUtil;->cleanUpUnCompressedLogFiles(Ljava/util/List;)V

    goto :goto_4

    :cond_7
    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "No logging session active for id "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final collectLogsForSession(Landroid/content/Context;Lcom/motorola/help/extlog/transaction/LoggingRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/motorola/help/extlog/transaction/LoggingRequest;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;

    iget v2, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v3, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;->label:I

    const/4 v4, 0x1

    const-string v5, "TAG"

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getLoggerList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/motorola/help/extlog/loggers/BaseLogger;

    sget-object v6, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v14, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getLogTypeConstant()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "collecting logs for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v14, v7}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v15, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Lkotlin/coroutines/CoroutineContext;

    const/16 v17, 0x0

    new-instance v18, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$2$1;

    const/4 v11, 0x0

    move-object/from16 v6, v18

    move-object v7, v13

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$2$1;-><init>(Lcom/motorola/help/extlog/loggers/BaseLogger;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v18, Lkotlin/jvm/functions/Function2;

    const/16 v19, 0x2

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getLogTypeConstant()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "collect logRequest queued "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v14, v7}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    check-cast v3, Ljava/util/Collection;

    iput-object v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;->L$0:Ljava/lang/Object;

    iput v4, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$collectLogsForSession$1;->label:I

    invoke-static {v3, v1}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v1, v0

    :goto_2
    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "All log collection completed"

    invoke-virtual {v0, v2, v3}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private final duplicateLogRequest(J)Z
    .locals 8

    sget-object p0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    sget-object v2, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getRequestId()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Duplicate finder "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getRequestId()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate logging request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Duplicate finder return false"

    invoke-virtual {p0, p1, p2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private final getLogSession(J)Lcom/motorola/help/extlog/transaction/LoggingRequest;
    .locals 5

    sget-object p0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    invoke-virtual {v3}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getRequestId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    :goto_1
    return-object p0
.end method

.method private final getLogTypes(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    new-instance p0, Lcom/motorola/help/extlog/transaction/LogRequestParser;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/transaction/LogRequestParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/help/extlog/transaction/LogRequestParser;->getLogTypes()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Logtype for current request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getPositionFromLoggerInfo(Lcom/motorola/help/extlog/loggers/BaseLogger;)I
    .locals 3

    sget-object p0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLoggersInfo:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v1, Lcom/motorola/help/extlog/transaction/LoggerInfo;

    invoke-virtual {v1}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->getLogType()Lcom/motorola/help/extlog/loggers/BaseLogger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1, p1}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private final requestMask(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    const-string p0, "com.motorola.help.extlog.extra.request_path"

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    sget-object p2, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    invoke-virtual {v2}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->getMASKS_DIR_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "list()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-virtual {p2, p1, v0, p0}, Lcom/motorola/help/extlog/util/ExtLogUtil;->writeMaskToFile(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    sget-object p2, Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;->COMPLETED:Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/help/extlog/util/ExtLogUtil;->sendGetMaskStatusBroadcast(Landroid/content/Context;Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    sget-object p2, Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;->FAILED:Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/help/extlog/util/ExtLogUtil;->sendGetMaskStatusBroadcast(Landroid/content/Context;Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;)V

    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    if-nez v0, :cond_3

    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    const-string p2, "TAG"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mask path is null"

    invoke-virtual {p0, p1, p2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final resetLoggers(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p2, p3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;

    iget v0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;->label:I

    sub-int/2addr p0, v1

    iput p0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;

    invoke-direct {p2, p0, p3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p3

    iget v0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;->label:I

    const/4 v1, 0x1

    const-string v2, "TAG"

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    iget-object p1, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Enter resetLoggers"

    invoke-virtual {p0, v0, v3}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/motorola/help/extlog/loggers/BaseLogger;->Companion:Lcom/motorola/help/extlog/loggers/BaseLogger$Companion;

    invoke-virtual {p0}, Lcom/motorola/help/extlog/loggers/BaseLogger$Companion;->getAllAvailableLoggerObjects()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/help/extlog/loggers/BaseLogger;

    sget-object v3, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v4, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getLogTypeConstant()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Resetting logger "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;->L$1:Ljava/lang/Object;

    iput v1, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$resetLoggers$1;->label:I

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, p2}, Lcom/motorola/help/extlog/loggers/BaseLogger;->reset(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_3

    return-object p3

    :cond_4
    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Exit resetLoggers"

    invoke-virtual {p0, p1, p2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Ignoring reset requests when logging is active!! "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/help/extlog/util/Logger$Companion;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setLoggerState(Lcom/motorola/help/extlog/loggers/BaseLogger;Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;)V
    .locals 2

    sget-object p0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLoggersInfo:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/help/extlog/transaction/LoggerInfo;

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->getLogType()Lcom/motorola/help/extlog/loggers/BaseLogger;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->setLoggingState(Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final startContinuousLogging(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;

    iget v2, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v1

    iget-object v0, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v3, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;->label:I

    const-string v11, "TAG"

    const/4 v12, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v12, :cond_1

    iget-object v1, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string v0, "com.motorola.help.extlog.extra.request_content"

    const/4 v3, 0x0

    move-object/from16 v4, p2

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Starting continuous logging with request "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    invoke-virtual {v0}, Lcom/motorola/help/extlog/util/ExtLogUtil;->isMTKDevice()Z

    move-result v0

    const-string v3, "requestContent"

    if-eqz v0, :cond_3

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "\"type\":\"qcom\""

    const-string v15, "\"type\":\"mtkModem\""

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_3
    move-object v7, v13

    :goto_1
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;->L$0:Ljava/lang/Object;

    iput v12, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startContinuousLogging$1;->label:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v10}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->startLoggers$default(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    const-string v2, "com.motorola.help.extlog.action.REGISTER_LOG_COLLECTION"

    invoke-virtual {v1, v0, v2, v12}, Lcom/motorola/help/extlog/util/ExtLogUtil;->sendActionResponseBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Logging request already exists.Ignoring"

    invoke-virtual {v0, v1, v2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final startFixedDurationLogCollection(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;

    iget v3, v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v2

    iget-object v1, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v4, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->label:I

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-wide v2, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->J$2:J

    iget-wide v4, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->J$1:J

    iget-wide v6, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->J$0:J

    iget-object v0, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v22, v0

    move-wide/from16 v17, v2

    move-object v0, v8

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string v1, "com.motorola.help.extlog.extra.request_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v1, v12, v10

    if-lez v1, :cond_8

    sget-object v1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v4, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    const-string v6, "TAG"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Starting the log collection for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v7, "com.motorola.help.extlog.extra.request_content"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v7, "com.motorola.help.extlog.extra.request_path"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "requestContent: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    invoke-virtual {v0}, Lcom/motorola/help/extlog/util/ExtLogUtil;->isMTKDevice()Z

    move-result v0

    const-string v8, "requestContent"

    if-eqz v0, :cond_3

    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    const-string v15, "\"type\":\"qcom\""

    const-string v16, "\"type\":\"mtkModem\""

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_3
    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v5, "new requestContent: "

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/help/extlog/transaction/LogRequestParser;

    iget-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/motorola/help/extlog/transaction/LogRequestParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LogRequestParser;->getLogTypes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LogRequestParser;->getLoggingSessionDuration()J

    move-result-wide v14

    if-eqz v5, :cond_4

    cmp-long v0, v14, v10

    if-nez v0, :cond_5

    :cond_4
    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No logtypes or duration provided. Duration= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    iput-object v1, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->L$1:Ljava/lang/Object;

    iput-wide v12, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->J$0:J

    iput-wide v10, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->J$1:J

    iput-wide v14, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->J$2:J

    const/4 v4, 0x1

    iput v4, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$1;->label:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->startLoggers(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    return-object v2

    :cond_6
    move-object/from16 v22, v1

    move-object v1, v3

    move-wide v4, v10

    move-wide v6, v12

    move-wide/from16 v17, v14

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    sget-object v2, Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;->STARTED:Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;

    invoke-virtual {v1, v0, v2, v6, v7}, Lcom/motorola/help/extlog/util/ExtLogUtil;->sendBroadcast(Landroid/content/Context;Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;J)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/16 v24, 0x0

    const/16 v25, 0x0

    new-instance v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$2;

    const/16 v23, 0x0

    move-object/from16 v16, v2

    move-wide/from16 v19, v6

    move-object/from16 v21, v0

    invoke-direct/range {v16 .. v23}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startFixedDurationLogCollection$2;-><init>(JJLandroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v26, v2

    check-cast v26, Lkotlin/jvm/functions/Function2;

    const/16 v27, 0x3

    const/16 v28, 0x0

    move-object/from16 v23, v1

    invoke-static/range {v23 .. v28}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-wide v4, v6

    move-wide v12, v4

    goto :goto_2

    :cond_7
    move-wide v12, v6

    goto :goto_2

    :cond_8
    move-object/from16 v0, p1

    move-wide v4, v10

    :goto_2
    cmp-long v1, v4, v10

    if-nez v1, :cond_9

    sget-object v1, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    sget-object v2, Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;->FAILED:Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;

    invoke-virtual {v1, v0, v2, v12, v13}, Lcom/motorola/help/extlog/util/ExtLogUtil;->sendBroadcast(Landroid/content/Context;Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;J)V

    :cond_9
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private final startLoggers(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v6, p2

    move-object/from16 v1, p6

    instance-of v2, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;

    iget v3, v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;

    invoke-direct {v2, v0, v1}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v2

    iget-object v1, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    iget v2, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->label:I

    const-string v10, "Adding "

    const/4 v13, 0x0

    const-string v14, "TAG"

    const/4 v15, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v15, :cond_1

    iget v0, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->I$0:I

    iget-wide v2, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->J$0:J

    iget-object v4, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/help/extlog/loggers/BaseLogger;

    iget-object v5, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    iget-object v15, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v11, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$0:Ljava/lang/Object;

    check-cast v11, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v10

    move-object/from16 v17, v14

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-direct {v0, v6, v7}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->duplicateLogRequest(J)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Logging request with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists.Ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enter startLoggers "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v2, v6, v0

    if-nez v2, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    move v11, v13

    :goto_1
    new-instance v0, Lcom/motorola/help/extlog/transaction/LogRequestParser;

    move-object/from16 v12, p5

    invoke-direct {v0, v12}, Lcom/motorola/help/extlog/transaction/LogRequestParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LogRequestParser;->getLogTypes()Ljava/lang/String;

    move-result-object v15

    if-nez v11, :cond_5

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LogRequestParser;->getLoggingSessionDuration()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x0

    :goto_2
    move-wide v3, v0

    new-instance v5, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    move-object v0, v5

    move-wide/from16 v1, p2

    move-object v13, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/help/extlog/transaction/LoggingRequest;-><init>(JJLjava/lang/String;)V

    sget-object v0, Lcom/motorola/help/extlog/OdfPackageDataClearReceiver;->Companion:Lcom/motorola/help/extlog/OdfPackageDataClearReceiver$Companion;

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/help/extlog/OdfPackageDataClearReceiver$Companion;->setComponentEnabledSetting(Landroid/content/Context;Z)V

    sget-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v15, :cond_e

    move-object/from16 v18, v15

    check-cast v18, Ljava/lang/CharSequence;

    const-string v0, ";"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v13

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v4, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " for logging"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v4, v13}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/help/extlog/util/LoggerFactory;->Companion:Lcom/motorola/help/extlog/util/LoggerFactory$Companion;

    const-wide/16 v15, -0x1

    cmp-long v4, v6, v15

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v3, v1, v2, v4}, Lcom/motorola/help/extlog/util/LoggerFactory$Companion;->createLoggersForLogType(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide/from16 v24, v6

    move-object v6, v0

    move-object v7, v5

    move v0, v11

    move-object v11, v1

    move-object v5, v2

    move-wide/from16 v2, v24

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/motorola/help/extlog/loggers/BaseLogger;

    if-eqz v4, :cond_a

    invoke-virtual {v7, v4}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->addLogType(Lcom/motorola/help/extlog/loggers/BaseLogger;)V

    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->INSTANCE:Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;

    invoke-direct {v1, v4}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->addLogTypeToLoggerList(Lcom/motorola/help/extlog/loggers/BaseLogger;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v4, v12, v1}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getConfigParamFromOdfRequest(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sget-object v13, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v15, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v10

    invoke-virtual {v4}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getLogTypeConstant()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " : ConfigString-> "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v15, v10}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    const/4 v10, 0x1

    goto :goto_7

    :cond_8
    const/4 v10, 0x0

    :goto_7
    iput-object v11, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$0:Ljava/lang/Object;

    iput-object v12, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$1:Ljava/lang/Object;

    iput-object v7, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$2:Ljava/lang/Object;

    iput-object v6, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$3:Ljava/lang/Object;

    iput-object v5, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$4:Ljava/lang/Object;

    iput-object v4, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->L$5:Ljava/lang/Object;

    iput-wide v2, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->J$0:J

    iput v0, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->I$0:I

    const/4 v13, 0x1

    iput v13, v8, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$startLoggers$1;->label:I

    invoke-virtual {v4, v11, v1, v10, v8}, Lcom/motorola/help/extlog/loggers/BaseLogger;->startLogging(Landroid/content/Context;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_9

    return-object v9

    :cond_9
    move-object v15, v12

    :goto_8
    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->INSTANCE:Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;

    sget-object v10, Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;->STARTED:Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;

    invoke-direct {v1, v4, v10}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->setLoggerState(Lcom/motorola/help/extlog/loggers/BaseLogger;Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;)V

    move-object v12, v15

    goto :goto_9

    :cond_a
    move-object/from16 v16, v10

    move-object/from16 v17, v14

    :goto_9
    move-object/from16 v10, v16

    move-object/from16 v14, v17

    const-wide/16 v15, -0x1

    goto :goto_5

    :cond_b
    move-object/from16 v16, v10

    move-object/from16 v17, v14

    move-object v5, v7

    move-object v1, v11

    move v11, v0

    move-object v0, v6

    move-wide v6, v2

    goto :goto_a

    :cond_c
    move-object/from16 v16, v10

    move-object/from16 v17, v14

    :goto_a
    sget-object v2, Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;->RUNNING:Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;

    invoke-virtual {v5, v2}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->setLogSessionState(Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;)V

    move-object/from16 v10, v16

    move-object/from16 v14, v17

    goto/16 :goto_3

    :cond_d
    move-object/from16 v16, v10

    move-object/from16 v17, v14

    goto :goto_b

    :cond_e
    move-object/from16 v16, v10

    move-object/from16 v17, v14

    move-object v5, v13

    :goto_b
    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    move-object/from16 v2, v17

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to active log requests"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic startLoggers$default(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const-wide/16 p2, -0x1

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->startLoggers(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final stopAllLogs(Landroid/content/Context;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;

    iget v2, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v3, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->label:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    const-string v6, "TAG"

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-wide v7, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->J$0:J

    iget-object v3, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$6:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/help/extlog/loggers/BaseLogger;

    iget-object v9, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$5:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v12, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$0:Ljava/lang/Object;

    check-cast v14, Landroid/content/Context;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v0, v4

    move-object/from16 v16, v6

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v5, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    sget-object v7, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLogRequests:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v7

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object v7, v0

    move-object/from16 v0, p1

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    sget-object v13, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v14, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getRequestId()J

    move-result-wide v4

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 p1, v0

    const-string v0, "stopAllLogs first loop "

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v14, v0}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getRequestId()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_8

    sget-object v0, Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;->STOPPING:Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;

    invoke-virtual {v12, v0}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->setLogSessionState(Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;)V

    invoke-virtual {v12}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getLoggerList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v14, p1

    move-object v13, v3

    move-object v12, v7

    move-object/from16 v17, v9

    move-object v9, v0

    move-wide/from16 v18, v1

    move-object v1, v8

    move-wide/from16 v7, v18

    move-object/from16 v2, v17

    move-object/from16 v20, v11

    move-object v11, v10

    move-object/from16 v10, v20

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/motorola/help/extlog/loggers/BaseLogger;

    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v4, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 p1, v2

    const-string v2, "logger foreach $"

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->INSTANCE:Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;

    invoke-direct {v0, v3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->getPositionFromLoggerInfo(Lcom/motorola/help/extlog/loggers/BaseLogger;)I

    move-result v0

    iput v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    sget-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLoggersInfo:Ljava/util/List;

    iget v5, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/help/extlog/transaction/LoggerInfo;

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->getActiveLogReqs()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->setActiveLogReqs(I)V

    invoke-virtual {v0}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->getActiveLogReqs()I

    move-result v0

    sget-object v2, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v16, v6

    const-string v6, " stopAllLogs "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " active count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    iput-object v14, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$3:Ljava/lang/Object;

    iput-object v10, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$4:Ljava/lang/Object;

    iput-object v9, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$5:Ljava/lang/Object;

    iput-object v3, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->L$6:Ljava/lang/Object;

    iput-wide v7, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->J$0:J

    const/4 v0, 0x1

    iput v0, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopAllLogs$1;->label:I

    invoke-virtual {v3, v14, v13, v1}, Lcom/motorola/help/extlog/loggers/BaseLogger;->stopLogging(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v5, p1

    if-ne v2, v5, :cond_3

    return-object v5

    :cond_3
    move-object v2, v5

    :goto_3
    iput-boolean v0, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v4, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLoggersInfo:Ljava/util/List;

    iget v5, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/help/extlog/transaction/LoggerInfo;

    sget-object v5, Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;->STOPPED:Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;

    invoke-virtual {v4, v5}, Lcom/motorola/help/extlog/transaction/LoggerInfo;->setLoggingState(Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;)V

    move-object/from16 v6, v16

    goto :goto_5

    :cond_4
    move-object/from16 v5, p1

    move-object/from16 v6, v16

    move-object/from16 v16, v1

    goto :goto_4

    :cond_5
    move-object/from16 v5, p1

    move-object/from16 v16, v6

    const/4 v0, 0x1

    sget-object v2, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    invoke-interface {v15}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v16, v1

    const-string v1, "Can not find logger "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  in current logging list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object v2, v5

    move-object/from16 v1, v16

    :goto_5
    iget v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_6

    iget-boolean v0, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->mCurLoggersInfo:Ljava/util/List;

    iget v5, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v5, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget v15, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 p1, v1

    const-string v1, "Removed "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    move-object/from16 p1, v1

    :goto_6
    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_7
    move-object/from16 v16, v1

    move-object v5, v2

    move-object v9, v5

    move-wide v1, v7

    move-object v7, v12

    move-object v3, v13

    move-object v0, v14

    move-object/from16 v8, v16

    move-object/from16 v17, v11

    move-object v11, v10

    move-object/from16 v10, v17

    goto :goto_7

    :cond_8
    move-object/from16 v0, p1

    :goto_7
    const/4 v4, 0x1

    const/4 v5, -0x1

    goto/16 :goto_1

    :cond_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final stopContinuousLogging(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p2, p3, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;

    iget v0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->label:I

    sub-int/2addr p3, v1

    iput p3, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;

    invoke-direct {p2, p0, p3}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    iget v0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->label:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v8, :cond_2

    if-ne v0, v7, :cond_1

    iget-object p0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    iget-object p0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Stopping continuous logs "

    invoke-virtual {p3, v0, v1}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    iput-object p0, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->L$1:Ljava/lang/Object;

    iput v8, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->label:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->stopAllLogs(Landroid/content/Context;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v6, :cond_4

    return-object v6

    :cond_4
    :goto_1
    iput-object p1, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->L$0:Ljava/lang/Object;

    const/4 p3, 0x0

    iput-object p3, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->L$1:Ljava/lang/Object;

    iput v7, p2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopContinuousLogging$1;->label:I

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->cleanUp(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v6, :cond_5

    return-object v6

    :cond_5
    move-object p0, p1

    :goto_2
    sget-object p1, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    const-string p2, "com.motorola.help.extlog.action.UNREGISTER_LOG_COLLECTION"

    invoke-virtual {p1, p0, p2, v8}, Lcom/motorola/help/extlog/util/ExtLogUtil;->sendActionResponseBroadcast(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final stopFixedDurationLogCollection(Landroid/content/Context;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;

    iget v3, v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;

    invoke-direct {v2, v6, v1}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;-><init>(Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v2

    iget-object v1, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    iget v2, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->label:I

    const/4 v11, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v8, :cond_2

    if-ne v2, v11, :cond_1

    iget-wide v2, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->J$0:J

    iget-object v0, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    iget-object v4, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v2, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->J$0:J

    iget-object v0, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    iget-object v4, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iget-object v5, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-wide v2, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->J$0:J

    iget-object v0, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/help/extlog/transaction/LoggingRequest;

    iget-object v4, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v6, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v13, v2

    move-object v7, v4

    move-object v1, v5

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string v1, "com.motorola.help.extlog.extra.request_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    sget-object v1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "StopFixedDurationLogCollection with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.motorola.help.extlog.extra.request_content"

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget-object v0, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    sget-object v1, Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;->STOPPED:Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;

    invoke-virtual {v0, v7, v1, v13, v14}, Lcom/motorola/help/extlog/util/ExtLogUtil;->sendBroadcast(Landroid/content/Context;Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;J)V

    invoke-direct {v6, v13, v14}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->getLogSession(J)Lcom/motorola/help/extlog/transaction/LoggingRequest;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->getLogSessionState()Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;

    move-result-object v0

    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;->STOPPING:Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;

    if-eq v0, v1, :cond_8

    iput-object v6, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    iput-object v7, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$1:Ljava/lang/Object;

    iput-object v15, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$2:Ljava/lang/Object;

    iput-object v5, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$3:Ljava/lang/Object;

    iput-wide v13, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->J$0:J

    iput v3, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v13

    move-object v4, v15

    move-object/from16 v16, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->stopAllLogs(Landroid/content/Context;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_5

    return-object v10

    :cond_5
    move-object v0, v6

    move-object v1, v7

    move-object v7, v15

    move-object/from16 v2, v16

    :goto_1
    iput-object v0, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    iput-object v1, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$1:Ljava/lang/Object;

    iput-object v2, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$2:Ljava/lang/Object;

    iput-object v12, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$3:Ljava/lang/Object;

    iput-wide v13, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->J$0:J

    iput v8, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->label:I

    move-object v3, v0

    move-object v4, v1

    move-wide v5, v13

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->collectFixedDurationLogs(Landroid/content/Context;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_6

    return-object v10

    :cond_6
    move-object v5, v0

    move-object v4, v1

    move-object v0, v2

    move-wide v2, v13

    :goto_2
    iput-object v4, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$0:Ljava/lang/Object;

    iput-object v0, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$1:Ljava/lang/Object;

    iput-object v12, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->L$2:Ljava/lang/Object;

    iput-wide v2, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->J$0:J

    iput v11, v9, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$stopFixedDurationLogCollection$1;->label:I

    invoke-direct {v5, v4, v2, v3, v9}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->cleanUp(Landroid/content/Context;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_7

    return-object v10

    :cond_7
    :goto_3
    sget-object v1, Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;->STOPPED:Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;

    invoke-virtual {v0, v1}, Lcom/motorola/help/extlog/transaction/LoggingRequest;->setLogSessionState(Lcom/motorola/help/extlog/transaction/LoggingRequest$LogState;)V

    move-wide v13, v2

    goto :goto_4

    :cond_8
    move-object v4, v7

    :goto_4
    sget-object v0, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    sget-object v1, Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;->STOP_COMPLETED:Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;

    invoke-virtual {v0, v4, v1, v13, v14}, Lcom/motorola/help/extlog/util/ExtLogUtil;->sendBroadcast(Landroid/content/Context;Lcom/motorola/help/extlog/util/ExtLogAppConstants$RequestStatus;J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final transact(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.motorola.help.extlog.extra.request_action"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transact "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance p0, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$transact$1;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/motorola/help/extlog/transaction/LoggerTransactionManager$transact$1;-><init>(Landroid/os/Bundle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
