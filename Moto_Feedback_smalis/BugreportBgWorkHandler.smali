.class public final Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;
.super Ljava/lang/Object;
.source "BugreportUIHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0004J\u0016\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u001e\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R4\u0010\u0005\u001a(\u0012$\u0012\"\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t \n*\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u00070\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u00070\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0011\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00040\u00070\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;",
        "",
        "()V",
        "TAG",
        "",
        "_brStatesLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Pair;",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "brStatesLiveData",
        "Landroidx/lifecycle/LiveData;",
        "getBrStatesLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "pendingBugreports",
        "",
        "enqueueWork",
        "",
        "timestamp",
        "filename",
        "insertBrStatus",
        "repository",
        "Lcom/motorola/feedback/bugreport/BugreportRepository;",
        "bugreport",
        "Lcom/motorola/feedback/localdb/Bugreport;",
        "startBugreport",
        "feedbackTimeStamp",
        "appContext",
        "Landroid/app/Application;",
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
.field public static final INSTANCE:Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;

.field private static final TAG:Ljava/lang/String;

.field private static final _brStatesLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private static final pendingBugreports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;

    invoke-direct {v0}, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;-><init>()V

    sput-object v0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;->INSTANCE:Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;

    const-string v0, "BugreportBgWorkHandler"

    sput-object v0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;->TAG:Ljava/lang/String;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;->_brStatesLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;->pendingBugreports:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPendingBugreports$p()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;->pendingBugreports:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$get_brStatesLiveData$p()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    sget-object v0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;->_brStatesLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method


# virtual methods
.method public final enqueueWork(JLjava/lang/String;)V
    .locals 0

    const-string p0, "filename"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lcom/motorola/feedback/scheduler/WorkManagerHelper;->getBugreportPostDataWorker(JLjava/lang/String;)Landroidx/work/OneTimeWorkRequest;

    move-result-object p1

    check-cast p1, Landroidx/work/WorkRequest;

    invoke-virtual {p0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public final getBrStatesLiveData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    sget-object p0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;->_brStatesLiveData:Landroidx/lifecycle/MutableLiveData;

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final insertBrStatus(Lcom/motorola/feedback/bugreport/BugreportRepository;Lcom/motorola/feedback/localdb/Bugreport;)V
    .locals 6

    const-string p0, "repository"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bugreport"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler$insertBrStatus$1;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v3}, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler$insertBrStatus$1;-><init>(Lcom/motorola/feedback/bugreport/BugreportRepository;Lcom/motorola/feedback/localdb/Bugreport;Lkotlin/coroutines/Continuation;)V

    move-object v3, p0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final startBugreport(JLjava/lang/String;Landroid/app/Application;)V
    .locals 3

    const-string p0, "filename"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appContext"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler$startBugreport$callback$1;

    invoke-direct {p0, p4, p3}, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler$startBugreport$callback$1;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    move-object v0, p4

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/feedback/utils/Utils;->getBugreportRepository(Landroid/content/Context;)Lcom/motorola/feedback/bugreport/BugreportRepository;

    move-result-object v0

    const-string v1, "getBugreportRepository(appContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler$startBugreport$callback$1;->setRepository(Lcom/motorola/feedback/bugreport/BugreportRepository;)V

    invoke-virtual {p0, p1, p2}, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler$startBugreport$callback$1;->setCallbackTimestamp(J)V

    invoke-virtual {p0, p3}, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler$startBugreport$callback$1;->setFileName(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/feedback/bugreport/BugreportBgWorkHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting Bugreport for timestamp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " and filename = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Landroid/os/BugreportManager$BugreportCallback;

    invoke-static {p4, p0, p3}, Lcom/motorola/feedback/bugreport/BugreportAPIHelperKt;->createBugReport(Landroid/app/Application;Landroid/os/BugreportManager$BugreportCallback;Ljava/lang/String;)V

    return-void
.end method
