.class public final Lcom/motorola/help/extlog/loggers/OtaLogger;
.super Lcom/motorola/help/extlog/loggers/BaseLogger;
.source "OtaLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/help/extlog/loggers/OtaLogger$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOtaLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OtaLogger.kt\ncom/motorola/help/extlog/loggers/OtaLogger\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J%\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ#\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/motorola/help/extlog/loggers/OtaLogger;",
        "Lcom/motorola/help/extlog/loggers/BaseLogger;",
        "()V",
        "getLogsLocation",
        "",
        "context",
        "Landroid/content/Context;",
        "removeGeneratedFiles",
        "",
        "requestLogs",
        "JsonConfigParams",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "reset",
        "Companion",
        "extloglib_release"
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
.field public static final Companion:Lcom/motorola/help/extlog/loggers/OtaLogger$Companion;

.field public static final OTA_LOG_DIRECTORY:Ljava/lang/String; = "Ota_Log"

.field public static final OTA_LOG_FILE_PATH:Ljava/lang/String; = "/data/misc/update_engine_log/update_engine.log"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/help/extlog/loggers/OtaLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/help/extlog/loggers/OtaLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/help/extlog/loggers/OtaLogger;->Companion:Lcom/motorola/help/extlog/loggers/OtaLogger$Companion;

    const-class v0, Lcom/motorola/help/extlog/loggers/BaseLogger;

    const-string v0, "BaseLogger::class.java.simpleName"

    const-string v1, "BaseLogger"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/help/extlog/loggers/OtaLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ota"

    invoke-direct {p0, v0}, Lcom/motorola/help/extlog/loggers/BaseLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/help/extlog/loggers/OtaLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final getLogsLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "Ota_Log"

    invoke-super {p0, p1, v0}, Lcom/motorola/help/extlog/loggers/BaseLogger;->getLogsLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final removeGeneratedFiles(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/OtaLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public requestLogs(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p2, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p3, Lcom/motorola/help/extlog/loggers/OtaLogger;->TAG:Ljava/lang/String;

    const-string v0, "start of collecting OTA log"

    invoke-virtual {p2, p3, v0}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/OtaLogger;->getLogsLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p2, v1, p1, v0}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->deleteDirectory$default(Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;Ljava/io/File;ZILjava/lang/Object;)V

    :cond_0
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/misc/update_engine_log/update_engine.log"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/help/extlog/diagLogs/DiagLogutil;->Companion:Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;

    invoke-virtual {p1, p0, p2}, Lcom/motorola/help/extlog/diagLogs/DiagLogutil$Companion;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    sget-object p0, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OTA log is available at: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p2, Lcom/motorola/help/extlog/util/Logger;->Companion:Lcom/motorola/help/extlog/util/Logger$Companion;

    sget-object p3, Lcom/motorola/help/extlog/loggers/OtaLogger;->TAG:Ljava/lang/String;

    const-string v0, "Reset enter"

    invoke-virtual {p2, p3, v0}, Lcom/motorola/help/extlog/util/Logger$Companion;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/motorola/help/extlog/loggers/OtaLogger;->removeGeneratedFiles(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
