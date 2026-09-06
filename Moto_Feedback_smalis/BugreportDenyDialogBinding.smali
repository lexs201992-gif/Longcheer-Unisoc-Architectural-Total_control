.class public abstract Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "BugreportDenyDialogBinding.java"


# instance fields
.field public final brBack:Landroid/widget/Button;

.field public final brContinue:Landroid/widget/Button;

.field protected mFeedbackViewModel:Lcom/motorola/feedback/viewmodels/BaseViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final message:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "brBack",
            "brContinue",
            "message"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;->brBack:Landroid/widget/Button;

    iput-object p5, p0, Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;->brContinue:Landroid/widget/Button;

    iput-object p6, p0, Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;->message:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/motorola/feedback/lib/R$layout;->bugreport_deny_dialog:I

    invoke-static {p1, p0, v0}, Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/motorola/feedback/lib/R$layout;->bugreport_deny_dialog:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/motorola/feedback/lib/R$layout;->bugreport_deny_dialog:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;

    return-object p0
.end method


# virtual methods
.method public getFeedbackViewModel()Lcom/motorola/feedback/viewmodels/BaseViewModel;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/lib/databinding/BugreportDenyDialogBinding;->mFeedbackViewModel:Lcom/motorola/feedback/viewmodels/BaseViewModel;

    return-object p0
.end method

.method public abstract setFeedbackViewModel(Lcom/motorola/feedback/viewmodels/BaseViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "feedbackViewModel"
        }
    .end annotation
.end method
