.class public final Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;
.super Ljava/lang/Object;
.source "ActivityRequestHistoryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appBar:Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;

.field public final navHostFragmentRequest:Landroidx/fragment/app/FragmentContainerView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;Landroidx/fragment/app/FragmentContainerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "appBar",
            "navHostFragmentRequest"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;->appBar:Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;

    iput-object p3, p0, Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;->navHostFragmentRequest:Landroidx/fragment/app/FragmentContainerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    sget v0, Lcom/motorola/feedback/lib/R$id;->appBar:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;->bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;

    move-result-object v0

    sget v1, Lcom/motorola/feedback/lib/R$id;->nav_host_fragment_request:I

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v1, p0, v0, v2}, Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;Landroidx/fragment/app/FragmentContainerView;)V

    return-object v1

    :cond_0
    move v0, v1

    :cond_1
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;
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

    invoke-static {p0, v0, v1}, Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;
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

    sget v0, Lcom/motorola/feedback/lib/R$layout;->activity_request_history:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;->bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/lib/databinding/ActivityRequestHistoryBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
