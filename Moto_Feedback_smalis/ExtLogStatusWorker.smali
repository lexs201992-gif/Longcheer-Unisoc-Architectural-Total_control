.class public final Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;
.super Landroidx/work/Worker;
.source "ExtLogStatusWorker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0019\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;",
        "Landroidx/work/Worker;",
        "context",
        "Landroid/content/Context;",
        "workerParameters",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "getTAG",
        "()Ljava/lang/String;",
        "getContext",
        "()Landroid/content/Context;",
        "getWorkerParameters",
        "()Landroidx/work/WorkerParameters;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
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
.field private final TAG:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final workerParameters:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->workerParameters:Landroidx/work/WorkerParameters;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    sget-object v2, Lcom/motorola/feedback/utils/Constants;->KEY_REQUEST_ID:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->getInputData()Landroidx/work/Data;

    move-result-object v3

    sget-object v4, Lcom/motorola/feedback/utils/Constants;->KEY_REQUEST_DATA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->getInputData()Landroidx/work/Data;

    move-result-object v4

    sget-object v5, Lcom/motorola/feedback/utils/Constants;->KEY_STATE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->getInputData()Landroidx/work/Data;

    move-result-object v5

    sget-object v6, Lcom/motorola/feedback/utils/Constants;->KEY_SURVEY_ENABLED:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v5, v6, v15}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->getInputData()Landroidx/work/Data;

    move-result-object v5

    sget-object v6, Lcom/motorola/feedback/utils/Constants;->KEY_CARRIER_LOGGING:Ljava/lang/String;

    invoke-virtual {v5, v6, v15}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->getInputData()Landroidx/work/Data;

    move-result-object v5

    sget-object v6, Lcom/motorola/feedback/utils/Constants;->KEY_NOTIFICATION_PERMISSION_STATUS:Ljava/lang/String;

    invoke-virtual {v5, v6, v15}, Landroidx/work/Data;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    iget-object v5, v0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Request = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x1

    cmp-long v5, v1, v5

    const/16 v19, 0x1

    if-ltz v5, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v15

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v5, v19

    :goto_1
    if-eqz v5, :cond_3

    :cond_2
    if-nez v18, :cond_3

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    const-string v1, "failure()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v20, Lcom/motorola/feedback/transport/request/ExtendedLogStatusRequest;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x20

    const/4 v14, 0x0

    move-object/from16 v5, v20

    move-wide v6, v1

    move-object v8, v3

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-direct/range {v5 .. v14}, Lcom/motorola/feedback/transport/request/ExtendedLogStatusRequest;-><init>(JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v5, v0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->context:Landroid/content/Context;

    invoke-static {v5}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v5

    const-string v6, "from(context)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v21

    const-string v14, "success()"

    if-eqz v18, :cond_5

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/motorola/feedback/utils/Utils;->getNotificationPermissionStatus(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v20, Lcom/motorola/feedback/transport/request/ExtendedLogStatusRequest;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/motorola/feedback/utils/Constants;->KEY_NOTIFICATION_PERMISSION_STATUS:Ljava/lang/String;

    move-object/from16 v5, v20

    move-wide v6, v1

    invoke-direct/range {v5 .. v12}, Lcom/motorola/feedback/transport/request/ExtendedLogStatusRequest;-><init>(JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_5
    if-eqz v17, :cond_6

    new-instance v20, Lcom/motorola/feedback/transport/request/ExtendedLogStatusRequest;

    const/4 v12, 0x0

    const/16 v13, 0x20

    const/16 v22, 0x0

    move-object/from16 v5, v20

    move-wide v6, v1

    move-object v8, v3

    move-object v9, v4

    move/from16 v10, v16

    move/from16 v11, v17

    move-object v1, v14

    move-object/from16 v14, v22

    invoke-direct/range {v5 .. v14}, Lcom/motorola/feedback/transport/request/ExtendedLogStatusRequest;-><init>(JLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_6
    move-object v1, v14

    :goto_2
    move-object/from16 v2, v20

    iget-object v3, v0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/ccc/cce/CCESettings;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/feedback/transport/request/ExtendedLogStatusRequest;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/motorola/feedback/transport/request/ExtendedLogStatusRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    move/from16 v15, v19

    :cond_8
    if-eqz v15, :cond_9

    iget-object v0, v0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->TAG:Ljava/lang/String;

    const-string v2, "!!!FATAL. Device ID is Empty."

    invoke-static {v0, v2}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_9
    new-instance v3, Lcom/motorola/feedback/transport/FeedBackEndPoint;

    iget-object v4, v0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/motorola/feedback/transport/FeedBackEndPoint;-><init>(Landroid/content/Context;)V

    check-cast v2, Lcom/motorola/feedback/transport/request/BaseRequest;

    invoke-virtual {v3, v2}, Lcom/motorola/feedback/transport/FeedBackEndPoint;->postData(Lcom/motorola/feedback/transport/request/BaseRequest;)Lcom/motorola/feedback/transport/response/BaseResponse;

    move-result-object v2

    const-string v3, "fbEp.postData(request)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v18, :cond_a

    invoke-virtual {v2}, Lcom/motorola/feedback/transport/response/BaseResponse;->getStatus()I

    move-result v2

    if-nez v2, :cond_a

    iget-object v0, v0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->context:Landroid/content/Context;

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/feedback/utils/Utils;->setNotificationPermissionStatus(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_a
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final getWorkerParameters()Landroidx/work/WorkerParameters;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/ExtLogStatusWorker;->workerParameters:Landroidx/work/WorkerParameters;

    return-object p0
.end method
