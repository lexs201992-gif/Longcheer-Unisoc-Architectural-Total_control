.class public final Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;
.super Ljava/lang/Object;
.source "ActivityAboutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final aboutIllustration:Landroid/widget/ImageView;

.field public final appBar:Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;

.field public final constraintLayoutLicenses:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final constraintLayoutVersion:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final internalUserCb:Landroid/widget/CheckBox;

.field public final licenses:Landroid/widget/TextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final versionHead:Landroid/widget/TextView;

.field public final versionInfo:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "aboutIllustration",
            "appBar",
            "constraintLayoutLicenses",
            "constraintLayoutVersion",
            "internalUserCb",
            "licenses",
            "versionHead",
            "versionInfo"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->aboutIllustration:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->appBar:Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;

    iput-object p4, p0, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->constraintLayoutLicenses:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p5, p0, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->constraintLayoutVersion:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p6, p0, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->internalUserCb:Landroid/widget/CheckBox;

    iput-object p7, p0, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->licenses:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->versionHead:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->versionInfo:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    sget v0, Lcom/motorola/feedback/lib/R$id;->about_illustration:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/motorola/feedback/lib/R$id;->appBar:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;->bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;

    move-result-object v5

    sget v0, Lcom/motorola/feedback/lib/R$id;->constraintLayoutLicenses:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    sget v0, Lcom/motorola/feedback/lib/R$id;->constraintLayoutVersion:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/motorola/feedback/lib/R$id;->internal_user_cb:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/CheckBox;

    if-eqz v8, :cond_0

    sget v0, Lcom/motorola/feedback/lib/R$id;->licenses:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/motorola/feedback/lib/R$id;->version_head:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    sget v0, Lcom/motorola/feedback/lib/R$id;->version_info:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    new-instance v0, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    sget v0, Lcom/motorola/feedback/lib/R$layout;->activity_about:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/lib/databinding/ActivityAboutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
