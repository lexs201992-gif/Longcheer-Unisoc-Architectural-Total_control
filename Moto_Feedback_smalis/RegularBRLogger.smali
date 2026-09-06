.class public final Lcom/motorola/help/extlog/loggers/RegularBRLogger;
.super Lcom/motorola/help/extlog/loggers/BaseLogger;
.source "RegularBRLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/help/extlog/loggers/RegularBRLogger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000b2\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u000bH\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J%\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ#\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/motorola/help/extlog/loggers/RegularBRLogger;",
        "Lcom/motorola/help/extlog/loggers/BaseLogger;",
        "()V",
        "cleanUpLogs",
        "",
        "context",
        "Landroid/content/Context;",
        "JsonConfigParams",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getBRCallbackClass",
        "Ljava/lang/Class;",
        "brm",
        "getLogsLocation",
        "requestLogs",
        "reset",
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
.field public static final Companion:Lcom/motorola/help/extlog/loggers/RegularBRLogger$Companion;

.field public static final LOG_FILE:Ljava/lang/String; = "bugreport.zip"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/help/extlog/loggers/RegularBRLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/help/extlog/loggers/RegularBRLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->Companion:Lcom/motorola/help/extlog/loggers/RegularBRLogger$Companion;

    const-string v0, "RegularBRLogger"

    sput-object v0, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "regularBugReport"

    invoke-direct {p0, v0}, Lcom/motorola/help/extlog/loggers/BaseLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final getBRCallbackClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object p0

    const-string p1, "classes"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BugreportCallback"

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getLogsLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "bugreport.zip"

    invoke-super {p0, p1, v0}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getLogsLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cleanUpLogs(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    new-instance p2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public requestLogs(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
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

    move-object/from16 v0, p1

    sget-object v1, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v2, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "start of collecting Bug Report"

    invoke-virtual {v1, v2, v4}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct/range {p0 .. p1}, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const/high16 v2, 0x22000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    const-class v4, Landroid/os/BugreportManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BugreportManager;

    const-string v5, "android.os.BugreportManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "android.os.BugreportParams"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "java.util.concurrent.Executor"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "bugreportManager"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v8, p0

    invoke-direct {v8, v5}, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->getBRCallbackClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "bugreport"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v10, "getMainExecutor(context)"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v12, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v14, Lcom/motorola/help/extlog/loggers/RegularBRLogger$requestLogs$callback$1;

    invoke-direct {v14, v4, v12}, Lcom/motorola/help/extlog/loggers/RegularBRLogger$requestLogs$callback$1;-><init>(Landroid/os/BugreportManager;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_0
    const-string v15, "startBugreport"

    const/4 v10, 0x5

    new-array v13, v10, [Ljava/lang/Class;

    const-class v16, Landroid/os/ParcelFileDescriptor;

    const/16 v17, 0x0

    aput-object v16, v13, v17

    const-class v16, Landroid/os/ParcelFileDescriptor;

    const/16 v17, 0x1

    aput-object v16, v13, v17

    const/16 v16, 0x2

    aput-object v6, v13, v16

    const/4 v6, 0x3

    aput-object v7, v13, v6

    const/4 v7, 0x4

    aput-object v8, v13, v7

    invoke-virtual {v5, v15, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    const/4 v2, 0x0

    const/4 v10, 0x1

    aput-object v2, v8, v10

    aput-object v11, v8, v16

    aput-object v0, v8, v6

    aput-object v14, v8, v7

    invoke-virtual {v5, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v5, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bugreport exception "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/motorola/help/extlog/util/Logger$Companion;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/BugreportManager;->cancelBugreport()V

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->await()V

    sget-object v0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object v2, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "end of collecting RBR log"

    invoke-virtual {v0, v2, v3}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of p2, p3, Lcom/motorola/help/extlog/loggers/RegularBRLogger$reset$1;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Lcom/motorola/help/extlog/loggers/RegularBRLogger$reset$1;

    iget v0, p2, Lcom/motorola/help/extlog/loggers/RegularBRLogger$reset$1;->label:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p3, p2, Lcom/motorola/help/extlog/loggers/RegularBRLogger$reset$1;->label:I

    sub-int/2addr p3, v1

    iput p3, p2, Lcom/motorola/help/extlog/loggers/RegularBRLogger$reset$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/motorola/help/extlog/loggers/RegularBRLogger$reset$1;

    invoke-direct {p2, p0, p3}, Lcom/motorola/help/extlog/loggers/RegularBRLogger$reset$1;-><init>(Lcom/motorola/help/extlog/loggers/RegularBRLogger;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, p2, Lcom/motorola/help/extlog/loggers/RegularBRLogger$reset$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p2, Lcom/motorola/help/extlog/loggers/RegularBRLogger$reset$1;->label:I

    const-string v2, "TAG"

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

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

    sget-object v1, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Reset enter"

    invoke-virtual {p3, v1, v4}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p2, Lcom/motorola/help/extlog/loggers/RegularBRLogger$reset$1;->label:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->cleanUpLogs(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p1, Lcom/motorola/help/extlog/loggers/RegularBRLogger;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Reset exit"

    invoke-virtual {p0, p1, p2}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
