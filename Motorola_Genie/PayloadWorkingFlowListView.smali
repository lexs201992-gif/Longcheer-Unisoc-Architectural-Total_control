.class public Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;
.super Landroid/widget/LinearLayout;
.source "PayloadWorkingFlowListView.java"

# interfaces
.implements Lcom/motorola/genie/search/widget/OnDecisionNodeClickedListener;


# instance fields
.field private binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

.field private context:Landroid/content/Context;

.field private sourcePage:Ljava/lang/String;

.field private viewModel:Lcom/motorola/genie/search/network/MoliSearchViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00c0

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iput-object v0, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    return-void
.end method


# virtual methods
.method public getFlowCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;

    invoke-virtual {v0}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;->getFlowCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;

    invoke-virtual {v0}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;->getItemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getProcessCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;

    invoke-virtual {v0}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;->getProcessCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hardwareTestDone(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;

    invoke-virtual {v0, p1}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;->hardwareTestDone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onDecisionNodeClicked$0$PayloadWorkingFlowListView(Lcom/motorola/genie/search/network/SolutionRequest;Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->onDecisionNodeClicked(Lcom/motorola/genie/search/network/SolutionRequest;Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;)V

    iget-object p1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object p1, p1, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object p1, p1, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->errorDev:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onDecisionNodeClicked$1$PayloadWorkingFlowListView(Lcom/motorola/genie/search/network/SolutionRequest;Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;Lcom/motorola/genie/search/network/SolutionResponse;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->setPageEnabled(Z)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    iget-object v2, p3, Lcom/motorola/genie/search/network/SolutionResponse;->data:Lcom/motorola/genie/search/network/SolutionResponse$Solution;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p3, Lcom/motorola/genie/search/network/SolutionResponse;->data:Lcom/motorola/genie/search/network/SolutionResponse$Solution;

    iget-object p1, p1, Lcom/motorola/genie/search/network/SolutionResponse$Solution;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/genie/search/network/SolutionResponse$Message;

    iget-object p3, p2, Lcom/motorola/genie/search/network/SolutionResponse$Message;->type:Ljava/lang/String;

    const-string v2, "jsonData"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p2, Lcom/motorola/genie/search/network/SolutionResponse$Message;->actualPayloads:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/motorola/genie/search/payload/WorkingFlowPayload;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object p3, p3, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p2, p2, Lcom/motorola/genie/search/network/SolutionResponse$Message;->actualPayloads:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/genie/search/payload/WorkingFlowPayload;

    iget-object p3, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->sourcePage:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->setContent(Lcom/motorola/genie/search/payload/WorkingFlowPayload;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "item count: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object p3, p3, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object p3, p3, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p3, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object p3, p3, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->errorDev:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p3, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object p3, p3, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->btnRetry:Landroid/widget/TextView;

    new-instance v0, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadWorkingFlowListView$TzU0iIW2KFzEc-k9jRiYm4mYrZA;

    invoke-direct {v0, p0, p1, p2}, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadWorkingFlowListView$TzU0iIW2KFzEc-k9jRiYm4mYrZA;-><init>(Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;Lcom/motorola/genie/search/network/SolutionRequest;Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDecisionNodeClicked(Lcom/motorola/genie/search/network/SolutionRequest;Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "itemView"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v2, v2, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v2, v2, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v2, v2, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-le v2, v1, :cond_2

    iget-object v3, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v3, v3, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->errorDev:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->setPageEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->viewModel:Lcom/motorola/genie/search/network/MoliSearchViewModel;

    invoke-virtual {v0, p1}, Lcom/motorola/genie/search/network/MoliSearchViewModel;->getServiceBrainSolution(Lcom/motorola/genie/search/network/SolutionRequest;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->context:Landroid/content/Context;

    check-cast v1, Lcom/motorola/genie/search/MoliSearchActivity;

    new-instance v2, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadWorkingFlowListView$VuZU-Rxvdx6BGOyS3azU6b4Ug9s;

    invoke-direct {v2, p0, p1, p2}, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadWorkingFlowListView$VuZU-Rxvdx6BGOyS3azU6b4Ug9s;-><init>(Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;Lcom/motorola/genie/search/network/SolutionRequest;Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setContent(Lcom/motorola/genie/search/payload/WorkingFlowPayload;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "payload",
            "sourcePage"
        }
    .end annotation

    iput-object p2, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->sourcePage:Ljava/lang/String;

    new-instance v0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;->setListener(Lcom/motorola/genie/search/widget/OnDecisionNodeClickedListener;)V

    invoke-virtual {v0, p1, p2}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;->setContent(Lcom/motorola/genie/search/payload/WorkingFlowPayload;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object p1, p1, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setPageEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->nodeList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;

    invoke-virtual {v1, p1}, Lcom/motorola/genie/search/widget/PayloadWorkingFlowItemView;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->context:Landroid/content/Context;

    check-cast v0, Lcom/motorola/genie/search/MoliSearchActivity;

    invoke-virtual {v0, p1}, Lcom/motorola/genie/search/MoliSearchActivity;->setServiceBrainButtonEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadWorkingFlowListBinding;->btnRetry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setViewModel(Lcom/motorola/genie/search/network/MoliSearchViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewModel"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/genie/search/widget/PayloadWorkingFlowListView;->viewModel:Lcom/motorola/genie/search/network/MoliSearchViewModel;

    return-void
.end method
