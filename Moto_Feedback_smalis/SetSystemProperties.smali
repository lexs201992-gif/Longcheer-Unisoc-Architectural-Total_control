.class public Lcom/motorola/blur/service/blur/deviceprovisioning/SetSystemProperties;
.super Lcom/motorola/blur/service/blur/deviceprovisioning/CloudSettingsUtility;
.source "SetSystemProperties.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SetSystemProp"


# instance fields
.field private mPropKey:Ljava/lang/String;

.field private mPropValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/CloudSettingsUtility;-><init>()V

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/SetSystemProperties;->mPropKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/SetSystemProperties;->mPropValue:Ljava/lang/String;

    return-void
.end method

.method private handleSystemSettings()V
    .locals 8

    const-string v0, "SetSystemProp"

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "set"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/SetSystemProperties;->mPropKey:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/SetSystemProperties;->mPropValue:Ljava/lang/String;

    aput-object v3, v2, v7

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/SetSystemProperties;->mPropKey:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " set successfully"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/SetSystemProperties;->handleSystemSettings()V

    return-void
.end method
