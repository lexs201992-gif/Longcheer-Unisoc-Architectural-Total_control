.class public Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "ResumableDownloadRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private checkPointFilePath:Ljava/lang/String;

.field private downloadToFilePath:Ljava/lang/String;

.field private enableCheckPoint:Ljava/lang/Boolean;

.field private objectKey:Ljava/lang/String;

.field private partSize:J

.field private progressListener:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field private range:Lcom/alibaba/sdk/android/oss/model/Range;

.field private requestHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->enableCheckPoint:Ljava/lang/Boolean;

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->partSize:J

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->bucketName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->objectKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->downloadToFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->enableCheckPoint:Ljava/lang/Boolean;

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->partSize:J

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->bucketName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->objectKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->downloadToFilePath:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->enableCheckPoint:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->checkPointFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getCheckPointFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->checkPointFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadToFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->downloadToFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getEnableCheckPoint()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->enableCheckPoint:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPartSize()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->partSize:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->progressListener:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object p0
.end method

.method public getRange()Lcom/alibaba/sdk/android/oss/model/Range;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->range:Lcom/alibaba/sdk/android/oss/model/Range;

    return-object p0
.end method

.method public getRequestHeader()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->requestHeader:Ljava/util/Map;

    return-object p0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->downloadToFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".tmp"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setCheckPointFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->checkPointFilePath:Ljava/lang/String;

    return-void
.end method

.method public setDownloadToFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->downloadToFilePath:Ljava/lang/String;

    return-void
.end method

.method public setEnableCheckPoint(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->enableCheckPoint:Ljava/lang/Boolean;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setPartSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->partSize:J

    return-void
.end method

.method public setProgressListener(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->progressListener:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setRange(Lcom/alibaba/sdk/android/oss/model/Range;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->range:Lcom/alibaba/sdk/android/oss/model/Range;

    return-void
.end method

.method public setRequestHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->requestHeader:Ljava/util/Map;

    return-void
.end method
