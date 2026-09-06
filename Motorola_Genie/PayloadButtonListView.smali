.class public Lcom/motorola/genie/search/widget/PayloadButtonListView;
.super Landroid/widget/LinearLayout;
.source "PayloadButtonListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/genie/search/widget/PayloadButtonListView$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/motorola/genie/databinding/ViewPayloadButtonListBinding;

.field private context:Landroid/content/Context;

.field private listener:Lcom/motorola/genie/search/widget/PayloadButtonListView$OnButtonClickListener;


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

    invoke-direct {p0, p1, v0}, Lcom/motorola/genie/search/widget/PayloadButtonListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/genie/search/widget/PayloadButtonListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-object p1, p0, Lcom/motorola/genie/search/widget/PayloadButtonListView;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/genie/search/widget/PayloadButtonListView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadButtonListView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00b6

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/databinding/ViewPayloadButtonListBinding;

    iput-object v0, p0, Lcom/motorola/genie/search/widget/PayloadButtonListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadButtonListBinding;

    return-void
.end method


# virtual methods
.method public setOnButtonClickListener(Lcom/motorola/genie/search/widget/PayloadButtonListView$OnButtonClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/genie/search/widget/PayloadButtonListView;->listener:Lcom/motorola/genie/search/widget/PayloadButtonListView$OnButtonClickListener;

    return-void
.end method

.method public updateButtons(Ljava/util/List;)V
    .locals 4
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

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/genie/search/payload/Payload;

    new-instance v2, Lcom/motorola/genie/search/widget/PayloadButtonView;

    iget-object v3, p0, Lcom/motorola/genie/search/widget/PayloadButtonListView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/motorola/genie/search/widget/PayloadButtonView;-><init>(Landroid/content/Context;)V

    check-cast v1, Lcom/motorola/genie/search/payload/ButtonPayload;

    invoke-virtual {v2, v1}, Lcom/motorola/genie/search/widget/PayloadButtonView;->updateButtons(Lcom/motorola/genie/search/payload/ButtonPayload;)V

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadButtonListView;->listener:Lcom/motorola/genie/search/widget/PayloadButtonListView$OnButtonClickListener;

    invoke-virtual {v2, v1}, Lcom/motorola/genie/search/widget/PayloadButtonView;->setOnButtonClickListener(Lcom/motorola/genie/search/widget/PayloadButtonListView$OnButtonClickListener;)V

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadButtonListView;->binding:Lcom/motorola/genie/databinding/ViewPayloadButtonListBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadButtonListBinding;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
