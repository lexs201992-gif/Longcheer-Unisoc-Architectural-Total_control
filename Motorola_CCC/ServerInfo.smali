.class public Lcom/lenovo/lsf/lenovoid/net/ServerInfo;
.super Ljava/lang/Object;
.source "ServerInfo.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "https://uss-us.lenovomm.com/"

    return-object p0
.end method

.method public static queryUKIServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "https://uki.lenovomm.com/"

    return-object p0
.end method
