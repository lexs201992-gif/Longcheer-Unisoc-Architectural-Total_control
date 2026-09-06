.class public Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;
.super Ljava/lang/Object;
.source "OSSPlainTextAKSKCredentialProvider.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private accessKeyId:Ljava/lang/String;

.field private accessKeySecret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->setAccessKeyId(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->setAccessKeySecret(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->accessKeyId:Ljava/lang/String;

    return-object p0
.end method

.method public getAccessKeySecret()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->accessKeySecret:Ljava/lang/String;

    return-object p0
.end method

.method public getFederationToken()Lcom/alibaba/sdk/android/oss/common/auth/OSSFederationToken;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->accessKeyId:Ljava/lang/String;

    return-void
.end method

.method public setAccessKeySecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/auth/OSSPlainTextAKSKCredentialProvider;->accessKeySecret:Ljava/lang/String;

    return-void
.end method
