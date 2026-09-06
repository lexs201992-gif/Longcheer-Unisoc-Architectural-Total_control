.class public Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;
.super Lcom/motorola/feedback/transport/request/RateAndFeedbackRequest;
.source "CarrierLogRateAndFeedbackRequest.java"


# instance fields
.field private isCarrierLoggingEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isCarrierLoggingEnabled"
    .end annotation
.end field

.field private mode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private uploadType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uploadType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/feedback/transport/request/RateAndFeedbackRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsCarrierLoggingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;->isCarrierLoggingEnabled:Z

    return p0
.end method

.method public getMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;->mode:Ljava/lang/String;

    return-object p0
.end method

.method public getState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;->state:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;->status:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;->uploadType:Ljava/lang/String;

    return-object p0
.end method

.method public setIsCarrierLoggingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCarrierLoggingEnabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;->isCarrierLoggingEnabled:Z

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;->mode:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;->state:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;->status:Ljava/lang/String;

    return-void
.end method

.method public setUploadType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadType"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/request/CarrierLogRateAndFeedbackRequest;->uploadType:Ljava/lang/String;

    return-void
.end method
