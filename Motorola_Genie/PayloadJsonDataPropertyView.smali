.class public Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;
.super Landroid/widget/LinearLayout;
.source "PayloadJsonDataPropertyView.java"


# instance fields
.field private binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataPropertyBinding;

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

    invoke-direct {p0, p1, v0}, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-object p1, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00b9

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/databinding/ViewPayloadJsonDataPropertyBinding;

    iput-object v0, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;->binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataPropertyBinding;

    return-void
.end method


# virtual methods
.method public setContent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;->binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataPropertyBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadJsonDataPropertyBinding;->content:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;->binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataPropertyBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadJsonDataPropertyBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
