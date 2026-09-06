.class public Lcom/motorola/feedback/transport/cce/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private error:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field private errorText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorText"
    .end annotation
.end field

.field private payload:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payload"
    .end annotation
.end field

.field private statusCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusCode"
    .end annotation
.end field

.field private wsReqId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wsReqId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Response;->error:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Response;->errorText:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Response;->payload:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/motorola/feedback/transport/cce/Response;->statusCode:I

    return p0
.end method

.method public getWsReqId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/Response;->wsReqId:Ljava/lang/String;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 1

    iget p0, p0, Lcom/motorola/feedback/transport/cce/Response;->statusCode:I

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/Response;->error:Ljava/lang/String;

    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorText"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/Response;->errorText:Ljava/lang/String;

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payload"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/Response;->payload:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statusCode"
        }
    .end annotation

    iput p1, p0, Lcom/motorola/feedback/transport/cce/Response;->statusCode:I

    return-void
.end method

.method public setWsReqId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wsReqId"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/Response;->wsReqId:Ljava/lang/String;

    return-void
.end method
