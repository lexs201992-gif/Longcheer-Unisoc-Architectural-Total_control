.class public Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
.super Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
.source "ResumableUploadResult.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;->setRequestId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getResponseHeader()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;->setResponseHeader(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;->setStatusCode(I)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getClientCRC()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;->setClientCRC(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getServerCRC()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;->setServerCRC(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;->setETag(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;->setLocation(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;->getServerCallbackReturnBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;->setServerCallbackReturnBody(Ljava/lang/String;)V

    return-void
.end method
