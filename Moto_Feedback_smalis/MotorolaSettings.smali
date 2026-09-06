.class public Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;
.super Ljava/lang/Object;
.source "MotorolaSettings.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final ENTERPRISE_EDITION:Ljava/lang/String; = "enterprise_edition"

.field public static final MOTO_SETTINGS_PROVIDER_CLASS_NAME_GLOBAL:Ljava/lang/String; = "com.motorola.android.provider.MotorolaSettings$Global"

.field public static final MOTO_SETTINGS_PROVIDER_CLASS_NAME_SECURE:Ljava/lang/String; = "com.motorola.android.provider.MotorolaSettings$Secure"

.field public static final PRIVACY_MOTOROLA_TERMS_OF_SERVICE:Ljava/lang/String; = "privacy_motorola_terms_of_service"

.field public static final SUB_CHANNEL_ID:Ljava/lang/String; = "sub_channel_id"

.field private static final TAG:Ljava/lang/String; = "CCE-MotorolaSettings"

.field private static sInstance:Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGetStringGlobal:Ljava/lang/reflect/Method;

.field private mGetStringSecure:Ljava/lang/reflect/Method;

.field private mPutStringGlobal:Ljava/lang/reflect/Method;

.field private mPutStringSecure:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    const-string v0, "putString"

    const-string v1, "getString"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mContext:Landroid/content/Context;

    :try_start_0
    const-string p1, "com.motorola.android.provider.MotorolaSettings$Global"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "com.motorola.android.provider.MotorolaSettings$Secure"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {p1, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mGetStringGlobal:Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v5, v6

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v7

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v3

    invoke-virtual {p1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mPutStringGlobal:Ljava/lang/reflect/Method;

    new-array p1, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, p1, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, p1, v7

    invoke-virtual {v2, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mGetStringSecure:Ljava/lang/reflect/Method;

    new-array p1, v4, [Ljava/lang/Class;

    const-class v1, Landroid/content/ContentResolver;

    aput-object v1, p1, v6

    const-class v1, Ljava/lang/String;

    aput-object v1, p1, v7

    const-class v1, Ljava/lang/String;

    aput-object v1, p1, v3

    invoke-virtual {v2, v0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mPutStringSecure:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CCE-MotorolaSettings"

    const-string v0, "Motorola settings class error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;
    .locals 2

    sget-object v0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->sInstance:Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;

    if-nez v0, :cond_1

    const-class v0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->sInstance:Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;

    invoke-direct {v1, p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->sInstance:Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->sInstance:Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;

    return-object p0
.end method

.method private getMotoSettingValueAsString(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MotorolaSettings getMotoSettingValueAsString "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCE-MotorolaSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p2, v2, p0

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mContext:Landroid/content/Context;

    const-string p1, ""

    invoke-static {p0, p2, p1}, Lcom/motorola/ccc/cce/CCESettings;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "getMotoSettingValueAsString error: "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private putMotoSettingValueAsString(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MotorolaSettings putMotoSettingValueAsString "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCE-MotorolaSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v3, v2

    aput-object p2, v3, v0

    const/4 p0, 0x2

    aput-object p3, v3, p0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Lcom/motorola/ccc/cce/CCESettings;->insertValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string p1, "putMotoSettingValueAsString error: "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method


# virtual methods
.method public getMotoSettingValueAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.motorola.android.provider.MotorolaSettings$Global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.motorola.android.provider.MotorolaSettings$Secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unknown className "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CCE-MotorolaSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mGetStringSecure:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->getMotoSettingValueAsString(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mGetStringGlobal:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->getMotoSettingValueAsString(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public putMotoSettingValueAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.motorola.android.provider.MotorolaSettings$Global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.motorola.android.provider.MotorolaSettings$Secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unknown className "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CCE-MotorolaSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mPutStringSecure:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->putMotoSettingValueAsString(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->mPutStringGlobal:Ljava/lang/reflect/Method;

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/blur/service/blur/deviceprovisioning/MotorolaSettings;->putMotoSettingValueAsString(Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
