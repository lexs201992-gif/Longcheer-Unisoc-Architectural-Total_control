.class public final Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;
.super Ljava/lang/Object;
.source "FireBaseStorageDownLoader.kt"

# interfaces
.implements Lcom/motorola/feedback/logrequest/ObjectDownLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 !2\u00020\u0001:\u0001!B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J \u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0019H\u0016J+\u0010\u001a\u001a\u00020\u00112!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00110\u001cH\u0002R\u001a\u0010\u0008\u001a\u000e\u0012\u0008\u0012\u00060\nR\u00020\u000b\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;",
        "Lcom/motorola/feedback/logrequest/ObjectDownLoader;",
        "context",
        "Landroid/content/Context;",
        "bucket",
        "",
        "sObject",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V",
        "fileDownloader",
        "Lcom/google/firebase/storage/StorageTask;",
        "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
        "Lcom/google/firebase/storage/FileDownloadTask;",
        "mBucket",
        "mContext",
        "mStorageRef",
        "Lcom/google/firebase/storage/StorageReference;",
        "cancelDownload",
        "",
        "downLoadFile",
        "destFilepath",
        "requestId",
        "",
        "listener",
        "Lcom/motorola/feedback/logrequest/DownLoadListener;",
        "readMetadata",
        "Lcom/motorola/feedback/logrequest/MetadataListener;",
        "verifyLogin",
        "onLogin",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "Companion",
        "feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fileDownloader:Lcom/google/firebase/storage/StorageTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageTask<",
            "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private mBucket:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mStorageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->Companion:Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader$Companion;

    const-string v0, "FireBaseStorageDownLoader"

    sput-object v0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FireBaseStorageDownLoader enter bucket = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sObject = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/feedback/utils/Logger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->mBucket:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance(Ljava/lang/String;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    const-string p2, "getInstance(bucket!!)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMStorageRef$p(Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;)Lcom/google/firebase/storage/StorageReference;
    .locals 0

    iget-object p0, p0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->mStorageRef:Lcom/google/firebase/storage/StorageReference;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setFileDownloader$p(Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;Lcom/google/firebase/storage/StorageTask;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->fileDownloader:Lcom/google/firebase/storage/StorageTask;

    return-void
.end method

.method private final verifyLogin(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->getInstance()Lcom/motorola/feedback/transport/firebase/FirebaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->isSignedInToFB()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->getInstance()Lcom/motorola/feedback/transport/firebase/FirebaseManager;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader$verifyLogin$1;

    invoke-direct {v1, p1}, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader$verifyLogin$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;

    invoke-virtual {v0, p0, v1}, Lcom/motorola/feedback/transport/firebase/FirebaseManager;->startFirebaseSignin(Landroid/content/Context;Lcom/motorola/feedback/transport/firebase/FirebaseSignInCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->fileDownloader:Lcom/google/firebase/storage/StorageTask;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->fileDownloader:Lcom/google/firebase/storage/StorageTask;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->cancel()Z

    :cond_0
    return-void
.end method

.method public downLoadFile(Ljava/lang/String;ILcom/motorola/feedback/logrequest/DownLoadListener;)V
    .locals 1

    const-string v0, "destFilepath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader$downLoadFile$1;

    invoke-direct {v0, p1, p0, p3, p2}, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader$downLoadFile$1;-><init>(Ljava/lang/String;Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;Lcom/motorola/feedback/logrequest/DownLoadListener;I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->verifyLogin(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public readMetadata(ILcom/motorola/feedback/logrequest/MetadataListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader$readMetadata$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader$readMetadata$1;-><init>(Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;Lcom/motorola/feedback/logrequest/MetadataListener;I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/motorola/feedback/logrequest/FireBaseStorageDownLoader;->verifyLogin(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
