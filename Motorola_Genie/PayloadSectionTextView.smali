.class public Lcom/motorola/genie/search/widget/PayloadSectionTextView;
.super Landroid/widget/LinearLayout;
.source "PayloadSectionTextView.java"


# instance fields
.field private binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;

.field private context:Landroid/content/Context;


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

    invoke-direct {p0, p1, v0}, Lcom/motorola/genie/search/widget/PayloadSectionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/genie/search/widget/PayloadSectionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-object p1, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextView;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/genie/search/widget/PayloadSectionTextView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00bc

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;

    iput-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateContent$0$PayloadSectionTextView(IZ)V
    .locals 1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    if-eq p2, p1, :cond_0

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;

    invoke-virtual {v0}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->fold()V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateContent(Lcom/motorola/genie/search/network/SolutionResponse$Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/motorola/genie/search/network/SolutionResponse$Message;->actualPayloads:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/genie/search/payload/SectionTextPayload;

    iget-object v1, v1, Lcom/motorola/genie/search/payload/SectionTextPayload;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/motorola/genie/search/network/SolutionResponse$Message;->actualPayloads:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/search/payload/Payload;

    check-cast v0, Lcom/motorola/genie/search/payload/SectionTextPayload;

    iget-object v0, v0, Lcom/motorola/genie/search/payload/SectionTextPayload;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/genie/search/payload/SectionTextPayload$Section;

    new-instance v2, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;

    iget-object v3, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextView;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;

    iget-object v4, v4, Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;-><init>(Landroid/content/Context;I)V

    iget-object v3, v1, Lcom/motorola/genie/search/payload/SectionTextPayload$Section;->sectionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->setTitle(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/motorola/genie/search/payload/SectionTextPayload$Section;->secitonText:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->setContent(Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadSectionTextView$P_jL_2bQAwQl5_qhArIOAnvPWoY;

    invoke-direct {v1, p0}, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadSectionTextView$P_jL_2bQAwQl5_qhArIOAnvPWoY;-><init>(Lcom/motorola/genie/search/widget/PayloadSectionTextView;)V

    invoke-virtual {v2, v1}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->setOnSectionFoldListener(Lcom/motorola/genie/search/widget/PayloadSectionTextContentView$OnSectionFoldListener;)V

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadSectionTextBinding;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method
