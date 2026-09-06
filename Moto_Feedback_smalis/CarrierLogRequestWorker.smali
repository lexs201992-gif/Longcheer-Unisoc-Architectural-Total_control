.class public final Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;
.super Landroidx/work/CoroutineWorker;
.source "CarrierLogRequestWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u0007\u001a\u00020\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;",
        "Landroidx/work/CoroutineWorker;",
        "mContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
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
.field public static final Companion:Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->Companion:Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$Companion;

    const-string v0, "CarrierLogRequestWorker"

    sput-object v0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 34
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;

    iget v3, v2, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;

    invoke-direct {v2, v0, v1}, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;-><init>(Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v2

    iget-object v1, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    iget v3, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->label:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-wide v2, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->J$0:J

    iget-object v0, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v5, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->J$0:J

    iget-object v0, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/feedback/logrequest/LogRequestRepository;

    iget-object v3, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v10, v5

    move-object/from16 v33, v3

    move-object v3, v0

    move-object/from16 v0, v33

    goto/16 :goto_3

    :cond_3
    iget-wide v10, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->J$0:J

    iget-object v0, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/feedback/logrequest/LogRequestRepository;

    iget-object v3, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/feedback/logrequest/CarrierLogRequest;

    iget-object v6, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v1, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->TAG:Ljava/lang/String;

    const-string v3, "Starting CarrierLogRequestWorker Worker"

    invoke-static {v1, v3}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const-string v3, "timestamp"

    const-wide/16 v10, -0x1

    invoke-virtual {v1, v3, v10, v11}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    sget-object v3, Lcom/motorola/feedback/utils/Constants;->KEY_MEDIA_FILES:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/work/Data;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    sget-object v3, Lcom/motorola/feedback/utils/Constants;->KEY_CONTENT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    cmp-long v1, v13, v10

    if-lez v1, :cond_a

    if-eqz v15, :cond_5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3f

    const/16 v23, 0x0

    invoke-static/range {v15 .. v23}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_1

    :cond_5
    move-object/from16 v21, v7

    :goto_1
    iget-object v1, v0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/feedback/utils/Utils;->getCarrierLogMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/motorola/feedback/logrequest/CarrierLogRequest;

    move-object v12, v3

    const-wide/16 v10, 0x0

    move-wide/from16 v31, v13

    move-wide v13, v10

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x7d5

    const/16 v30, 0x0

    move-wide/from16 v15, v31

    invoke-direct/range {v12 .. v30}, Lcom/motorola/feedback/logrequest/CarrierLogRequest;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/motorola/feedback/logrequest/LogRequestRepository;->Companion:Lcom/motorola/feedback/logrequest/LogRequestRepository$Companion;

    iget-object v8, v0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/motorola/feedback/logrequest/LogRequestRepository$Companion;->getRepository(Landroid/content/Context;)Lcom/motorola/feedback/logrequest/LogRequestRepository;

    move-result-object v1

    iput-object v0, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v3, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v1, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$2:Ljava/lang/Object;

    move-wide/from16 v10, v31

    iput-wide v10, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->J$0:J

    iput v6, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->label:I

    invoke-virtual {v1, v3, v9}, Lcom/motorola/feedback/logrequest/LogRequestRepository;->insertCarrierLog(Lcom/motorola/feedback/logrequest/CarrierLogRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_6

    return-object v2

    :cond_6
    :goto_2
    sget-object v6, Lcom/motorola/feedback/logrequest/ExtLogAppConnector;->Companion:Lcom/motorola/feedback/logrequest/ExtLogAppConnector$Companion;

    iget-object v8, v0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/motorola/feedback/logrequest/CarrierLogRequest;->getRequestId()J

    move-result-wide v12

    invoke-virtual {v6, v8, v12, v13}, Lcom/motorola/feedback/logrequest/ExtLogAppConnector$Companion;->requestLogs(Landroid/content/Context;J)V

    invoke-virtual {v3}, Lcom/motorola/feedback/logrequest/CarrierLogRequest;->getRequestId()J

    move-result-wide v12

    iput-object v0, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v1, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-object v7, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$2:Ljava/lang/Object;

    iput-wide v10, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->J$0:J

    iput v5, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->label:I

    invoke-virtual {v1, v12, v13, v9}, Lcom/motorola/feedback/logrequest/LogRequestRepository;->getCarrierRequestByRequestId(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_7

    return-object v2

    :cond_7
    move-object/from16 v33, v3

    move-object v3, v1

    move-object/from16 v1, v33

    :goto_3
    move-object v5, v1

    check-cast v5, Lcom/motorola/feedback/logrequest/CarrierLogRequest;

    if-eqz v5, :cond_9

    sget-object v1, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "carrier log requested for "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/motorola/feedback/logrequest/RequestStatus;->STARTED:Lcom/motorola/feedback/logrequest/RequestStatus;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-object v0, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$0:Ljava/lang/Object;

    iput-object v7, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->L$1:Ljava/lang/Object;

    iput-wide v10, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->J$0:J

    iput v4, v9, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker$doWork$1;->label:I

    move-object v4, v1

    move-wide v7, v12

    invoke-virtual/range {v3 .. v9}, Lcom/motorola/feedback/logrequest/LogRequestRepository;->updateCarrierLogStatus(Landroid/content/Context;Lcom/motorola/feedback/logrequest/CarrierLogRequest;Lcom/motorola/feedback/logrequest/RequestStatus;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_8

    return-object v2

    :cond_8
    move-wide v2, v10

    :goto_4
    iget-object v0, v0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/feedback/ui/UINotificationUtilKt;->showCarrierLogCalculationNotification(Landroid/content/Context;)V

    move-wide v10, v2

    :cond_9
    sget-object v0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Carrier log is requested for feedback with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    sget-object v0, Lcom/motorola/feedback/scheduler/CarrierLogRequestWorker;->TAG:Ljava/lang/String;

    const-string v1, "CarrierLogRequestWorker is finished with success"

    invoke-static {v0, v1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string v1, "success()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
