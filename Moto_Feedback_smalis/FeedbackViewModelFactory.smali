.class public final Lcom/motorola/feedback/viewmodels/FeedbackViewModelFactory;
.super Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;
.source "FeedbackViewModelFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J%\u0010\u000b\u001a\u0002H\u000c\"\u0008\u0008\u0000\u0010\u000c*\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000fH\u0016\u00a2\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/motorola/feedback/viewmodels/FeedbackViewModelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;",
        "application",
        "Landroid/app/Application;",
        "repository",
        "Lcom/motorola/feedback/viewmodels/FeedbackRepository;",
        "(Landroid/app/Application;Lcom/motorola/feedback/viewmodels/FeedbackRepository;)V",
        "getApplication",
        "()Landroid/app/Application;",
        "getRepository",
        "()Lcom/motorola/feedback/viewmodels/FeedbackRepository;",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
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
.field private final application:Landroid/app/Application;

.field private final repository:Lcom/motorola/feedback/viewmodels/FeedbackRepository;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/motorola/feedback/viewmodels/FeedbackRepository;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    iput-object p1, p0, Lcom/motorola/feedback/viewmodels/FeedbackViewModelFactory;->application:Landroid/app/Application;

    iput-object p2, p0, Lcom/motorola/feedback/viewmodels/FeedbackViewModelFactory;->repository:Lcom/motorola/feedback/viewmodels/FeedbackRepository;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    iget-object v0, p0, Lcom/motorola/feedback/viewmodels/FeedbackViewModelFactory;->application:Landroid/app/Application;

    iget-object p0, p0, Lcom/motorola/feedback/viewmodels/FeedbackViewModelFactory;->repository:Lcom/motorola/feedback/viewmodels/FeedbackRepository;

    invoke-direct {p1, v0, p0}, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;-><init>(Landroid/app/Application;Lcom/motorola/feedback/viewmodels/FeedbackRepository;)V

    check-cast p1, Lcom/motorola/feedback/viewmodels/BaseViewModel;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/motorola/feedback/viewmodels/LegacyFeedbackViewModel;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/motorola/feedback/viewmodels/LegacyFeedbackViewModel;

    iget-object v0, p0, Lcom/motorola/feedback/viewmodels/FeedbackViewModelFactory;->application:Landroid/app/Application;

    iget-object p0, p0, Lcom/motorola/feedback/viewmodels/FeedbackViewModelFactory;->repository:Lcom/motorola/feedback/viewmodels/FeedbackRepository;

    invoke-direct {p1, v0, p0}, Lcom/motorola/feedback/viewmodels/LegacyFeedbackViewModel;-><init>(Landroid/app/Application;Lcom/motorola/feedback/viewmodels/FeedbackRepository;)V

    check-cast p1, Lcom/motorola/feedback/viewmodels/BaseViewModel;

    :goto_0
    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid ViewModel class"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/viewmodels/FeedbackViewModelFactory;->application:Landroid/app/Application;

    return-object p0
.end method

.method public final getRepository()Lcom/motorola/feedback/viewmodels/FeedbackRepository;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/viewmodels/FeedbackViewModelFactory;->repository:Lcom/motorola/feedback/viewmodels/FeedbackRepository;

    return-object p0
.end method
