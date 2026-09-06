.class public Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "AppendObjectRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private initCRC64:Ljava/lang/Long;

.field private metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

.field private objectKey:Ljava/lang/String;

.field private position:J

.field private progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            ">;"
        }
    .end annotation
.end field

.field private uploadData:[B

.field private uploadFilePath:Ljava/lang/String;

.field private uploadUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setUploadUri(Landroid/net/Uri;)V

    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setUploadFilePath(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setObjectKey(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setUploadData([B)V

    invoke-virtual {p0, p4}, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getInitCRC64()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->initCRC64:Ljava/lang/Long;

    return-object p0
.end method

.method public getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->objectKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->position:J

    return-wide v0
.end method

.method public getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object p0
.end method

.method public getUploadData()[B
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->uploadData:[B

    return-object p0
.end method

.method public getUploadFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->uploadFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->uploadUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setInitCRC64(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->initCRC64:Ljava/lang/Long;

    return-void
.end method

.method public setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->metadata:Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setPosition(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->position:J

    return-void
.end method

.method public setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->progressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setUploadData([B)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->uploadData:[B

    return-void
.end method

.method public setUploadFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->uploadFilePath:Ljava/lang/String;

    return-void
.end method

.method public setUploadUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;->uploadUri:Landroid/net/Uri;

    return-void
.end method
