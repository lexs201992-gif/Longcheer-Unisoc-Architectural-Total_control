.class public Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;
.super Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;
.source "SequenceUploadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlreadyUploadIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCRC64RecordFile:Ljava/io/File;

.field private mFirstPartSize:J

.field private mRecordFile:Ljava/io/File;

.field private mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;",
            "Lcom/alibaba/sdk/android/oss/network/ExecutionContext;",
            "Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->instance(Landroid/content/Context;)Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    return-void
.end method


# virtual methods
.method protected abortThisUpload()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->waitUntilFinished()V

    :cond_0
    return-void
.end method

.method protected checkException()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->abortThisUpload()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCheckCRC64:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getCRC64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCRC64RecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCRC64RecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_2
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCRC64RecordFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_3

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_3
    throw p0

    :cond_4
    :goto_3
    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->checkException()V

    return-void
.end method

.method protected bridge synthetic doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    move-result-object p0

    return-object p0
.end method

.method protected doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->checkCancel()V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartAttr:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartAttr:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFileLength:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFirstPartSize:J

    int-to-long v7, v2

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_0
    move-wide v9, v5

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-wide v11, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFileLength:J

    invoke-interface/range {v7 .. v12}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    :cond_1
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->removeKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v0, "The part size setting is inconsistent with before"

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v0, "The uploading file is inconsistent with before"

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    if-ge v3, v4, :cond_8

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_6

    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFileLength:J

    sub-long/2addr v5, v0

    long-to-int v2, v5

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "upload part readByte : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    int-to-long v5, v2

    add-long/2addr v0, v5

    invoke-virtual {p0, v3, v2, v4}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->uploadPart(III)V

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadException:Ljava/lang/Exception;

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->checkException()V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->completeMultipartUploadResult()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;-><init>(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)V

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_a
    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCRC64RecordFile:Ljava/io/File;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_b
    return-object v1
.end method

