.class public Lcom/motorola/feedback/transport/cce/CustomOAuth;
.super Ljava/lang/Object;
.source "CustomOAuth.java"


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appId"
    .end annotation
.end field

.field private appSecret:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appSecret"
    .end annotation
.end field

.field private signPayloadWithAppSecret:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signPayloadWithAppSecret"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "D26ASAXJH5P877Z2ENDWMEOVKE7J2FNZ"

    iput-object v0, p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;->appId:Ljava/lang/String;

    const-string v0, "YCAyzwSUY2kfAdC"

    iput-object v0, p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;->appSecret:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;->signPayloadWithAppSecret:Z

    return-void
.end method

.method public static getNewInstance(Landroid/content/Context;)Lcom/motorola/feedback/transport/cce/CustomOAuth;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    new-instance p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;

    invoke-direct {p0}, Lcom/motorola/feedback/transport/cce/CustomOAuth;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;->appSecret:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;->token:Ljava/lang/String;

    return-object p0
.end method

.method public isSignPayloadWithAppSecret()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;->signPayloadWithAppSecret:Z

    return p0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appId"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSecret"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;->appSecret:Ljava/lang/String;

    return-void
.end method

.method public setSignPayloadWithAppSecret(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signPayloadWithAppSecret"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;->signPayloadWithAppSecret:Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/feedback/transport/cce/CustomOAuth;->token:Ljava/lang/String;

    return-void
.end method
