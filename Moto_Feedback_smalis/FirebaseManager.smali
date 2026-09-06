.class public Lcom/motorola/feedback/transport/firebase/FirebaseManager;
.super Ljava/lang/Object;
.source "FirebaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/feedback/transport/firebase/FirebaseManager$FirebaseAuthHandler;,
        Lcom/motorola/feedback/transport/firebase/FirebaseManager$SingletonWrapper;
    }
.end annotation


# static fields
.field private static final SUBTAG:Ljava/lang/String; = "FirebaseManager"


# instance fields
.field mFirebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method static bridge synthetic -$$Nest$mprocessAuthTokenResponse(Lcom/motorola/feedback/transport/firebase/FirebaseManager;Lcom/motorola/feedback/transport/response/BaseResponse;Lcom/motorola/feedback/scheduler/FileUploadRequest;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->processAuthTokenResponse(Lcom/motorola/feedback/transport/response/BaseResponse;Lcom/motorola/feedback/scheduler/FileUploadRequest;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetSUBTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->SUBTAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->mFirebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/feedback/transport/firebase/FirebaseManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/feedback/transport/firebase/FirebaseManager;-><init>()V

    return-void
.end method

.method private getFirebaseAuthToken(Landroid/content/Context;Lcom/motorola/feedback/scheduler/FileUploadRequest;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fileUploadRequest",
            "firebaseSignInCallback"
        }
    .end annotation

    new-instance v0, Lcom/motorola/feedback/transport/request/FirebaseAuthTokenReq;

    invoke-direct {v0}, Lcom/motorola/feedback/transport/request/FirebaseAuthTokenReq;-><init>()V

    new-instance v1, Lcom/motorola/feedback/ui/CommunicationCoroutine;

    new-instance v2, Lcom/motorola/feedback/transport/firebase/FirebaseManager$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/motorola/feedback/transport/firebase/FirebaseManager$1;-><init>(Lcom/motorola/feedback/transport/firebase/FirebaseManager;Lcom/motorola/feedback/scheduler/FileUploadRequest;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V

    invoke-direct {v1, p1, v0, v2}, Lcom/motorola/feedback/ui/CommunicationCoroutine;-><init>(Landroid/content/Context;Lcom/motorola/feedback/transport/request/BaseRequest;Lcom/motorola/feedback/ui/CommunicationCoroutine$CoroutineCallbacks;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/motorola/feedback/ui/CommunicationCoroutine;->setDeviceId()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/motorola/feedback/ui/CommunicationCoroutine;->execute()V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    sget-object p0, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->SUBTAG:Ljava/lang/String;

    const-string p1, "!!!Exception in retrieving device ID. Abort!!!"

    invoke-static {p0, p1}, Lcom/motorola/feedback/utils/Logger;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/motorola/feedback/transport/firebase/FirebaseManager;
    .locals 1

    invoke-static {}, Lcom/motorola/feedback/transport/firebase/FirebaseManager$SingletonWrapper;->-$$Nest$sfgetINSTANCE()Lcom/motorola/feedback/transport/firebase/FirebaseManager;

    move-result-object v0

    return-object v0
.end method

.method private processAuthTokenResponse(Lcom/motorola/feedback/transport/response/BaseResponse;Lcom/motorola/feedback/scheduler/FileUploadRequest;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseResponse",
            "fileUploadRequest",
            "firebaseSignInCallback"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->SUBTAG:Ljava/lang/String;

    const-string p1, "AuthTokenResponse is NULL. Abort"

    invoke-static {p0, p1}, Lcom/motorola/feedback/utils/Logger;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/motorola/feedback/transport/response/FirebaseAuthTokenResponse;

    invoke-virtual {p1}, Lcom/motorola/feedback/transport/response/FirebaseAuthTokenResponse;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->SUBTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firebase Auth Token = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/feedback/transport/response/FirebaseAuthTokenResponse;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/feedback/transport/firebase/FirebaseManager$FirebaseAuthHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/feedback/transport/firebase/FirebaseManager$FirebaseAuthHandler;-><init>(Lcom/motorola/feedback/transport/firebase/FirebaseManager;Lcom/motorola/feedback/transport/firebase/FirebaseManager$FirebaseAuthHandler-IA;)V

    invoke-virtual {p1}, Lcom/motorola/feedback/transport/response/FirebaseAuthTokenResponse;->getAuthToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Lcom/motorola/feedback/transport/firebase/FirebaseManager$FirebaseAuthHandler;->signInToFirebase(Ljava/lang/String;Lcom/motorola/feedback/scheduler/FileUploadRequest;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->SUBTAG:Ljava/lang/String;

    const-string p1, "AuthToken is NULL. Abort"

    invoke-static {p0, p1}, Lcom/motorola/feedback/utils/Logger;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startFirebaseSignin(Landroid/content/Context;Lcom/motorola/feedback/scheduler/FileUploadRequest;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fileUploadRequest",
            "firebaseSignInCallback"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->getFirebaseAuthToken(Landroid/content/Context;Lcom/motorola/feedback/scheduler/FileUploadRequest;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V

    return-void
.end method


# virtual methods
.method public isSignedInToFB()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->mFirebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startFirebaseSignin(Landroid/content/Context;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "firebaseSignInCallback"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->getFirebaseAuthToken(Landroid/content/Context;Lcom/motorola/feedback/scheduler/FileUploadRequest;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V

    return-void
.end method

.method public uploadFile(Landroid/content/Context;Lcom/motorola/feedback/scheduler/FileUploadRequest;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fileUploadRequest",
            "firebaseSignInCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->mFirebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->SUBTAG:Ljava/lang/String;

    const-string v1, " Firebase User is null. Start Sign-in"

    invoke-static {v0, v1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->startFirebaseSignin(Landroid/content/Context;Lcom/motorola/feedback/scheduler/FileUploadRequest;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/motorola/feedback/scheduler/FileUploadRequest;->prepareAndUpload()V

    :goto_0
    return-void
.end method