.method protected initMultipartUploadId()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadUri:Landroid/net/Uri;

    const-string v3, "r"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    throw p0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCheckCRC64:Z

    if-eqz v2, :cond_3

    const-string v2, "-crc64"

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-sequence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str([B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sequence [initUploadId] - Found record file, uploadid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCheckCRC64:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v0, v1

    :goto_2
    :try_start_3
    invoke-static {v4}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_5

    :goto_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw p0

    :cond_5
    move-object v0, v1

    :goto_5
    const/4 v2, 0x0

    move v3, v2

    :cond_6
    new-instance v4, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v6, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;->setPartNumberMarker(Ljava/lang/Integer;)V

    :cond_7
    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v5, v4, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v4

    :try_start_4
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v5

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->isTruncated()Z

    move-result v6

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->getNextPartNumberMarker()I

    move-result v3

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->getParts()Ljava/util/List;

    move-result-object v5

    move v7, v2

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/sdk/android/oss/model/PartSummary;

    new-instance v9, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v10

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getETag()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setPartSize(J)V

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_8

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/oss/model/PartETag;->getPartNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setCRC64(J)V

    :cond_8
    iget-object v10, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v9, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    iget-object v9, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mAlreadyUploadIndex:Ljava/util/List;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_9

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getSize()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFirstPartSize:J
    :try_end_4
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :catch_2
    move-exception p0

    throw p0

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v6

    const/16 v7, 0x194

    if-ne v6, v7, :cond_b

    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    move v6, v2

    :cond_a
    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->waitUntilFinished()V

    if-nez v6, :cond_6

    goto :goto_7

    :cond_b
    throw v5

    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t create file at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\nPlease make sure the directory exist!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_8
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v3, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v4, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;->isSequential:Z

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_f

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRecordFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_f
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setUploadId(Ljava/lang/String;)V

    return-void
.end method

.method protected processException(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadException:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadException:Ljava/lang/Exception;

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mIsCancel:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mIsCancel:Z

    :cond_2
    return-void
.end method

.method public uploadPart(III)V
    .locals 15

    move-object v7, p0

    move/from16 v0, p1

    move/from16 v8, p2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRunPartTaskCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRunPartTaskCount:I

    invoke-virtual/range {p0 .. p3}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->preUploadPart(III)V

    int-to-long v4, v0

    iget-object v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v2, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v9

    mul-long/2addr v4, v9

    new-array v2, v8, [B

    iget-object v6, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadUri:Landroid/net/Uri;

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    iget-object v6, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadUri:Landroid/net/Uri;

    invoke-virtual {v6, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v10, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J

    invoke-virtual {v10, v2, v9, v8}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_2
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v9, v1

    move-object v11, v10

    move-object v10, v6

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v11, v10

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v11, v10

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v9, v1

    move-object v11, v10

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v11, v1

    :goto_0
    move-object v10, v6

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v11, v1

    :goto_1
    move-object v10, v6

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v9, v1

    move-object v11, v9

    :goto_2
    move-object v10, v6

    goto/16 :goto_7

    :cond_1
    :try_start_3
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v10, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadFile:Ljava/io/File;

    const-string v11, "r"

    invoke-direct {v6, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6, v2, v9, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V
    :try_end_4
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v10, v1

    move-object v11, v10

    move-object v9, v6

    :goto_3
    :try_start_5
    new-instance v12, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;

    iget-object v4, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v4, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    add-int/2addr v0, v3

    invoke-direct {v12, v4, v5, v6, v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-virtual {v12, v2}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setPartContent([B)V

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateBase64Md5([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setMd5Digest(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setCRC64(Ljava/lang/Enum;)V

    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v0, v12}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncUploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v12}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartNumber()I

    move-result v2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    int-to-long v4, v8

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setPartSize(J)V

    iget-boolean v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCheckCRC64:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getClientCRC()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setCRC64(J)V

    :cond_2
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v13, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    add-long/2addr v13, v4

    iput-wide v13, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    invoke-virtual {p0, v1}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->uploadPartFinish(Lcom/alibaba/sdk/android/oss/model/PartETag;)V

    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v2, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-wide v3, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    iget-wide v5, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFileLength:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->onProgressCallback(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;JJ)V
    :try_end_6
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v9, :cond_3

    :try_start_7
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto/16 :goto_9

    :cond_5
    :try_start_8
    new-instance v0, Lcom/alibaba/sdk/android/oss/TaskCancelException;

    const-string v1, "sequence upload task cancel"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/TaskCancelException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/TaskCancelException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)V

    throw v1
    :try_end_8
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catch_4
    move-exception v0

    move-object v1, v12

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move-object v1, v9

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v10, v1

    move-object v11, v10

    move-object v1, v6

    goto/16 :goto_a

    :catch_7
    move-exception v0

    move-object v10, v1

    move-object v11, v10

    move-object v1, v6

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v10, v1

    move-object v11, v10

    move-object v9, v6

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v10, v1

    move-object v11, v10

    goto/16 :goto_a

    :catch_9
    move-exception v0

    move-object v10, v1

    move-object v11, v10

    :goto_4
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->processException(Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v1, :cond_6

    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_6

    :cond_6
    :goto_5
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_9

    :goto_6
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v9, v1

    move-object v10, v9

    move-object v11, v10

    :goto_7
    :try_start_b
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x199

    if-eq v2, v3, :cond_8

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->processException(Ljava/lang/Exception;)V

    goto :goto_8

    :cond_8
    new-instance v2, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartNumber()I

    move-result v3

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getPartEtag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartContent()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setPartSize(J)V

    iget-boolean v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mCheckCRC64:Z

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartContent()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/oss/common/utils/CRC64;-><init>()V

    invoke-direct {v0, v1, v3}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setCRC64(J)V

    :cond_9
    iget-object v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    int-to-long v2, v8

    add-long/2addr v0, v2

    iput-wide v0, v7, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :goto_8
    if-eqz v9, :cond_a

    :try_start_c
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    :cond_a
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :cond_c
    :goto_9
    return-void

    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object v1, v9

    :goto_a
    if-eqz v1, :cond_d

    :try_start_d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_b

    :catch_c
    move-exception v0

    goto :goto_c

    :cond_d
    :goto_b
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_e
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_d

    :goto_c
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    :cond_f
    :goto_d
    throw v2
.end method

.method protected uploadPartFinish(Lcom/alibaba/sdk/android/oss/model/PartETag;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mSp:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mUploadedLength:J

    iget-wide v6, p0, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->mFileLength:J

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;->onProgressCallback(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;JJ)V

    :cond_0
    return-void
.end method
