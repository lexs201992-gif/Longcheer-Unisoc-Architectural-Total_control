.class public Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;
.super Ljava/lang/Object;
.source "MotoCheckinEventWrapper.java"


# static fields
.field static final CLASS_CHECKINEVENT:Ljava/lang/String; = "com.motorola.android.provider.CheckinEvent"

.field static final CLASS_EVENT:Ljava/lang/String; = "com.motorola.data.event.api.Event"

.field static final METHOD_PUBLISH:Ljava/lang/String; = "publish"

.field static final METHOD_SETVALUE:Ljava/lang/String; = "setValue"

.field private static TAG:Ljava/lang/String; = "MotoCheckinEventWrapper"

.field private static sMethodConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static sMethodPublish:Ljava/lang/reflect/Method;

.field private static sMethodSetValue:Ljava/lang/reflect/Method;

.field private static sSucessfullyInit:Z


# instance fields
.field private mCheckinEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.motorola.android.provider.CheckinEvent"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.motorola.data.event.api.Event"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sMethodConstructor:Ljava/lang/reflect/Constructor;

    const-string v3, "setValue"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sMethodSetValue:Ljava/lang/reflect/Method;

    const-string v2, "publish"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sMethodPublish:Ljava/lang/reflect/Method;

    sput-boolean v5, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sSucessfullyInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v1, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Reflection failed"

    invoke-static {v1, v2}, Lcom/motorola/feedback/utils/Logger;->logw(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sMethodSetValue:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sMethodPublish:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sMethodConstructor:Ljava/lang/reflect/Constructor;

    sput-boolean v0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sSucessfullyInit:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sSucessfullyInit:Z

    return v0
.end method


# virtual methods
.method protected publish(Landroid/content/ContentResolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cr"
        }
    .end annotation

    sget-boolean v0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sSucessfullyInit:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->mCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sMethodPublish:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->TAG:Ljava/lang/String;

    const-string p1, "Reflection failed"

    invoke-static {p0, p1}, Lcom/motorola/feedback/utils/Logger;->logw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected setHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "segmentName",
            "version",
            "timestamp"
        }
    .end annotation

    sget-boolean v0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sSucessfullyInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sMethodConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p2, 0x2

    aput-object p3, v2, p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->mCheckinEvent:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    sget-object p0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->TAG:Ljava/lang/String;

    const-string p1, "Reflection failed"

    invoke-static {p0, p1}, Lcom/motorola/feedback/utils/Logger;->logw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method protected setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    sget-boolean v0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sSucessfullyInit:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->mCheckinEvent:Ljava/lang/Object;

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->sMethodSetValue:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p0, Lcom/motorola/feedback/instrumentation/MotoCheckinEventWrapper;->TAG:Ljava/lang/String;

    const-string p1, "Reflection failed"

    invoke-static {p0, p1}, Lcom/motorola/feedback/utils/Logger;->logw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
