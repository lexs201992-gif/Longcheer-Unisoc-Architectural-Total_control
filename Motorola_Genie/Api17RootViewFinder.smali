.class public Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Api17RootViewFinder;
.super Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/WindowManagerGlobalRootViewFinder;
.source "Api17RootViewFinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/WindowManagerGlobalRootViewFinder;-><init>()V

    return-void
.end method


# virtual methods
.method public getRootViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Api17RootViewFinder;->getRootViewsObjectFromWindowManagerGlobal()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, [Landroid/view/View;

    check-cast v0, [Landroid/view/View;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
