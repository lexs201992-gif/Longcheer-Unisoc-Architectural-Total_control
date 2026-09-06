.class public final Lcom/motorola/feedback/scheduler/ConfigurationWorker;
.super Landroidx/work/CoroutineWorker;
.source "ConfigurationWorker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u0012\u001a\u00020\u0013H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/motorola/feedback/scheduler/ConfigurationWorker;",
        "Landroidx/work/CoroutineWorker;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "MAX_RETRY_COUNT",
        "",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "getContext",
        "()Landroid/content/Context;",
        "coroutineContext",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getCoroutineContext",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final MAX_RETRY_COUNT:I

.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final coroutineContext:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/ConfigurationWorker;->context:Landroid/content/Context;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/ConfigurationWorker;->coroutineContext:Lkotlinx/coroutines/CoroutineDispatcher;

    const-string p1, "ConfigurationWorker"

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/ConfigurationWorker;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    iput p1, p0, Lcom/motorola/feedback/scheduler/ConfigurationWorker;->MAX_RETRY_COUNT:I

    return-void
.end method

.method public static final synthetic access$getMAX_RETRY_COUNT$p(Lcom/motorola/feedback/scheduler/ConfigurationWorker;)I
    .locals 0

    iget p0, p0, Lcom/motorola/feedback/scheduler/ConfigurationWorker;->MAX_RETRY_COUNT:I

    return p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/motorola/feedback/scheduler/ConfigurationWorker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/ConfigurationWorker;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$1;

    iget v1, v0, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$1;-><init>(Lcom/motorola/feedback/scheduler/ConfigurationWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$2;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$2;-><init>(Lcom/motorola/feedback/scheduler/ConfigurationWorker;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/motorola/feedback/scheduler/ConfigurationWorker$doWork$1;->label:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p0, "override suspend fun doW\u2026   Result.success()\n    }"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/ConfigurationWorker;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getCoroutineContext()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/ConfigurationWorker;->coroutineContext:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method
