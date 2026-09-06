.class public abstract Lcom/motorola/blur/service/blur/deviceprovisioning/CloudSettingsUtility;
.super Ljava/lang/Object;
.source "CloudSettingsUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUtility(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/blur/service/blur/deviceprovisioning/CloudSettingsUtility;
    .locals 1

    const-string v0, "persist."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/blur/service/blur/deviceprovisioning/SetSystemProperties;

    invoke-direct {v0, p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/SetSystemProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract execute()V
.end method
