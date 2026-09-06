.class public final Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository;
.super Ljava/lang/Object;
.source "SurveyQuestionnaireRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository;",
        "",
        "surveyQnsDao",
        "Lcom/motorola/feedback/logrequest/survey/SurveyQuestionDao;",
        "(Lcom/motorola/feedback/logrequest/survey/SurveyQuestionDao;)V",
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
.field public static final Companion:Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository$Companion;

.field private static INSTANCE:Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository;


# instance fields
.field private final surveyQnsDao:Lcom/motorola/feedback/logrequest/survey/SurveyQuestionDao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository;->Companion:Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/feedback/logrequest/survey/SurveyQuestionDao;)V
    .locals 1

    const-string v0, "surveyQnsDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository;->surveyQnsDao:Lcom/motorola/feedback/logrequest/survey/SurveyQuestionDao;

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository;
    .locals 1

    sget-object v0, Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository;->INSTANCE:Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository;)V
    .locals 0

    sput-object p0, Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository;->INSTANCE:Lcom/motorola/feedback/logrequest/survey/SurveyQuestionnaireRepository;

    return-void
.end method
