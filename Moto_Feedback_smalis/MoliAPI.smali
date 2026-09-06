.class public final Lcom/motorola/feedback/transport/retrofit/MoliAPI;
.super Lcom/motorola/feedback/transport/retrofit/RemoteAPI;
.source "MoliAPI.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \u0005*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/motorola/feedback/transport/retrofit/MoliAPI;",
        "Lcom/motorola/feedback/transport/retrofit/RemoteAPI;",
        "()V",
        "apiService",
        "Lcom/motorola/feedback/transport/retrofit/MoliAPIService;",
        "kotlin.jvm.PlatformType",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "buildMoshi",
        "getAPIService",
        "getMoshi",
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
.field public static final INSTANCE:Lcom/motorola/feedback/transport/retrofit/MoliAPI;

.field private static final apiService:Lcom/motorola/feedback/transport/retrofit/MoliAPIService;

.field private static final moshi:Lcom/squareup/moshi/Moshi;

.field private static final retrofit:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/feedback/transport/retrofit/MoliAPI;

    invoke-direct {v0}, Lcom/motorola/feedback/transport/retrofit/MoliAPI;-><init>()V

    sput-object v0, Lcom/motorola/feedback/transport/retrofit/MoliAPI;->INSTANCE:Lcom/motorola/feedback/transport/retrofit/MoliAPI;

    invoke-direct {v0}, Lcom/motorola/feedback/transport/retrofit/MoliAPI;->buildMoshi()Lcom/squareup/moshi/Moshi;

    move-result-object v1

    sput-object v1, Lcom/motorola/feedback/transport/retrofit/MoliAPI;->moshi:Lcom/squareup/moshi/Moshi;

    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/motorola/feedback/transport/retrofit/MoliAPI;->buildOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v2, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {}, Lcom/motorola/feedback/transport/retrofit/MoliAPIKt;->access$getBASE_URL$p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {v1}, Lretrofit2/converter/moshi/MoshiConverterFactory;->create(Lcom/squareup/moshi/Moshi;)Lretrofit2/converter/moshi/MoshiConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/motorola/feedback/transport/retrofit/MoliAPI;->retrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/motorola/feedback/transport/retrofit/MoliAPIService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/feedback/transport/retrofit/MoliAPIService;

    sput-object v0, Lcom/motorola/feedback/transport/retrofit/MoliAPI;->apiService:Lcom/motorola/feedback/transport/retrofit/MoliAPIService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/feedback/transport/retrofit/RemoteAPI;-><init>()V

    return-void
.end method

.method private final buildMoshi()Lcom/squareup/moshi/Moshi;
    .locals 4

    new-instance p0, Lcom/motorola/feedback/moli/UnknownMoliMessage;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/motorola/feedback/moli/UnknownMoliMessage;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {v0}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    const-class v1, Lcom/motorola/feedback/moli/BaseMoliMessage;

    const-string v2, "type"

    invoke-static {v1, v2}, Lcom/squareup/moshi/adapters/PolymorphicJsonAdapterFactory;->of(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/PolymorphicJsonAdapterFactory;

    move-result-object v1

    const-class v2, Lcom/motorola/feedback/moli/SectionTextMoliMessage;

    const-string v3, "sectionText"

    invoke-virtual {v1, v2, v3}, Lcom/squareup/moshi/adapters/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/PolymorphicJsonAdapterFactory;

    move-result-object v1

    const-class v2, Lcom/motorola/feedback/moli/RichTextMoliMessage;

    const-string v3, "richText"

    invoke-virtual {v1, v2, v3}, Lcom/squareup/moshi/adapters/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/PolymorphicJsonAdapterFactory;

    move-result-object v1

    const-class v2, Lcom/motorola/feedback/moli/ButtonTextMoliMessage;

    const-string v3, "button"

    invoke-virtual {v1, v2, v3}, Lcom/squareup/moshi/adapters/PolymorphicJsonAdapterFactory;->withSubtype(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/moshi/adapters/PolymorphicJsonAdapterFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/moshi/adapters/PolymorphicJsonAdapterFactory;->withDefaultValue(Ljava/lang/Object;)Lcom/squareup/moshi/adapters/PolymorphicJsonAdapterFactory;

    move-result-object p0

    check-cast p0, Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {v0, p0}, Lcom/squareup/moshi/Moshi$Builder;->add(Lcom/squareup/moshi/JsonAdapter$Factory;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object p0

    new-instance v0, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory;

    invoke-direct {v0}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory;-><init>()V

    check-cast v0, Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/Moshi$Builder;->add(Lcom/squareup/moshi/JsonAdapter$Factory;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object p0

    const-string v0, "Builder().add(\n         \u2026\n                .build()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getAPIService()Lcom/motorola/feedback/transport/retrofit/APIService;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/feedback/transport/retrofit/MoliAPI;->getAPIService()Lcom/motorola/feedback/transport/retrofit/MoliAPIService;

    move-result-object p0

    check-cast p0, Lcom/motorola/feedback/transport/retrofit/APIService;

    return-object p0
.end method

.method public getAPIService()Lcom/motorola/feedback/transport/retrofit/MoliAPIService;
    .locals 1

    sget-object p0, Lcom/motorola/feedback/transport/retrofit/MoliAPI;->apiService:Lcom/motorola/feedback/transport/retrofit/MoliAPIService;

    const-string v0, "apiService"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getMoshi()Lcom/squareup/moshi/Moshi;
    .locals 0

    sget-object p0, Lcom/motorola/feedback/transport/retrofit/MoliAPI;->moshi:Lcom/squareup/moshi/Moshi;

    return-object p0
.end method
