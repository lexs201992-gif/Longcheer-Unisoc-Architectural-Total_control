.class public final Lcom/motorola/feedback/scheduler/EndPointWorker;
.super Landroidx/work/Worker;
.source "EndpointWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/feedback/scheduler/EndPointWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J$\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\"\u0010\u001c\u001a\u00020\u00172\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/motorola/feedback/scheduler/EndPointWorker;",
        "Landroidx/work/Worker;",
        "mContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "showInHistory",
        "",
        "getShowInHistory",
        "()Z",
        "setShowInHistory",
        "(Z)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "prepareOutputData",
        "Landroidx/work/Data;",
        "entryId",
        "",
        "bucketName",
        "",
        "zipFileName",
        "processFeedbackForHistory",
        "",
        "baseRequest",
        "Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;",
        "baseResponse",
        "Lcom/motorola/feedback/transport/response/BaseResponse;",
        "updateDb",
        "capTimeStamp",
        "feedbackId",
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
.field public static final Companion:Lcom/motorola/feedback/scheduler/EndPointWorker$Companion;

.field private static final MAX_RETRY:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private showInHistory:Z


# direct methods
.method public static synthetic $r8$lambda$g72odpYILcGgScWLn3429TuOzd0(Lcom/motorola/feedback/scheduler/EndPointWorker;Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/motorola/feedback/scheduler/EndPointWorker;->doWork$lambda$0(Lcom/motorola/feedback/scheduler/EndPointWorker;Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/feedback/scheduler/EndPointWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/feedback/scheduler/EndPointWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/feedback/scheduler/EndPointWorker;->Companion:Lcom/motorola/feedback/scheduler/EndPointWorker$Companion;

    const-string v0, "EndPointWorker"

    sput-object v0, Lcom/motorola/feedback/scheduler/EndPointWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/feedback/scheduler/EndPointWorker;->showInHistory:Z

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/motorola/feedback/scheduler/EndPointWorker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/feedback/scheduler/EndPointWorker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final doWork$lambda$0(Lcom/motorola/feedback/scheduler/EndPointWorker;Ljava/util/concurrent/CountDownLatch;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$latch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcom/motorola/feedback/scheduler/EndPointWorker;->TAG:Ljava/lang/String;

    const-string v1, "Fetching FCM registration token succeeded"

    invoke-static {v0, v1}, Lcom/motorola/feedback/utils/Logger;->loge(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FCM token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/motorola/feedback/utils/Utils;->saveFcmToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/feedback/scheduler/EndPointWorker;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching FCM registration token failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/motorola/feedback/utils/Logger;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final prepareOutputData(JLjava/lang/String;Ljava/lang/String;)Landroidx/work/Data;
    .locals 1

    new-instance p0, Landroidx/work/Data$Builder;

    invoke-direct {p0}, Landroidx/work/Data$Builder;-><init>()V

    sget-object v0, Lcom/motorola/feedback/utils/Constants;->KEY_ENTRY_ID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/work/Data$Builder;->putLong(Ljava/lang/String;J)Landroidx/work/Data$Builder;

    sget-object p1, Lcom/motorola/feedback/utils/Constants;->KEY_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    sget-object p1, Lcom/motorola/feedback/utils/Constants;->KEY_ZIP_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, p4}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    invoke-virtual {p0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object p0

    const-string p1, "builder.build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final processFeedbackForHistory(Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;Lcom/motorola/feedback/transport/response/BaseResponse;)V
    .locals 6

    invoke-virtual {p2}, Lcom/motorola/feedback/transport/response/BaseResponse;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->getCapturedTimeStamp()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/motorola/feedback/transport/response/BaseResponse;->getEntryId()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/feedback/scheduler/EndPointWorker;->updateDb(Ljava/lang/String;JJ)V

    return-void
.end method

.method private final updateDb(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v5, p0, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-wide v1, p2

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Lcom/motorola/feedback/localdb/KotlinCoroutineWrapperKt;->updateFeedbackIdWithTimeStamp(Ljava/lang/String;JJLandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 27

    move-object/from16 v1, p0

    const-string v2, "retry()"

    const-string v3, "Retry count exceeded"

    const-string v4, "Endpoint worker finished with Failure :  Error REQUEST_TOO_FREQUENT for CaptTS "

    const-string v5, "Run attempt count "

    const-string v6, "Endpoint worker finished for CaptTS "

    const-string v7, "Datastore declined request. Retrying... for CaptTS "

    const-string v8, "Duplicate Req Error with entry id "

    const-string v9, "Endpoint worker SUCCESS for CaptTS "

    const-string v10, "Failure response with error code "

    sget-object v0, Lcom/motorola/feedback/scheduler/EndPointWorker;->TAG:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getInputData()Landroidx/work/Data;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Starting Endpoint Worker: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getInputData()Landroidx/work/Data;

    move-result-object v11

    sget-object v12, Lcom/motorola/feedback/utils/Constants;->KEY_DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getInputData()Landroidx/work/Data;

    move-result-object v12

    sget-object v13, Lcom/motorola/feedback/utils/Constants;->KEY_SERIAL_ID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getInputData()Landroidx/work/Data;

    move-result-object v13

    sget-object v14, Lcom/motorola/feedback/utils/Constants;->KEY_REQUEST_DATA:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getInputData()Landroidx/work/Data;

    move-result-object v14

    sget-object v15, Lcom/motorola/feedback/utils/Constants;->KEY_REQUEST_TYPE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getInputData()Landroidx/work/Data;

    move-result-object v15

    move-object/from16 v16, v6

    sget-object v6, Lcom/motorola/feedback/utils/Constants;->KEY_ZIP_TAG:Ljava/lang/String;

    invoke-virtual {v15, v6}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/motorola/feedback/transport/FeedBackEndPoint;

    move-object/from16 v17, v6

    iget-object v6, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-direct {v15, v6}, Lcom/motorola/feedback/transport/FeedBackEndPoint;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-class v18, Lcom/motorola/feedback/transport/request/RatingRequest;

    move-object/from16 v18, v4

    const-string v4, "RatingRequest"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-class v4, Lcom/motorola/feedback/transport/request/RatingRequest;

    check-cast v4, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    const-class v4, Lcom/motorola/feedback/transport/request/InAppRatingRequest;

    const-string v4, "InAppRatingRequest"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->showInHistory:Z

    const-class v4, Lcom/motorola/feedback/transport/request/InAppRatingRequest;

    check-cast v4, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_1
    const-class v4, Lcom/motorola/feedback/transport/request/RateAndFeedbackRequest;

    const-string v4, "RateAndFeedbackRequest"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-class v4, Lcom/motorola/feedback/transport/request/RateAndFeedbackRequest;

    check-cast v4, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_2
    const-class v4, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;

    const-string v4, "CarrierLogRateAndFeedbackRequest"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-class v4, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;

    check-cast v4, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_3
    const-class v4, Lcom/motorola/feedback/transport/request/CarrierLogSuggestionRequest;

    const-string v4, "CarrierLogSuggestionRequest"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-class v4, Lcom/motorola/feedback/transport/request/CarrierLogSuggestionRequest;

    check-cast v4, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_4
    const-class v4, Lcom/motorola/feedback/transport/request/FeedbackRequest;

    check-cast v4, Ljava/lang/reflect/Type;

    :goto_0
    invoke-static {}, Lcom/motorola/help/feedbackinterface/SystemProperties;->isChinaDevice()Z

    move-result v14

    move-object/from16 v19, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v20, v2

    const-string v2, "FCM Registration china device -> "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/feedback/utils/Utils;->getFcmToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    if-nez v14, :cond_6

    iget-object v2, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/feedback/utils/Utils;->hasExtLogSupport(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/feedback/utils/Utils;->hasODMExtLogSupport(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "FCM registration started"

    invoke-static {v0, v2}, Lcom/motorola/feedback/utils/Logger;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v14, Lcom/motorola/feedback/scheduler/EndPointWorker$$ExternalSyntheticLambda0;

    invoke-direct {v14, v1, v0}, Lcom/motorola/feedback/scheduler/EndPointWorker$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/feedback/scheduler/EndPointWorker;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v14}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/motorola/feedback/scheduler/EndPointWorker;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v3, "Fetching FCM registration token failed :"

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/motorola/feedback/utils/Logger;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/motorola/feedback/scheduler/EndPointWorker;->TAG:Ljava/lang/String;

    const-string v2, "FCM registration stopped"

    invoke-static {v0, v2}, Lcom/motorola/feedback/utils/Logger;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v6, v13, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;

    invoke-virtual {v2, v11}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setSerialId(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/feedback/utils/Utils;->getFcmToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/motorola/feedback/scheduler/EndPointWorker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "FCM Token = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setFcmToken(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/feedback/utils/Utils;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setCountry(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/feedback/utils/Utils;->getNetworkCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setNetworkCountry(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/feedback/utils/Utils;->getAppVersion(Landroid/content/Context;)J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setApkVer(J)V

    iget-object v0, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/feedback/utils/Utils;->getEodfVersion(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "getEodfVersion(mContext)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setEodfApkVer(J)V

    invoke-static {}, Lcom/motorola/feedback/utils/Utils;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setCarrierName(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/feedback/utils/Utils;->getValueMCC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setValueMCC(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/feedback/utils/Utils;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setManufacturerName(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/feedback/utils/Utils;->getChipsetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setChipsetName(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/feedback/utils/Utils;->isChinaDevice()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->setIsPRC(Ljava/lang/Boolean;)V

    invoke-virtual {v2}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->getCapturedTimeStamp()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getId()Ljava/util/UUID;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Starting Endpoint Work for CaptTS = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " WorkID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/motorola/feedback/utils/Utils;->setCurrentBuildType(Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;Landroid/content/Context;)V

    const-wide/16 v11, -0x1

    const/4 v4, 0x3

    const/4 v13, 0x0

    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/motorola/feedback/transport/request/BaseRequest;

    invoke-virtual {v15, v0}, Lcom/motorola/feedback/transport/FeedBackEndPoint;->postData(Lcom/motorola/feedback/transport/request/BaseRequest;)Lcom/motorola/feedback/transport/response/BaseResponse;

    move-result-object v0

    const-string v14, "fbEp.postData(baseRequest)"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/response/BaseResponse;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/response/BaseResponse;->getStatus()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/response/BaseResponse;->getFailureCode()I

    move-result v14

    if-ne v14, v15, :cond_7

    invoke-static {v13, v15, v13}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v14

    check-cast v14, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v14}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    new-instance v14, Lcom/motorola/feedback/scheduler/EndPointWorker$doWork$2;

    invoke-direct {v14, v1, v2, v13}, Lcom/motorola/feedback/scheduler/EndPointWorker$doWork$2;-><init>(Lcom/motorola/feedback/scheduler/EndPointWorker;Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v24, v14

    check-cast v24, Lkotlin/jvm/functions/Function2;

    const/16 v25, 0x3

    const/16 v26, 0x0

    invoke-static/range {v21 .. v26}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_7
    iget-object v14, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->mContext:Landroid/content/Context;

    invoke-static {v14, v0}, Lcom/motorola/feedback/transport/response/ConfigurationKt;->saveConfiguration(Landroid/content/Context;Lcom/motorola/feedback/transport/response/BaseResponse;)V

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/response/BaseResponse;->getFailureCode()I

    move-result v14

    sget v15, Lcom/motorola/feedback/utils/Constants;->REQUEST_DUPLICATE:I

    if-ne v14, v15, :cond_8

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/response/BaseResponse;->getDupRecId()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/response/BaseResponse;->getDupRecId()Ljava/lang/Long;

    move-result-object v14

    const-string v15, "baseResponse.dupRecId"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Lcom/motorola/feedback/transport/response/BaseResponse;->setEntryId(J)V

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/response/BaseResponse;->getEntryId()J

    move-result-wide v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Lcom/motorola/feedback/transport/response/BaseResponse;->getEntryId()J

    move-result-wide v13

    cmp-long v8, v13, v11

    if-nez v8, :cond_9

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/response/BaseResponse;->getFailureCode()I

    move-result v8

    invoke-virtual {v2}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->getCapturedTimeStamp()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getId()Ljava/util/UUID;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " for CaptTS "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-boolean v8, v1, Lcom/motorola/feedback/scheduler/EndPointWorker;->showInHistory:Z

    if-eqz v8, :cond_a

    const-string v8, "baseRequest"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->processFeedbackForHistory(Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;Lcom/motorola/feedback/transport/response/BaseResponse;)V

    :cond_a
    invoke-virtual {v2}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->getCapturedTimeStamp()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getId()Ljava/util/UUID;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Lcom/motorola/feedback/transport/response/BaseResponse;->getBucketName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/response/BaseResponse;->getFailureCode()I

    move-result v0

    sget v9, Lcom/motorola/feedback/utils/Constants;->REQUEST_TOO_FREQUENT:I
    :try_end_1
    .catch Lcom/motorola/feedback/transport/cce/WsRequestErrorException; {:try_start_1 .. :try_end_1} :catch_6

    if-ne v0, v9, :cond_c

    :try_start_2
    invoke-virtual {v2}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->getCapturedTimeStamp()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getId()Ljava/util/UUID;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getRunAttemptCount()I

    move-result v0
    :try_end_2
    .catch Lcom/motorola/feedback/transport/cce/WsRequestErrorException; {:try_start_2 .. :try_end_2} :catch_4

    if-gt v0, v4, :cond_b

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getRunAttemptCount()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0
    :try_end_3
    .catch Lcom/motorola/feedback/transport/cce/WsRequestErrorException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v5, v20

    :try_start_4
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/motorola/feedback/transport/cce/WsRequestErrorException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v5, v20

    :goto_3
    move-object/from16 v9, v17

    move-object/from16 v7, v19

    goto/16 :goto_5

    :cond_b
    move-object/from16 v5, v20

    move-object/from16 v7, v19

    :try_start_5
    invoke-static {v3, v7}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->getCapturedTimeStamp()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getId()Ljava/util/UUID;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v11, v18

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string v3, "failure()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/motorola/feedback/transport/cce/WsRequestErrorException; {:try_start_5 .. :try_end_5} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    :goto_4
    move-object/from16 v9, v17

    goto :goto_5

    :cond_c
    move-object/from16 v9, v17

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    :try_start_6
    invoke-direct {v1, v13, v14, v8, v9}, Lcom/motorola/feedback/scheduler/EndPointWorker;->prepareOutputData(JLjava/lang/String;Ljava/lang/String;)Landroidx/work/Data;

    move-result-object v0

    invoke-virtual {v2}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->getCapturedTimeStamp()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->isStopped()Z

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v14, v16

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " isStopped = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/work/ListenableWorker$Result;->success(Landroidx/work/Data;)Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string v3, "success(outputData)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/motorola/feedback/transport/cce/WsRequestErrorException; {:try_start_6 .. :try_end_6} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object/from16 v9, v17

    move-object/from16 v7, v19

    move-object/from16 v5, v20

    :goto_5
    sget-object v3, Lcom/motorola/feedback/scheduler/EndPointWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/cce/WsRequestErrorException;->getError()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/cce/WsRequestErrorException;->getErrorText()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "WsRequestErrorException. Error = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " and Error Text = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/motorola/feedback/utils/Logger;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/cce/WsRequestErrorException;->isTemporaryError()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/cce/WsRequestErrorException;->getError()Ljava/lang/String;

    move-result-object v0

    const-string v8, "OAUTH_NONCE_DUPLICATED_ERROR"

    if-ne v0, v8, :cond_d

    goto :goto_7

    :cond_d
    :goto_6
    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getRunAttemptCount()I

    move-result v0

    if-gt v0, v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getRunAttemptCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retrying...Run attempt count "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_f
    invoke-static {v3, v7}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :goto_8
    invoke-direct {v1, v4, v5, v7, v9}, Lcom/motorola/feedback/scheduler/EndPointWorker;->prepareOutputData(JLjava/lang/String;Ljava/lang/String;)Landroidx/work/Data;

    move-result-object v0

    invoke-virtual {v2}, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;->getCapturedTimeStamp()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/EndPointWorker;->getId()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Endpoint worker finished with Failure :  WsRequestErrorException for CaptTS "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/work/ListenableWorker$Result;->failure(Landroidx/work/Data;)Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string v1, "failure(outputData)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getShowInHistory()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/feedback/scheduler/EndPointWorker;->showInHistory:Z

    return p0
.end method

.method public final setShowInHistory(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/feedback/scheduler/EndPointWorker;->showInHistory:Z

    return-void
.end method
