.class public final Lcom/motorola/help/extlog/loggers/QcomDiagLogger;
.super Lcom/motorola/help/extlog/loggers/BaseLogger;
.source "QcomDiagLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/help/extlog/loggers/QcomDiagLogger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J%\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ#\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ+\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J#\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/motorola/help/extlog/loggers/QcomDiagLogger;",
        "Lcom/motorola/help/extlog/loggers/BaseLogger;",
        "()V",
        "cleanUpLogs",
        "",
        "context",
        "Landroid/content/Context;",
        "JsonConfigParams",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getLogsLocation",
        "requestLogs",
        "reset",
        "startLogging",
        "isContinuousLogging",
        "",
        "(Landroid/content/Context;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stopLogging",
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
.field public static final Companion:Lcom/motorola/help/extlog/loggers/QcomDiagLogger$Companion;

.field public static final DELAY_FOR_COPY_LOGS_WITH_INIT_SCRIPT:J = 0x3a98L

.field public static final MAX_ATTEMPT:I = 0x4

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->Companion:Lcom/motorola/help/extlog/loggers/QcomDiagLogger$Companion;

    const-string v0, "QcomDiagLogger::class.java.simpleName"

    const-string v1, "QcomDiagLogger"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "qcom"

    invoke-direct {p0, v0}, Lcom/motorola/help/extlog/loggers/BaseLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final getLogsLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    invoke-virtual {v0}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->getMODEM_LOGS_DIR()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getLogsLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cleanUpLogs(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p2, p3, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;

    iget v0, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;->label:I

    sub-int/2addr p3, v1

    iput p3, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;

    invoke-direct {p2, p0, p3}, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;-><init>(Lcom/motorola/help/extlog/loggers/QcomDiagLogger;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_1

    iget-object p0, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    iget-object p0, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->TAG:Ljava/lang/String;

    const-string v5, "QCOM diag cleanup logging"

    invoke-virtual {p3, v1, v5}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/motorola/help/extlog/diagLogs/QComModemLog;

    invoke-direct {p3, p1}, Lcom/motorola/help/extlog/diagLogs/QComModemLog;-><init>(Landroid/content/Context;)V

    iput-object p0, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;->L$1:Ljava/lang/Object;

    iput v4, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$cleanUpLogs$1;->label:I

    invoke-static {p3, v3, p2, v4, v2}, Lcom/motorola/help/extlog/diagLogs/QComModemLog;->reset$default(Lcom/motorola/help/extlog/diagLogs/QComModemLog;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    const/4 p1, 0x2

    invoke-static {p0, p2, v3, p1, v2}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->deleteDirectory$default(Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;Ljava/io/File;ZILjava/lang/Object;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public requestLogs(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p2, p3, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;

    iget v0, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->label:I

    sub-int/2addr p3, v1

    iput p3, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;

    invoke-direct {p2, p0, p3}, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;-><init>(Lcom/motorola/help/extlog/loggers/QcomDiagLogger;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v5, :cond_1

    iget p0, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->I$0:I

    iget-object p1, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object v1, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    iget-object v6, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->TAG:Ljava/lang/String;

    const-string v6, "QCOM diag requestLogs logging"

    invoke-virtual {p3, v1, v6}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    invoke-virtual {p1}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->getB2GDIR()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    sget-object p1, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    invoke-virtual {p1}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->copyLogsToB2gLocation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object p1, p0

    move-object v1, p3

    move-object v6, v4

    move p0, v5

    :goto_1
    const/4 p3, 0x4

    if-gt p0, p3, :cond_5

    :try_start_2
    iput-object v6, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->L$0:Ljava/lang/Object;

    iput-object v1, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->L$1:Ljava/lang/Object;

    iput-object p1, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->L$2:Ljava/lang/Object;

    iput p0, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->I$0:I

    iput v5, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$requestLogs$1;->label:I

    const-wide/16 v7, 0x3a98

    invoke-static {v7, v8, p2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    sget-object p3, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v7, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->TAG:Ljava/lang/String;

    const-string v8, "Logs dumped. Now copying from vendor dir to files dir"

    invoke-virtual {p3, v7, v8}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    invoke-static {p3, v1, v3, v2, v4}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->deleteDirectory$default(Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;Ljava/io/File;ZILjava/lang/Object;)V

    :cond_4
    sget-object p3, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    invoke-virtual {p3, p1, v1}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_3
    :try_start_3
    sget-object v7, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v8, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->TAG:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempt "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is failed. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/motorola/help/extlog/util/Logger$Companion;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v4, v6

    goto :goto_5

    :cond_5
    :goto_4
    sget-object p0, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    invoke-static {p0, p1, v3, v2, v4}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->deleteDirectory$default(Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;Ljava/io/File;ZILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_2
    move-exception p0

    :goto_5
    sget-object p1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v4

    :goto_6
    return-object v6
.end method

.method public reset(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p2, p3, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;

    iget v0, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;->label:I

    sub-int/2addr p3, v1

    iput p3, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;

    invoke-direct {p2, p0, p3}, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;-><init>(Lcom/motorola/help/extlog/loggers/QcomDiagLogger;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    iget-object p0, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->TAG:Ljava/lang/String;

    const-string v3, "Reset enter"

    invoke-virtual {p3, v1, v3}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/motorola/help/extlog/diagLogs/QComModemLog;

    invoke-direct {p3, p1}, Lcom/motorola/help/extlog/diagLogs/QComModemLog;-><init>(Landroid/content/Context;)V

    iput-object p0, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;->L$1:Ljava/lang/Object;

    iput v2, p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger$reset$1;->label:I

    invoke-virtual {p3, v2, p2}, Lcom/motorola/help/extlog/diagLogs/QComModemLog;->reset(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    const/4 p1, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p2, v0, p1, p3}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->deleteDirectory$default(Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;Ljava/io/File;ZILjava/lang/Object;)V

    :cond_4
    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p1, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->TAG:Ljava/lang/String;

    const-string p2, "Reset exit"

    invoke-virtual {p0, p1, p2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public startLogging(Landroid/content/Context;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p4, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v0, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start of collecting qcom log ContinuousLogging "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, v0, p3}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    const/4 p4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p3, v1, p4, v0}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->deleteDirectory$default(Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;Ljava/io/File;ZILjava/lang/Object;)V

    :cond_0
    new-instance p0, Lcom/motorola/help/extlog/diagLogs/QComModemLog;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/diagLogs/QComModemLog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/motorola/help/extlog/diagLogs/QComModemLog;->startCollection(Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public stopLogging(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p2, Lcom/motorola/help/extlog/loggers/QcomDiagLogger;->TAG:Ljava/lang/String;

    const-string v0, "QCOM diag stop logging"

    invoke-virtual {p0, p2, v0}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/help/extlog/diagLogs/QComModemLog;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/diagLogs/QComModemLog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lcom/motorola/help/extlog/diagLogs/QComModemLog;->stopLogging(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
