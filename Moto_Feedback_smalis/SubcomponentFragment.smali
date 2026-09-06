.class public final Lcom/motorola/feedback/ui/SubcomponentFragment;
.super Lcom/motorola/feedback/ui/RateAndFeedbackFragment;
.source "SubcomponentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomponentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomponentFragment.kt\ncom/motorola/feedback/ui/SubcomponentFragment\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,134:1\n215#2,2:135\n*S KotlinDebug\n*F\n+ 1 SubcomponentFragment.kt\ncom/motorola/feedback/ui/SubcomponentFragment\n*L\n97#1:135,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0014J\u0008\u0010\u0013\u001a\u00020\rH\u0014J\u0008\u0010\u0014\u001a\u00020\rH\u0002J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\rH\u0016J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u000fH\u0016R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006 "
    }
    d2 = {
        "Lcom/motorola/feedback/ui/SubcomponentFragment;",
        "Lcom/motorola/feedback/ui/RateAndFeedbackFragment;",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "subcomponentBinding",
        "Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;",
        "getSubcomponentBinding",
        "()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;",
        "setSubcomponentBinding",
        "(Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;)V",
        "adjustKeyboardViews",
        "",
        "focused",
        "",
        "animate",
        "getRequest",
        "Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;",
        "initView",
        "moduleContinue",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "ratingSelected",
        "selected",
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

.field public subcomponentBinding:Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;


# direct methods
.method public static synthetic $r8$lambda$7zgQ2Y9eWH0-NakUcUa9_BjkK98(Lcom/motorola/feedback/ui/SubcomponentFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/feedback/ui/SubcomponentFragment;->initView$lambda$2(Lcom/motorola/feedback/ui/SubcomponentFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PmfWuBWIeLQ_pLBiIXQhrhICuHg(Lcom/motorola/feedback/ui/SubcomponentFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/feedback/ui/SubcomponentFragment;->initView$lambda$0(Lcom/motorola/feedback/ui/SubcomponentFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qwIkIu6X6XV7bYwJZZOVCtiHnho(Lcom/motorola/feedback/ui/SubcomponentFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/feedback/ui/SubcomponentFragment;->initView$lambda$4(Lcom/motorola/feedback/ui/SubcomponentFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/feedback/ui/RateAndFeedbackFragment;-><init>()V

    const-string v0, "SubcomponentFragment"

    iput-object v0, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static final initView$lambda$0(Lcom/motorola/feedback/ui/SubcomponentFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->rateAndFeedbackViewModel:Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;->setInFinalFlow(Z)V

    invoke-direct {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->moduleContinue()V

    return-void
.end method

.method private static final initView$lambda$2(Lcom/motorola/feedback/ui/SubcomponentFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->rateAndFeedbackViewModel:Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    invoke-virtual {p1}, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;->isInFinalFlow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->moduleLayout:Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;

    iget-object p1, p0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->arrowDropExpandLayout:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->expandLayoutGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->collapseLayoutGroup:Landroidx/constraintlayout/widget/Group;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->modContentLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda$4(Lcom/motorola/feedback/ui/SubcomponentFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->rateAndFeedbackViewModel:Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    invoke-virtual {p1}, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;->isInFinalFlow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->moduleLayout:Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;

    iget-object p1, p0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->expandLayoutGroup:Landroidx/constraintlayout/widget/Group;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->arrowDropExpandLayout:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->collapseLayoutGroup:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->modContentLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final moduleContinue()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->moduleLayout:Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;

    iget-object v1, v0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->arrowDropExpandLayout:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->expandLayoutGroup:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object v0, v0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->collapseLayoutGroup:Landroidx/constraintlayout/widget/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/feedback/ui/Animations;->loadFeedbackAnimation(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->feedbackViewInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->feedbackViewInit:Z

    iget-object v0, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->initView(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->setFooter(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->refreshViewButton()V

    :goto_0
    return-void
.end method


# virtual methods
.method public adjustKeyboardViews(ZZ)V
    .locals 0

    return-void
.end method

.method protected getRequest()Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;
    .locals 8

    invoke-super {p0}, Lcom/motorola/feedback/ui/RateAndFeedbackFragment;->getRequest()Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.feedback.transport.request.RateAndFeedbackRequest"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/feedback/transport/request/RateAndFeedbackRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->rateAndFeedbackViewModel:Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    invoke-virtual {v2}, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;->getAllRatedModules()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Lcom/motorola/feedback/transport/request/Subcomponent;

    invoke-direct {v4}, Lcom/motorola/feedback/transport/request/Subcomponent;-><init>()V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "requireContext()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/motorola/feedback/ui/SubcomponentsHelperKt;->getModuleName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/motorola/feedback/transport/request/Subcomponent;->name:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iput v3, v4, Lcom/motorola/feedback/transport/request/Subcomponent;->rating:I

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v0, v1}, Lcom/motorola/feedback/transport/request/RateAndFeedbackRequest;->setSubcomponents(Ljava/util/List;)V

    :cond_1
    check-cast v0, Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;

    return-object v0
.end method

.method public final getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->subcomponentBinding:Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "subcomponentBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initView()V
    .locals 4

    invoke-super {p0}, Lcom/motorola/feedback/ui/RateAndFeedbackFragment;->initView()V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext().applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->moduleLayout:Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;

    const-string v2, "subcomponentBinding.moduleLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->rateAndFeedbackViewModel:Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    const-string v3, "rateAndFeedbackViewModel"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/motorola/feedback/ui/SubcomponentsHelperKt;->setupSubModules(Landroid/content/Context;Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->continueButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/motorola/feedback/ui/SubcomponentFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/ui/SubcomponentFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/feedback/ui/SubcomponentFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->moduleLayout:Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;

    iget-object v0, v0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->expandLayoutOverlay:Landroid/view/View;

    new-instance v1, Lcom/motorola/feedback/ui/SubcomponentFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/ui/SubcomponentFragment$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/feedback/ui/SubcomponentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->moduleLayout:Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;

    iget-object v0, v0, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->collapseLayoutOverlay:Landroid/view/View;

    new-instance v1, Lcom/motorola/feedback/ui/SubcomponentFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/ui/SubcomponentFragment$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/feedback/ui/SubcomponentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/motorola/feedback/lib/R$layout;->fragment_subcomponent:I

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, R.layo\u2026ponent, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    invoke-virtual {p0, p1}, Lcom/motorola/feedback/ui/SubcomponentFragment;->setSubcomponentBinding(Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p2}, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->rateAndFeedbackView:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/motorola/feedback/ui/SubcomponentFragment;->setViewsAndListeners(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->rateAndFeedbackViewModel:Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    invoke-virtual {p1}, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;->populateOlderRatings()V

    iget-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->rateAndFeedbackViewModel:Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    invoke-virtual {p1}, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;->isInFinalFlow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->TAG:Ljava/lang/String;

    const-string p2, "Config change flow"

    invoke-static {p1, p2}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->moduleContinue()V

    :cond_0
    iget-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->TAG:Ljava/lang/String;

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/feedback/ui/RateAndFeedbackFragment;->onDestroyView()V

    return-void
.end method

.method public ratingSelected(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rating selected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/feedback/utils/Logger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->baseLayout:Landroid/widget/ScrollView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/motorola/feedback/ui/SubcomponentFragment;->setScrollDetectListener(Landroid/view/View;)V

    iget-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->rateAndFeedbackViewModel:Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    invoke-virtual {p1}, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;->isInFinalFlow()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/feedback/ui/Animations;->loadModuleAnimation(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->stopScrollListener()V

    iget-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->rateAndFeedbackViewModel:Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    invoke-virtual {p1}, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;->isInFinalFlow()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/feedback/ui/Animations;->unloadModuleAnimation(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->rateAndFeedbackViewModel:Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;->setInFinalFlow(Z)V

    invoke-virtual {p0}, Lcom/motorola/feedback/ui/SubcomponentFragment;->getSubcomponentBinding()Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/feedback/ui/Animations;->unloadFeedbackAnimation(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final setSubcomponentBinding(Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/feedback/ui/SubcomponentFragment;->subcomponentBinding:Lcom/motorola/feedback/lib/databinding/FragmentSubcomponentBinding;

    return-void
.end method
