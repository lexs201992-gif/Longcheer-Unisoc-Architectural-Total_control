.class public final Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;
.super Lcom/motorola/feedback/logrequest/survey/ui/main/BaseQuestionView;
.source "MultiQnRadioButtonView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiQnRadioButtonView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiQnRadioButtonView.kt\ncom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1855#2,2:109\n*S KotlinDebug\n*F\n+ 1 MultiQnRadioButtonView.kt\ncom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView\n*L\n57#1:109,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u001a\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;",
        "Lcom/motorola/feedback/logrequest/survey/ui/main/BaseQuestionView;",
        "context",
        "Landroid/content/Context;",
        "question",
        "Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;",
        "callback",
        "Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;",
        "answer",
        "",
        "(Landroid/content/Context;Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;Ljava/lang/String;)V",
        "getCallback",
        "()Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;",
        "setCallback",
        "(Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;)V",
        "mRadioGroup",
        "Landroid/widget/RadioGroup;",
        "getMRadioGroup",
        "()Landroid/widget/RadioGroup;",
        "setMRadioGroup",
        "(Landroid/widget/RadioGroup;)V",
        "getSubmittedResponse",
        "Lcom/motorola/feedback/logrequest/survey/SurveyResponseData;",
        "setAnswer",
        "",
        "setQuestionTypeView",
        "setRadioButtons",
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
.field public static final Companion:Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView$Companion;

.field private static final QUESTION_TYPE:Ljava/lang/String; = "radio"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method public static synthetic $r8$lambda$9ObnphIGFCSF42tASHv8ZtTdlWo(Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;Landroid/widget/RadioButton;Lcom/motorola/feedback/logrequest/survey/QuestionChoice;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->setRadioButtons$lambda$4$lambda$3(Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;Landroid/widget/RadioButton;Lcom/motorola/feedback/logrequest/survey/QuestionChoice;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->Companion:Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView$Companion;

    const-string v0, "MultiQnRadioButtonView"

    sput-object v0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "question"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/feedback/logrequest/survey/ui/main/BaseQuestionView;-><init>(Landroid/content/Context;Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->callback:Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;

    return-void
.end method

.method private final setRadioButtons(Landroid/content/Context;Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;)V
    .locals 4

    sget v0, Lcom/motorola/feedback/lib/R$id;->answer_item:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->mRadioGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;->getChoices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/feedback/logrequest/survey/QuestionChoice;

    new-instance v2, Landroid/widget/RadioButton;

    invoke-direct {v2, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/motorola/feedback/lib/R$color;->checkbox_checked:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    new-instance v3, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v2, v1}, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;Landroid/widget/RadioButton;Lcom/motorola/feedback/logrequest/survey/QuestionChoice;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1}, Lcom/motorola/feedback/logrequest/survey/QuestionChoice;->getOption()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/motorola/feedback/logrequest/survey/QuestionChoice;->getChoiceId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setId(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/motorola/feedback/lib/R$dimen;->default_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/RadioButton;->setTextSize(IF)V

    iget-object v1, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->mRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v1, :cond_1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static final setRadioButtons$lambda$4$lambda$3(Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;Landroid/widget/RadioButton;Lcom/motorola/feedback/logrequest/survey/QuestionChoice;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$question"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$rdbtn"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$qnOption"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->callback:Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;->getQuestionId()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/widget/RadioButton;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, v0, v1, p2}, Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;->setAnswer(JLjava/lang/String;)V

    invoke-virtual {p3}, Lcom/motorola/feedback/logrequest/survey/QuestionChoice;->getNextQues()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->callback:Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;

    invoke-virtual {p1}, Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;->getQuestionId()J

    move-result-wide p1

    invoke-virtual {p3}, Lcom/motorola/feedback/logrequest/survey/QuestionChoice;->getNextQues()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;->show(JLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/motorola/feedback/logrequest/survey/QuestionChoice;->getNextQues()Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->callback:Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;

    invoke-virtual {p1}, Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;->getQuestionId()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;->hide(J)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->callback:Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;

    return-object p0
.end method

.method public final getMRadioGroup()Landroid/widget/RadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method public getSubmittedResponse()Lcom/motorola/feedback/logrequest/survey/SurveyResponseData;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->mRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->getMQuestion()Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;->getChoices()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/feedback/logrequest/survey/QuestionChoice;

    invoke-virtual {v3}, Lcom/motorola/feedback/logrequest/survey/QuestionChoice;->getChoiceId()I

    move-result v4

    if-ne v4, v1, :cond_0

    sget-object v4, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/motorola/feedback/logrequest/survey/QuestionChoice;->getOption()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "matched id "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on submit button with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/motorola/feedback/logrequest/survey/ResponseChoice;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/motorola/feedback/logrequest/survey/QuestionChoice;->getOption()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/motorola/feedback/logrequest/survey/ResponseChoice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/motorola/feedback/logrequest/survey/SurveyResponseData;

    invoke-virtual {p0}, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->getMQuestion()Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;->getQuestionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v2, "radio"

    invoke-direct {v1, p0, v2}, Lcom/motorola/feedback/logrequest/survey/SurveyResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/motorola/feedback/logrequest/survey/SurveyResponseData;->setChoices(Ljava/util/List;)V

    return-object v1
.end method

.method public setAnswer(Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "question"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    instance-of p1, p1, Lcom/motorola/feedback/logrequest/survey/RadioButtonQuestionType;

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->mRadioGroup:Landroid/widget/RadioGroup;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->TAG:Ljava/lang/String;

    const-string p1, "Not a radio button  question"

    invoke-static {p0, p1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception occured while setting answer for Radio Button"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/motorola/feedback/utils/Logger;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCallback(Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->callback:Lcom/motorola/feedback/logrequest/survey/ui/main/ActionCallback;

    return-void
.end method

.method public final setMRadioGroup(Landroid/widget/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->mRadioGroup:Landroid/widget/RadioGroup;

    return-void
.end method

.method public setQuestionTypeView(Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;)V
    .locals 3

    const-string v0, "question"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/motorola/feedback/logrequest/survey/RadioButtonQuestionType;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/motorola/feedback/lib/R$layout;->single_answer_question:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->setRadioButtons(Landroid/content/Context;Lcom/motorola/feedback/logrequest/survey/BaseQuestionType;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/feedback/logrequest/survey/ui/main/MultiQnRadioButtonView;->TAG:Ljava/lang/String;

    const-string p1, "Not a radio button  question"

    invoke-static {p0, p1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
