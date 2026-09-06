.class public Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;
.super Ljava/lang/Object;
.source "OSSRetryHandler.java"


# instance fields
.field private maxRetryCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->maxRetryCount:I

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->setMaxRetryCount(I)V

    return-void
.end method


# virtual methods
.method public setMaxRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->maxRetryCount:I

    return-void
.end method

.method public shouldRetry(Ljava/lang/Exception;I)Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler;->maxRetryCount:I

    if-lt p2, p0, :cond_0

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object p0

    :cond_0
    instance-of p0, p1, Lcom/alibaba/sdk/android/oss/ClientException;

    if-eqz p0, :cond_4

    move-object p0, p1

    check-cast p0, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/ClientException;->isCanceledException()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    instance-of p2, p0, Ljava/io/InterruptedIOException;

    if-eqz p2, :cond_2

    instance-of p2, p0, Ljava/net/SocketTimeoutException;

    if-nez p2, :cond_2

    const-string p0, "[shouldRetry] - is interrupted!"

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object p0

    :cond_2
    instance-of p0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "shouldRetry - "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object p0

    :cond_4
    instance-of p0, p1, Lcom/alibaba/sdk/android/oss/ServiceException;

    if-eqz p0, :cond_7

    check-cast p1, Lcom/alibaba/sdk/android/oss/ServiceException;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RequestTimeTooSkewed"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldFixedTimeSkewedAndRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object p0

    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result p0

    const/16 p1, 0x1f4

    if-lt p0, p1, :cond_6

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object p0

    :cond_6
    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object p0

    :cond_7
    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object p0
.end method

.method public timeInterval(ILcom/alibaba/sdk/android/oss/internal/OSSRetryType;)J
    .locals 2

    sget-object p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryHandler$1;->$SwitchMap$com$alibaba$sdk$android$oss$internal$OSSRetryType:[I

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double p0, p1

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-long p0, p0

    const-wide/16 v0, 0xc8

    mul-long/2addr p0, v0

    return-wide p0
.end method
