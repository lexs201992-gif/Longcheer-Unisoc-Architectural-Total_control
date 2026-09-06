.class public final Lcom/motorola/feedback/transport/retrofit/RemoteAPIProvider;
.super Ljava/lang/Object;
.source "RemoteAPIProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/motorola/feedback/transport/retrofit/RemoteAPIProvider;",
        "",
        "()V",
        "getRemoteAPI",
        "Lcom/motorola/feedback/transport/retrofit/RemoteAPI;",
        "provider",
        "",
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
.field public static final INSTANCE:Lcom/motorola/feedback/transport/retrofit/RemoteAPIProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/feedback/transport/retrofit/RemoteAPIProvider;

    invoke-direct {v0}, Lcom/motorola/feedback/transport/retrofit/RemoteAPIProvider;-><init>()V

    sput-object v0, Lcom/motorola/feedback/transport/retrofit/RemoteAPIProvider;->INSTANCE:Lcom/motorola/feedback/transport/retrofit/RemoteAPIProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRemoteAPI(Ljava/lang/String;)Lcom/motorola/feedback/transport/retrofit/RemoteAPI;
    .locals 0

    const-string p0, "provider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "moli"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/feedback/transport/retrofit/MoliAPI;->INSTANCE:Lcom/motorola/feedback/transport/retrofit/MoliAPI;

    check-cast p0, Lcom/motorola/feedback/transport/retrofit/RemoteAPI;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown Provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
