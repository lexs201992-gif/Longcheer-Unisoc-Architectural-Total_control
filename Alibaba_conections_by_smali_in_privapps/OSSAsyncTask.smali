.class public Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
.super Ljava/lang/Object;
.source "OSSAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/sdk/android/oss/model/OSSResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile canceled:Z

.field private context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;-><init>()V

    iput-object p0, v0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    iput-object p1, v0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->canceled:Z

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->cancel()V

    :cond_0
    return-void
.end method

.method public getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/OSSResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/ClientException;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alibaba/sdk/android/oss/ServiceException;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alibaba/sdk/android/oss/ServiceException;

    throw p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected exception!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p0, Lcom/alibaba/sdk/android/oss/ClientException;

    throw p0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " InterruptedException and message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->canceled:Z

    return p0
.end method

.method public isCompleted()Z
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    return p0
.end method

.method public waitUntilFinished()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->future:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
