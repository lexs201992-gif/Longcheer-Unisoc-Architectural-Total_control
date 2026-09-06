.class public final Lcom/motorola/feedback/viewmodels/LegacyFeedbackViewModel;
.super Lcom/motorola/feedback/viewmodels/BaseViewModel;
.source "LegacyFeedbackViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/motorola/feedback/viewmodels/LegacyFeedbackViewModel;",
        "Lcom/motorola/feedback/viewmodels/BaseViewModel;",
        "application",
        "Landroid/app/Application;",
        "repository",
        "Lcom/motorola/feedback/viewmodels/FeedbackRepository;",
        "(Landroid/app/Application;Lcom/motorola/feedback/viewmodels/FeedbackRepository;)V",
        "getRepository",
        "()Lcom/motorola/feedback/viewmodels/FeedbackRepository;",
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
.field private final repository:Lcom/motorola/feedback/viewmodels/FeedbackRepository;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/motorola/feedback/viewmodels/FeedbackRepository;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/feedback/viewmodels/BaseViewModel;-><init>(Landroid/app/Application;Lcom/motorola/feedback/viewmodels/FeedbackRepository;)V

    iput-object p2, p0, Lcom/motorola/feedback/viewmodels/LegacyFeedbackViewModel;->repository:Lcom/motorola/feedback/viewmodels/FeedbackRepository;

    return-void
.end method


# virtual methods
.method public final getRepository()Lcom/motorola/feedback/viewmodels/FeedbackRepository;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/viewmodels/LegacyFeedbackViewModel;->repository:Lcom/motorola/feedback/viewmodels/FeedbackRepository;

    return-object p0
.end method
