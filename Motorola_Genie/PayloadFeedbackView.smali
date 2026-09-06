.class public Lcom/motorola/genie/search/widget/PayloadFeedbackView;
.super Landroid/widget/LinearLayout;
.source "PayloadFeedbackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/genie/search/widget/PayloadFeedbackView$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/motorola/genie/databinding/ViewPayloadFeedbackBinding;

.field private context:Landroid/content/Context;

.field private listener:Lcom/motorola/genie/search/widget/PayloadFeedbackView$OnButtonClickListener;


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

    invoke-direct {p0, p1, v0}, Lcom/motorola/genie/search/widget/PayloadFeedbackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/genie/search/widget/PayloadFeedbackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-object p1, p0, Lcom/motorola/genie/search/widget/PayloadFeedbackView;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/genie/search/widget/PayloadFeedbackView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadFeedbackView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00b7

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/databinding/ViewPayloadFeedbackBinding;

    iput-object v0, p0, Lcom/motorola/genie/search/widget/PayloadFeedbackView;->binding:Lcom/motorola/genie/databinding/ViewPayloadFeedbackBinding;

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateButtons$0$PayloadFeedbackView(Lcom/motorola/genie/search/payload/ButtonPayload;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/motorola/genie/search/widget/PayloadFeedbackView;->listener:Lcom/motorola/genie/search/widget/PayloadFeedbackView$OnButtonClickListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/motorola/genie/search/widget/PayloadFeedbackView$OnButtonClickListener;->onClicked(Lcom/motorola/genie/search/payload/ButtonPayload;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateButtons$1$PayloadFeedbackView(Lcom/motorola/genie/search/payload/ButtonPayload;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/motorola/genie/search/widget/PayloadFeedbackView;->listener:Lcom/motorola/genie/search/widget/PayloadFeedbackView$OnButtonClickListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/motorola/genie/search/widget/PayloadFeedbackView$OnButtonClickListener;->onClicked(Lcom/motorola/genie/search/payload/ButtonPayload;)V

    :cond_0
    return-void
.end method

.method public setOnButtonClickListener(Lcom/motorola/genie/search/widget/PayloadFeedbackView$OnButtonClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/genie/search/widget/PayloadFeedbackView;->listener:Lcom/motorola/genie/search/widget/PayloadFeedbackView$OnButtonClickListener;

    return-void
.end method

.method public updateButtons(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/genie/search/payload/Payload;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/search/payload/Payload;

    check-cast v0, Lcom/motorola/genie/search/payload/ButtonPayload;

    iget-object v1, v0, Lcom/motorola/genie/search/payload/ButtonPayload;->buttonType:Ljava/lang/String;

    const-string v2, "2003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadFeedbackView;->binding:Lcom/motorola/genie/databinding/ViewPayloadFeedbackBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadFeedbackBinding;->helpful:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/motorola/genie/search/payload/ButtonPayload;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadFeedbackView;->binding:Lcom/motorola/genie/databinding/ViewPayloadFeedbackBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadFeedbackBinding;->helpful:Landroid/widget/TextView;

    new-instance v2, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadFeedbackView$sD8lCdybaSOcK76otE2LdMHZyxE;

    invoke-direct {v2, p0, v0}, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadFeedbackView$sD8lCdybaSOcK76otE2LdMHZyxE;-><init>(Lcom/motorola/genie/search/widget/PayloadFeedbackView;Lcom/motorola/genie/search/payload/ButtonPayload;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, v0, Lcom/motorola/genie/search/payload/ButtonPayload;->buttonType:Ljava/lang/String;

    const-string v2, "2004"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadFeedbackView;->binding:Lcom/motorola/genie/databinding/ViewPayloadFeedbackBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadFeedbackBinding;->unhelpful:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/motorola/genie/search/payload/ButtonPayload;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadFeedbackView;->binding:Lcom/motorola/genie/databinding/ViewPayloadFeedbackBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadFeedbackBinding;->unhelpful:Landroid/widget/TextView;

    new-instance v2, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadFeedbackView$iYiP3T2WAll4cVghAoTYSK6oCqQ;

    invoke-direct {v2, p0, v0}, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadFeedbackView$iYiP3T2WAll4cVghAoTYSK6oCqQ;-><init>(Lcom/motorola/genie/search/widget/PayloadFeedbackView;Lcom/motorola/genie/search/payload/ButtonPayload;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    return-void
.end method
