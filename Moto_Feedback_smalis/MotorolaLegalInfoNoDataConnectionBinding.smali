.class public final Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;
.super Ljava/lang/Object;
.source "MotorolaLegalInfoNoDataConnectionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final message:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootView",
            "message"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;->rootView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;->message:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;
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

    check-cast p0, Landroid/widget/TextView;

    new-instance v0, Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;

    invoke-direct {v0, p0, p0}, Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;
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

    invoke-static {p0, v0, v1}, Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;
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

    sget v0, Lcom/motorola/feedback/lib/R$layout;->motorola_legal_info_no_data_connection:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;->bind(Landroid/view/View;)Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;->getRoot()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/lib/databinding/MotorolaLegalInfoNoDataConnectionBinding;->rootView:Landroid/widget/TextView;

    return-object p0
.end method
