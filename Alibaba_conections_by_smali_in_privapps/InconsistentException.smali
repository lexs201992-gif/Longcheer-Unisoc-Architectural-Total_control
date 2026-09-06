.class public Lcom/alibaba/sdk/android/oss/exception/InconsistentException;
.super Ljava/io/IOException;
.source "InconsistentException.java"


# instance fields
.field private clientChecksum:Ljava/lang/Long;

.field private requestId:Ljava/lang/String;

.field private serverChecksum:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/exception/InconsistentException;->clientChecksum:Ljava/lang/Long;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/exception/InconsistentException;->serverChecksum:Ljava/lang/Long;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/exception/InconsistentException;->requestId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InconsistentException: inconsistent object\n[RequestId]: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/exception/InconsistentException;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n[ClientChecksum]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/exception/InconsistentException;->clientChecksum:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n[ServerChecksum]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/exception/InconsistentException;->serverChecksum:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
