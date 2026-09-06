.class public final Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;
.super Ljava/lang/Object;
.source "SpinnerCheckTextViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/CheckedTextView;

.field public final text1:Landroid/widget/CheckedTextView;


# direct methods
.method private constructor <init>(Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootView",
            "text1"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;->rootView:Landroid/widget/CheckedTextView;

    iput-object p2, p0, Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;->text1:Landroid/widget/CheckedTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    if-eqz p0, :cond_0

    check-cast p0, Landroid/widget/CheckedTextView;

    new-instance v0, Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;

    invoke-direct {v0, p0, p0}, Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;-><init>(Landroid/widget/CheckedTextView;Landroid/widget/CheckedTextView;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;
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

    invoke-static {p0, v0, v1}, Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;
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

    sget v0, Lcom/motorola/feedback/lib/R$layout;->spinner_check_text_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;->bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;->getRoot()Landroid/widget/CheckedTextView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/CheckedTextView;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/lib/databinding/SpinnerCheckTextViewBinding;->rootView:Landroid/widget/CheckedTextView;

    return-object p0
.end method
