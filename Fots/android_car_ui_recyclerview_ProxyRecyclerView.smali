.class public final Lcom/android/car/ui/recyclerview/ProxyRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ProxyRecyclerView.java"


# instance fields
.field private mTarget:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/ProxyRecyclerView;->mTarget:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    return-void
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/ProxyRecyclerView;->mTarget:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/ProxyRecyclerView;->mTarget:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/ProxyRecyclerView;->mTarget:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public invalidateItemDecorations()V
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/ProxyRecyclerView;->mTarget:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/ProxyRecyclerView;->mTarget:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/ProxyRecyclerView;->mTarget:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-interface {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
