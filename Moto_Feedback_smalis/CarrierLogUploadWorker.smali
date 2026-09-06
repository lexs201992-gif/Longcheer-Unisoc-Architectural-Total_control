.class public final Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;
.super Landroidx/work/Worker;
.source "CarrierLogUploadWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "getAppContext",
        "()Landroid/content/Context;",
        "firebaseFileUploadHelper",
        "Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;",
        "firebaseFileUploadHelperCameraAttachments",
        "firebaseFileUploadHelperOtherAttachments",
        "listener",
        "Lcom/motorola/feedback/scheduler/FileUploadHelper$UploadProgressListener;",
        "prcUploader",
        "Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;",
        "prcUploaderCameraAttachents",
        "prcUploaderOtherAttachments",
        "progressUpdateInterval",
        "",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "onStopped",
        "",
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
.field public static final Companion:Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private firebaseFileUploadHelper:Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;

.field private firebaseFileUploadHelperCameraAttachments:Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;

.field private firebaseFileUploadHelperOtherAttachments:Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;

.field private listener:Lcom/motorola/feedback/scheduler/FileUploadHelper$UploadProgressListener;

.field private prcUploader:Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;

.field private prcUploaderCameraAttachents:Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;

.field private prcUploaderOtherAttachments:Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;

.field private final progressUpdateInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->Companion:Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker$Companion;

    const-string v0, "CarrierLogUploadWorker::class.java.simpleName"

    const-string v1, "CarrierLogUploadWorker"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->appContext:Landroid/content/Context;

    const/16 p1, 0x14

    iput p1, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->progressUpdateInterval:I

    return-void
.end method

.method public static final synthetic access$getFirebaseFileUploadHelper$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;)Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->firebaseFileUploadHelper:Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseFileUploadHelperCameraAttachments$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;)Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->firebaseFileUploadHelperCameraAttachments:Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseFileUploadHelperOtherAttachments$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;)Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->firebaseFileUploadHelperOtherAttachments:Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;)Lcom/motorola/feedback/scheduler/FileUploadHelper$UploadProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->listener:Lcom/motorola/feedback/scheduler/FileUploadHelper$UploadProgressListener;

    return-object p0
.end method

.method public static final synthetic access$getProgressUpdateInterval$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;)I
    .locals 0

    iget p0, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->progressUpdateInterval:I

    return p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setFirebaseFileUploadHelper$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->firebaseFileUploadHelper:Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;

    return-void
.end method

.method public static final synthetic access$setFirebaseFileUploadHelperCameraAttachments$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->firebaseFileUploadHelperCameraAttachments:Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;

    return-void
.end method

.method public static final synthetic access$setFirebaseFileUploadHelperOtherAttachments$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->firebaseFileUploadHelperOtherAttachments:Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;

    return-void
.end method

.method public static final synthetic access$setListener$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;Lcom/motorola/feedback/scheduler/FileUploadHelper$UploadProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->listener:Lcom/motorola/feedback/scheduler/FileUploadHelper$UploadProgressListener;

    return-void
.end method

.method public static final synthetic access$setPrcUploader$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->prcUploader:Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;

    return-void
.end method

.method public static final synthetic access$setPrcUploaderCameraAttachents$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->prcUploaderCameraAttachents:Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;

    return-void
.end method

.method public static final synthetic access$setPrcUploaderOtherAttachments$p(Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->prcUploaderOtherAttachments:Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 15

    sget-object v0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    sget-object v2, Lcom/motorola/feedback/utils/Constants;->KEY_REQUEST_ID:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sget-object v1, Lcom/motorola/feedback/logrequest/LogRequestRepository;->Companion:Lcom/motorola/feedback/logrequest/LogRequestRepository$Companion;

    iget-object v2, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/motorola/feedback/logrequest/LogRequestRepository$Companion;->getRepository(Landroid/content/Context;)Lcom/motorola/feedback/logrequest/LogRequestRepository;

    move-result-object v6

    new-instance v13, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker$doWork$1;

    const/4 v14, 0x0

    move-object v5, v2

    move-object v9, p0

    move-object v10, v1

    invoke-direct/range {v5 .. v14}, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker$doWork$1;-><init>(Lcom/motorola/feedback/logrequest/LogRequestRepository;JLcom/motorola/feedback/scheduler/CarrierLogUploadWorker;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v2, p0, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Carrier upload worker completed"

    invoke-static {v0, p0}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    const-string v0, "{\n            Result.retry()\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    const-string v0, "{\n            Result.success()\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final getAppContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public onStopped()V
    .locals 3

    invoke-super {p0}, Landroidx/work/Worker;->onStopped()V

    sget-object v0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is stopped."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->firebaseFileUploadHelper:Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/feedback/scheduler/FirebaseFileUploadHelper;->pauseUpload()V

    :cond_0
    iget-object p0, p0, Lcom/motorola/feedback/scheduler/CarrierLogUploadWorker;->prcUploader:Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/feedback/utils/CarrierLogUploaderPRC;->cancelUploadTask()V

    :cond_1
    return-void
.end method
