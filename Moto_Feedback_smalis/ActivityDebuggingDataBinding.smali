.class public final Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;
.super Ljava/lang/Object;
.source "ActivityDebuggingDataBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appBar:Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;

.field public final constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final fragmentContainer:Landroid/widget/FrameLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "appBar",
            "constraintLayout",
            "fragmentContainer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;->appBar:Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;

    iput-object p3, p0, Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;->fragmentContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;
    .locals 4
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

    move-object v1, p0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v2, Lcom/motorola/feedback/lib/R$id;->fragment_container:I

    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    new-instance p0, Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;

    invoke-direct {p0, v1, v0, v1, v3}, Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/motorola/feedback/lib/databinding/BaseAppBarBinding;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;)V

    return-object p0

    :cond_0
    move v0, v2

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;
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

    invoke-static {p0, v0, v1}, Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;
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

    sget v0, Lcom/motorola/feedback/lib/R$layout;->activity_debugging_data:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;->bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/lib/databinding/ActivityDebuggingDataBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
