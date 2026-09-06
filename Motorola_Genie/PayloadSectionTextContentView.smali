.class public Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;
.super Landroid/widget/LinearLayout;
.source "PayloadSectionTextContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/genie/search/widget/PayloadSectionTextContentView$OnSectionFoldListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

.field private context:Landroid/content/Context;

.field private index:I

.field private listener:Lcom/motorola/genie/search/widget/PayloadSectionTextContentView$OnSectionFoldListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "i"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p2, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->index:I

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

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-object p1, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;)Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;
    .locals 0

    iget-object p0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    return-object p0
.end method

.method private initView()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00bd

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iput-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->title:Landroid/widget/TextView;

    new-instance v1, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadSectionTextContentView$jk3RNLHojcvZj0phV19nui3HDBs;

    invoke-direct {v1, p0}, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadSectionTextContentView$jk3RNLHojcvZj0phV19nui3HDBs;-><init>(Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->expand:Landroid/widget/ImageView;

    new-instance v1, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadSectionTextContentView$jCXUry90o2vhCWgO-9okQsQU1fs;

    invoke-direct {v1, p0}, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadSectionTextContentView$jCXUry90o2vhCWgO-9okQsQU1fs;-><init>(Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public fold()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->expand:Landroid/widget/ImageView;

    const v1, 0x7f080174

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->content:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->listener:Lcom/motorola/genie/search/widget/PayloadSectionTextContentView$OnSectionFoldListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->index:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView$OnSectionFoldListener;->onFold(IZ)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$0$PayloadSectionTextContentView(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object p1, p1, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->content:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->fold()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->unfold()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initView$1$PayloadSectionTextContentView(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object p1, p1, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->content:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->fold()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->unfold()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setContent$2$PayloadSectionTextContentView(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    iget-object v1, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView$1;-><init>(Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;Landroid/graphics/drawable/LevelListDrawable;)V

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    const-string v0, "<p><br/></p>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "<span "

    const-string v2, "<CustomTag "

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</span>"

    const-string v2, "</CustomTag>"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->content:Landroid/widget/TextView;

    new-instance v2, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadSectionTextContentView$YJTrlBFXg0sbBt0huyGl56oCUmk;

    invoke-direct {v2, p0}, Lcom/motorola/genie/search/widget/-$$Lambda$PayloadSectionTextContentView$YJTrlBFXg0sbBt0huyGl56oCUmk;-><init>(Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;)V

    new-instance v3, Lcom/motorola/genie/search/HtmlTagHandler;

    invoke-direct {v3}, Lcom/motorola/genie/search/HtmlTagHandler;-><init>()V

    invoke-static {p1, v1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object p1, p1, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object p1, p1, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->content:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->content:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v1, p1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnSectionFoldListener(Lcom/motorola/genie/search/widget/PayloadSectionTextContentView$OnSectionFoldListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->listener:Lcom/motorola/genie/search/widget/PayloadSectionTextContentView$OnSectionFoldListener;

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

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public unfold()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->expand:Landroid/widget/ImageView;

    const v1, 0x7f080173

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->binding:Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;

    iget-object v0, v0, Lcom/motorola/genie/databinding/ViewPayloadSectionTextContentBinding;->content:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->listener:Lcom/motorola/genie/search/widget/PayloadSectionTextContentView$OnSectionFoldListener;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView;->index:I

    invoke-interface {v0, v2, v1}, Lcom/motorola/genie/search/widget/PayloadSectionTextContentView$OnSectionFoldListener;->onFold(IZ)V

    :cond_0
    return-void
.end method
