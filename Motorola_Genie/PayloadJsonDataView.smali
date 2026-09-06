.class public Lcom/motorola/genie/search/widget/PayloadJsonDataView;
.super Landroid/widget/LinearLayout;
.source "PayloadJsonDataView.java"


# instance fields
.field private binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;

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

    invoke-direct {p0, p1, v0}, Lcom/motorola/genie/search/widget/PayloadJsonDataView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/genie/search/widget/PayloadJsonDataView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-object p1, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00b8

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;

    iput-object v0, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateProperties$0$PayloadJsonDataView(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateProperties(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "linkedTreeMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "productShoppingUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "productImageUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;->productImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_3
    const-string v2, "productShown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string v2, "productUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;->learnMore:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;

    iget-object v1, v1, Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;->learnMore:Landroid/widget/TextView;

    new-instance v3, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadJsonDataView$diN0c3I63GqSRXX5y7-30k3mL80;

    invoke-direct {v3, p0, v0}, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadJsonDataView$diN0c3I63GqSRXX5y7-30k3mL80;-><init>(Lcom/motorola/genie/search/widget/PayloadJsonDataView;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;->learnMore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;

    iget-object v2, v2, Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;->learnMore:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;

    iget-object v3, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/motorola/genie/search/widget/PayloadJsonDataPropertyView;->setContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadJsonDataView;->binding:Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadJsonDataBinding;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method
