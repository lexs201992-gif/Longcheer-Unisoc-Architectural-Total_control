.class public Lcom/motorola/feedback/transport/response/FirebaseAuthTokenResponse;
.super Lcom/motorola/feedback/transport/response/BaseResponse;
.source "FirebaseAuthTokenResponse.java"


# instance fields
.field private authToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authToken"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/feedback/transport/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/response/FirebaseAuthTokenResponse;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authToken"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/response/FirebaseAuthTokenResponse;->authToken:Ljava/lang/String;

    return-void
.end method
