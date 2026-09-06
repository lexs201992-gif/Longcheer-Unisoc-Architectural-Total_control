.class public Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/ApiLevelDependentRootViewFinderFactory;
.super Ljava/lang/Object;
.source "ApiLevelDependentRootViewFinderFactory.java"

# interfaces
.implements Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/RootViewFinderFactory;


# instance fields
.field private osInfo:Lcom/logmein/rescuesdk/internal/app/OsInfo;


# direct methods
.method public constructor <init>(Lcom/logmein/rescuesdk/internal/app/OsInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/ApiLevelDependentRootViewFinderFactory;->osInfo:Lcom/logmein/rescuesdk/internal/app/OsInfo;

    return-void
.end method


# virtual methods
.method public create()Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/RootViewFinder;
    .locals 2

    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/ApiLevelDependentRootViewFinderFactory;->osInfo:Lcom/logmein/rescuesdk/internal/app/OsInfo;

    invoke-interface {v0}, Lcom/logmein/rescuesdk/internal/app/OsInfo;->getApiLevel()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Api19RootViewFinder;

    invoke-direct {v0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Api19RootViewFinder;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/ApiLevelDependentRootViewFinderFactory;->osInfo:Lcom/logmein/rescuesdk/internal/app/OsInfo;

    invoke-interface {v0}, Lcom/logmein/rescuesdk/internal/app/OsInfo;->getApiLevel()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Api17RootViewFinder;

    invoke-direct {v0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Api17RootViewFinder;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Api8RootViewFinder;

    invoke-direct {v0}, Lcom/logmein/rescuesdk/internal/streaming/inapp/viewmanager/Api8RootViewFinder;-><init>()V

    return-object v0
.end method
