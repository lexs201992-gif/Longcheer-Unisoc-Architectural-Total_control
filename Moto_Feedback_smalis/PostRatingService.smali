.class public Lcom/motorola/feedback/inappfeedback/datapi/PostRatingService;
.super Landroid/app/Service;
.source "PostRatingService.java"


# static fields
.field private static final DEFAULT_MOTO_PKG_REFERENCE:Ljava/lang/String; = "com.motorola.motosignature.app"

.field private static TAG:Ljava/lang/String; = "PostRatingService"


# instance fields
.field private final mBinder:Lcom/motorola/feedback/lib/IFeedBackInvitationService$Stub;


# direct methods
.method static bridge synthetic -$$Nest$misSystemOrMotoApp(Lcom/motorola/feedback/inappfeedback/datapi/PostRatingService;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/feedback/inappfeedback/datapi/PostRatingService;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/feedback/inappfeedback/datapi/PostRatingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/motorola/feedback/inappfeedback/datapi/PostRatingService$1;

    invoke-direct {v0, p0}, Lcom/motorola/feedback/inappfeedback/datapi/PostRatingService$1;-><init>(Lcom/motorola/feedback/inappfeedback/datapi/PostRatingService;)V

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/datapi/PostRatingService;->mBinder:Lcom/motorola/feedback/lib/IFeedBackInvitationService$Stub;

    return-void
.end method

.method private isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pm",
            "pkgName"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.motorola.motosignature.app"

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v1

    :catch_0
    :cond_1
    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    sget-object p1, Lcom/motorola/feedback/inappfeedback/datapi/PostRatingService;->TAG:Ljava/lang/String;

    const-string v0, "On Bind..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/motorola/feedback/inappfeedback/datapi/PostRatingService;->mBinder:Lcom/motorola/feedback/lib/IFeedBackInvitationService$Stub;

    return-object p0
.end method
