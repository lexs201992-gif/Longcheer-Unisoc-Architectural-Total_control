.class public final Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;
.super Landroidx/work/CoroutineWorker;
.source "ExtFileUploadWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/feedback/scheduler/ExtFileUploadWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\t\u001a\u00020\nH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;",
        "Landroidx/work/CoroutineWorker;",
        "appContext",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "getAppContext",
        "()Landroid/content/Context;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/motorola/feedback/scheduler/ExtFileUploadWorker$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$ugHtAT8njcyyqSB0yZz-VzdJd5Y(Lcom/motorola/feedback/logrequest/LogRequestRepository;Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;JLjava/lang/String;DJJ)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->doWork$lambda$0(Lcom/motorola/feedback/logrequest/LogRequestRepository;Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;JLjava/lang/String;DJJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->Companion:Lcom/motorola/feedback/scheduler/ExtFileUploadWorker$Companion;

    const-string v0, "ExtFileUploadWorker::class.java.simpleName"

    const-string v1, "ExtFileUploadWorker"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->appContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final doWork$lambda$0(Lcom/motorola/feedback/logrequest/LogRequestRepository;Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;JLjava/lang/String;DJJ)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    const-string v2, "$repository"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->appContext:Landroid/content/Context;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v11, Lcom/motorola/feedback/logrequest/ProgressData;

    sget-object v3, Lcom/motorola/feedback/logrequest/ProgressType;->UPLOAD:Lcom/motorola/feedback/logrequest/ProgressType;

    invoke-virtual {v3}, Lcom/motorola/feedback/logrequest/ProgressType;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v3, v11

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v3 .. v10}, Lcom/motorola/feedback/logrequest/ProgressData;-><init>(Ljava/lang/String;DJJ)V

    invoke-virtual {v2, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-wide v3, p2

    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/motorola/feedback/logrequest/LogRequestRepository;->updateProgress(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
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

    invoke-virtual {p0}, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->getInputData()Landroidx/work/Data;

    move-result-object p1

    sget-object v0, Lcom/motorola/feedback/utils/Constants;->KEY_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    sget-object v1, Lcom/motorola/feedback/utils/Constants;->KEY_ENTRY_ID:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->getInputData()Landroidx/work/Data;

    move-result-object v4

    sget-object v5, Lcom/motorola/feedback/utils/Constants;->KEY_REQUEST_ID:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->getInputData()Landroidx/work/Data;

    move-result-object v6

    sget-object v7, Lcom/motorola/feedback/utils/Constants;->KEY_ZIP_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Bucket Name to upload ---> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v7, v0, v2

    if-eqz v7, :cond_2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;

    iget-object v3, p0, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->appContext:Landroid/content/Context;

    move-object v7, p0

    check-cast v7, Landroidx/work/ListenableWorker;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-direct {v2, v3, v7, v8, v6}, Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;-><init>(Landroid/content/Context;Landroidx/work/ListenableWorker;Ljava/io/File;Z)V

    sget-object v3, Lcom/motorola/feedback/logrequest/LogRequestRepository;->Companion:Lcom/motorola/feedback/logrequest/LogRequestRepository$Companion;

    iget-object v6, p0, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->appContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/motorola/feedback/logrequest/LogRequestRepository$Companion;->getRepository(Landroid/content/Context;)Lcom/motorola/feedback/logrequest/LogRequestRepository;

    move-result-object v3

    new-instance v6, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3, p0, v4, v5}, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/feedback/logrequest/LogRequestRepository;Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;J)V

    invoke-static {v6}, Lcom/motorola/feedback/scheduler/FileUploadHelper;->registerUploadProgressListener(Lcom/motorola/feedback/scheduler/FileUploadHelper$UploadProgressListener;)V

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, p1, v1}, Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;->getUploadResult(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    invoke-static {v6}, Lcom/motorola/feedback/scheduler/FileUploadHelper;->unRegisterUploadProgressListener(Lcom/motorola/feedback/scheduler/FileUploadHelper$UploadProgressListener;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->appContext:Landroid/content/Context;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/motorola/feedback/ui/UINotificationUtilKt;->showUploadingFailureNotification$default(Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->appContext:Landroid/content/Context;

    sget-object v0, Lcom/motorola/feedback/logrequest/RequestStatus;->ERROR_UPLOADING:Lcom/motorola/feedback/logrequest/RequestStatus;

    invoke-virtual {v3, p0, v4, v5, v0}, Lcom/motorola/feedback/logrequest/LogRequestRepository;->sendStatus(Landroid/content/Context;JLcom/motorola/feedback/logrequest/RequestStatus;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->appContext:Landroid/content/Context;

    sget-object v0, Lcom/motorola/feedback/logrequest/RequestStatus;->UPLOADED:Lcom/motorola/feedback/logrequest/RequestStatus;

    invoke-virtual {v3, p0, v4, v5, v0}, Lcom/motorola/feedback/logrequest/LogRequestRepository;->sendStatus(Landroid/content/Context;JLcom/motorola/feedback/logrequest/RequestStatus;)V

    :goto_0
    const-string p0, "result"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    :goto_1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    const-string p1, "failure()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/ExtFileUploadWorker;->appContext:Landroid/content/Context;

    return-object p0
.end method
