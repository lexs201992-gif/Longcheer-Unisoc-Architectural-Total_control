.class public final Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;
.super Ljava/lang/Object;
.source "AndroidMMApiWSImpl.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/ws/IWsENV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl$Services;,
        Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl$HttpProxyFromSyncSettings;,
        Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl$Utilities;,
        Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl$Database;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidMMApiWSImpl"


# instance fields
.field _platformEnv:Lcom/motorola/blur/service/blur/platform/IPlatform;

.field mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

.field private final mContext:Landroid/content/Context;

.field mLogger:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

.field mNetwork:Lcom/motorola/blur/service/blur/platform/IPlatform$Network;

.field private final mServices:Lcom/motorola/blur/service/blur/ws/IWsENV$Services;

.field private final mUtilities:Lcom/motorola/blur/service/blur/ws/IWsENV$Utilities;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/blur/service/blur/platform/IPlatform;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl$Utilities;

    invoke-direct {p1, p0}, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl$Utilities;-><init>(Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;)V

    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;->mUtilities:Lcom/motorola/blur/service/blur/ws/IWsENV$Utilities;

    new-instance p1, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl$Services;

    invoke-direct {p1, p0}, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl$Services;-><init>(Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;)V

    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;->mServices:Lcom/motorola/blur/service/blur/ws/IWsENV$Services;

    invoke-interface {p2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getLogger()Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;->mLogger:Lcom/motorola/blur/service/blur/platform/IPlatform$Logger;

    invoke-interface {p2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getNetwork()Lcom/motorola/blur/service/blur/platform/IPlatform$Network;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;->mNetwork:Lcom/motorola/blur/service/blur/platform/IPlatform$Network;

    invoke-interface {p2}, Lcom/motorola/blur/service/blur/platform/IPlatform;->getConfiguration()Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;->mConfig:Lcom/motorola/blur/service/blur/platform/IPlatform$Configurations;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getServices()Lcom/motorola/blur/service/blur/ws/IWsENV$Services;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;->mServices:Lcom/motorola/blur/service/blur/ws/IWsENV$Services;

    return-object p0
.end method

.method public getUtilities()Lcom/motorola/blur/service/blur/ws/IWsENV$Utilities;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/ws/AndroidMMApiWSImpl;->mUtilities:Lcom/motorola/blur/service/blur/ws/IWsENV$Utilities;

    return-object p0
.end method
