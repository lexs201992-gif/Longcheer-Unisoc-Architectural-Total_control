.class public final Lcom/motorola/feedback/scheduler/SurveyResponseDataJasonWrapper;
.super Ljava/lang/Object;
.source "SurveyResponseSubmitWorker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSurveyResponseSubmitWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SurveyResponseSubmitWorker.kt\ncom/motorola/feedback/scheduler/SurveyResponseDataJasonWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n1855#2,2:112\n*S KotlinDebug\n*F\n+ 1 SurveyResponseSubmitWorker.kt\ncom/motorola/feedback/scheduler/SurveyResponseDataJasonWrapper\n*L\n104#1:112,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nJ\u0014\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/motorola/feedback/scheduler/SurveyResponseDataJasonWrapper;",
        "",
        "data",
        "Lcom/motorola/feedback/logrequest/survey/SurveyResponseData;",
        "(Lcom/motorola/feedback/logrequest/survey/SurveyResponseData;)V",
        "questionId",
        "",
        "getQuestionId",
        "()Ljava/lang/String;",
        "responseChoices",
        "",
        "Lcom/motorola/feedback/logrequest/survey/ResponseChoiceJsonWrapper;",
        "type",
        "getType",
        "getChoices",
        "setChoices",
        "",
        "answers",
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
.field private final questionId:Ljava/lang/String;

.field private responseChoices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "choices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/feedback/logrequest/survey/ResponseChoiceJsonWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/motorola/feedback/logrequest/survey/SurveyResponseData;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/motorola/feedback/logrequest/survey/SurveyResponseData;->getQuestionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/feedback/scheduler/SurveyResponseDataJasonWrapper;->questionId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/motorola/feedback/logrequest/survey/SurveyResponseData;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/feedback/scheduler/SurveyResponseDataJasonWrapper;->type:Ljava/lang/String;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/feedback/scheduler/SurveyResponseDataJasonWrapper;->responseChoices:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lcom/motorola/feedback/logrequest/survey/SurveyResponseData;->getChoices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/feedback/logrequest/survey/ResponseChoice;

    new-instance v2, Lcom/motorola/feedback/logrequest/survey/ResponseChoiceJsonWrapper;

    invoke-direct {v2, v1}, Lcom/motorola/feedback/logrequest/survey/ResponseChoiceJsonWrapper;-><init>(Lcom/motorola/feedback/logrequest/survey/ResponseChoice;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/motorola/feedback/scheduler/SurveyResponseDataJasonWrapper;->responseChoices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getChoices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/feedback/logrequest/survey/ResponseChoiceJsonWrapper;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getQuestionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/SurveyResponseDataJasonWrapper;->questionId:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/scheduler/SurveyResponseDataJasonWrapper;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final setChoices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/feedback/logrequest/survey/ResponseChoiceJsonWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "answers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/feedback/scheduler/SurveyResponseDataJasonWrapper;->responseChoices:Ljava/util/List;

    return-void
.end method
