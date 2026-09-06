.class public final Lcom/motorola/help/extlog/loggers/MTKModemLogger;
.super Lcom/motorola/help/extlog/loggers/BaseLogger;
.source "MTKModemLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/help/extlog/loggers/MTKModemLogger$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMTKModemLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MTKModemLogger.kt\ncom/motorola/help/extlog/loggers/MTKModemLogger\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,188:1\n1#2:189\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0002J\u0019\u0010\u0012\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J%\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ#\u0010\u0016\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ+\u0010\u0017\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0018\u001a\u00020\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J#\u0010\u001a\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/motorola/help/extlog/loggers/MTKModemLogger;",
        "Lcom/motorola/help/extlog/loggers/BaseLogger;",
        "()V",
        "mIsCidBuild",
        "",
        "getMIsCidBuild",
        "()Z",
        "cleanUpLogs",
        "",
        "context",
        "Landroid/content/Context;",
        "JsonConfigParams",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAndPrintLogDirSize",
        "getLogsLocation",
        "getMaxLogSizeFromConfigParam",
        "configJsonString",
        "logFilesDeleteWorkAround",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "recordErrorMessageForNonCidBuilds",
        "requestLogs",
        "reset",
        "startLogging",
        "isContinuousLogging",
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
.field private static final CONFIG_JASON_ATTR_SIZE:Ljava/lang/String; = "maxLogFileSize"

.field public static final Companion:Lcom/motorola/help/extlog/loggers/MTKModemLogger$Companion;

.field private static final MTK_LOG_DIR_MIN_SIZE:I = 0x5

.field private static final MTK_MODEM_COPY_DIR:Ljava/lang/String; = "mtkModemLogs"

.field private static final MTK_MODEM_LOGS_SOURCE:Ljava/lang/String; = "/data/debuglogger"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIsCidBuild:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/help/extlog/loggers/MTKModemLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->Companion:Lcom/motorola/help/extlog/loggers/MTKModemLogger$Companion;

    const-string v0, "MTKModemLogger"

    sput-object v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "mtkModem"

    invoke-direct {p0, v0}, Lcom/motorola/help/extlog/loggers/BaseLogger;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/help/extlog/util/ExtLogUtil;->INSTANCE:Lcom/motorola/help/extlog/util/ExtLogUtil;

    invoke-virtual {v0}, Lcom/motorola/help/extlog/util/ExtLogUtil;->isProductionBuild()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->mIsCidBuild:Z

    return-void
.end method

