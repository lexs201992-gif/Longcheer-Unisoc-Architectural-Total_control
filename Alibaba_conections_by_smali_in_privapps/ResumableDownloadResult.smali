.class public Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "ResumableDownloadResult.java"


# instance fields
.field private metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-object p0
.end method

.method public setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method
