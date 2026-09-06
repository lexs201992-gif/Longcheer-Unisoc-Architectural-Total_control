.class public Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "DeleteBucketLifecycleRequest.java"


# instance fields
.field private mBucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;->mBucketName:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/DeleteBucketLifecycleRequest;->mBucketName:Ljava/lang/String;

    return-void
.end method