.method public static final synthetic access$logFilesDeleteWorkAround(Lcom/motorola/help/extlog/loggers/MTKModemLogger;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->logFilesDeleteWorkAround(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getAndPrintLogDirSize(Landroid/content/Context;)Z
    .locals 8

    const-string p0, "TAG"

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const-string v2, "du"

    const-string v3, "-sh"

    const-string v4, "/data/debuglogger"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v2, Ljava/io/Reader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    sget-object v4, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v5, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v3, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dir size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    :cond_2
    sget-object p1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "getDirSize done"

    invoke-virtual {p1, v1, v2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object v1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v2, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in collecting BR "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/motorola/help/extlog/util/Logger$Companion;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method private final getLogsLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "mtkModemLogs"

    invoke-super {p0, p1, v0}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getLogsLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getMaxLogSizeFromConfigParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string p0, "maxLogFileSize"

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in parsing json "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/motorola/help/extlog/util/Logger$Companion;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final logFilesDeleteWorkAround(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;

    iget v1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p0, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->label:I

    sub-int/2addr p0, v2

    iput p0, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;

    invoke-direct {v0, p0, p2}, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;-><init>(Lcom/motorola/help/extlog/loggers/MTKModemLogger;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    iget v1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;

    iget-object v1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;

    iget-object v1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;

    iget-object v1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;->Companion:Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController$Companion;

    invoke-virtual {p0, p1}, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController$Companion;->getInstance(Landroid/content/Context;)Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;

    move-result-object p1

    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    const-string v6, "TAG"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "logFilesDeleteWorkAround min size = 5"

    invoke-virtual {p0, v1, v6}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    iput-object p1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->label:I

    invoke-virtual {p1, v0}, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;->startEmdLogger(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_6

    return-object p2

    :cond_6
    move-object v1, p1

    :goto_1
    const-string p0, "5"

    invoke-virtual {p1, p0}, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;->setLogStorageSize(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->label:I

    invoke-virtual {p1, v0}, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;->enableModemLogs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_7

    return-object p2

    :cond_7
    :goto_2
    iput-object v1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->label:I

    const-wide/16 v3, 0x1388

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_8

    return-object p2

    :cond_8
    :goto_3
    iput-object v1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$0:Ljava/lang/Object;

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$logFilesDeleteWorkAround$1;->label:I

    invoke-virtual {p1, v0}, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;->disableModemLogs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_9

    return-object p2

    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final recordErrorMessageForNonCidBuilds(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "nonCIdBuildError.txt"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Please note. MTK modem logging through ODF not supported in non cid builds."

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, p0, v0}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Exception while writing non cid log message"

    invoke-virtual {p1, v0, v1}, Lcom/motorola/help/extlog/util/Logger$Companion;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cleanUpLogs(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of p2, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;

    iget v0, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->label:I

    sub-int/2addr p3, v1

    iput p3, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;

    invoke-direct {p2, p0, p3}, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;-><init>(Lcom/motorola/help/extlog/loggers/MTKModemLogger;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "TAG"

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p0, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    iget-object p1, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p2, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, p0

    move-object p0, p2

    goto/16 :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "MTK cleanUpLogs"

    invoke-virtual {p3, v1, v5}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    const-string v5, "/data/debuglogger"

    invoke-direct {p3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->getAndPrintLogDirSize(Landroid/content/Context;)Z

    :try_start_1
    iget-boolean v6, p0, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->mIsCidBuild:Z

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " access available"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    invoke-virtual {p0, p3, v2}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->deleteDirectory(Ljava/io/File;Z)V

    goto :goto_2

    :cond_3
    sget-object v6, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v7, " access Not available"

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, v1, p3}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->L$1:Ljava/lang/Object;

    iput-object v5, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->L$2:Ljava/lang/Object;

    iput v3, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$cleanUpLogs$1;->label:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->logFilesDeleteWorkAround(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->getAndPrintLogDirSize(Landroid/content/Context;)Z

    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, v5, v2, p1, p2}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->deleteDirectory$default(Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;Ljava/io/File;ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "Exception on deleting MTK modem logs "

    invoke-virtual {p1, p2, p3}, Lcom/motorola/help/extlog/util/Logger$Companion;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final getMIsCidBuild()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->mIsCidBuild:Z

    return p0
.end method

.method public requestLogs(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    sget-object p2, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "MTK requestLogs"

    invoke-virtual {p2, p3, v1}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->mIsCidBuild:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/io/File;

    const-string v1, "/data/debuglogger"

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, p2, v3, v4, v1}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->deleteDirectory$default(Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;Ljava/io/File;ZILjava/lang/Object;)V

    :cond_0
    sget-object v2, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    invoke-virtual {v2, p3, p2}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->getAndPrintLogDirSize(Landroid/content/Context;)Z

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "Exception on copying MTK modem logs "

    invoke-virtual {p1, p2, p3}, Lcom/motorola/help/extlog/util/Logger$Companion;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->recordErrorMessageForNonCidBuilds(Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;

    iget v1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;

    invoke-direct {v0, p0, p3}, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;-><init>(Lcom/motorola/help/extlog/loggers/MTKModemLogger;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    iget-object p0, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    iget-object p0, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/help/extlog/loggers/MTKModemLogger;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v2, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    const-string v5, "TAG"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "MTK reset"

    invoke-virtual {p3, v2, v5}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->label:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->stopLogging(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p3, 0x0

    iput-object p3, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/motorola/help/extlog/loggers/MTKModemLogger$reset$1;->label:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->cleanUpLogs(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public startLogging(Landroid/content/Context;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of p3, p4, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;

    if-eqz p3, :cond_0

    move-object p3, p4

    check-cast p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;

    iget v0, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p4, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->label:I

    sub-int/2addr p4, v1

    iput p4, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;

    invoke-direct {p3, p0, p4}, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;-><init>(Lcom/motorola/help/extlog/loggers/MTKModemLogger;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "TAG"

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;

    iget-object p1, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v7

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p4, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Startlogging with "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v1, v5}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->mIsCidBuild:Z

    if-eqz p4, :cond_8

    sget-object p4, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;->Companion:Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController$Companion;

    invoke-virtual {p4, p1}, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController$Companion;->getInstance(Landroid/content/Context;)Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object p0, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->L$1:Ljava/lang/Object;

    iput-object p1, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->L$2:Ljava/lang/Object;

    iput v3, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->label:I

    invoke-virtual {p1, p3}, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;->startEmdLogger(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p4, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Started emdlogger"

    invoke-virtual {p4, v1, v3}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->getMaxLogSizeFromConfigParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;->setLogStorageSize(Ljava/lang/String;)V

    :cond_5
    const/4 p0, 0x0

    if-eqz p1, :cond_7

    iput-object p0, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->L$0:Ljava/lang/Object;

    iput-object p0, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->L$1:Ljava/lang/Object;

    iput-object p0, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->L$2:Ljava/lang/Object;

    iput v2, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$startLogging$1;->label:I

    invoke-virtual {p1, p3}, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;->enableModemLogs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    move-object p0, p4

    check-cast p0, Ljava/lang/Boolean;

    :cond_7
    sget-object p1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Start  MTK modem logs status "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_8
    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "MTK logging not supported in non cid build"

    invoke-virtual {p0, v1, p1}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public stopLogging(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of p2, p3, Lcom/motorola/help/extlog/loggers/MTKModemLogger$stopLogging$1;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$stopLogging$1;

    iget v0, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$stopLogging$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$stopLogging$1;->label:I

    sub-int/2addr p3, v1

    iput p3, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$stopLogging$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$stopLogging$1;

    invoke-direct {p2, p0, p3}, Lcom/motorola/help/extlog/loggers/MTKModemLogger$stopLogging$1;-><init>(Lcom/motorola/help/extlog/loggers/MTKModemLogger;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$stopLogging$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$stopLogging$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p3, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v1, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->TAG:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "MTK stopLogging"

    invoke-virtual {p3, v1, v4}, Lcom/motorola/help/extlog/util/Logger$Companion;->logi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/motorola/help/extlog/loggers/MTKModemLogger;->mIsCidBuild:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;->Companion:Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController$Companion;

    invoke-virtual {p0, p1}, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController$Companion;->getInstance(Landroid/content/Context;)Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;

    move-result-object p0

    if-eqz p0, :cond_5

    iput v3, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$stopLogging$1;->label:I

    invoke-virtual {p0, p2}, Lcom/motorola/help/extlog/mtkLogs/MTKLogConfigurationController;->disableModemLogs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    :cond_5
    iput v2, p2, Lcom/motorola/help/extlog/loggers/MTKModemLogger$stopLogging$1;->label:I

    const-wide/16 p0, 0x3e8

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
