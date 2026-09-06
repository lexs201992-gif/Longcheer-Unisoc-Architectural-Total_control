.class public final Lcom/motorola/genie/util/StorageInfo_Factory;
.super Ljava/lang/Object;
.source "StorageInfo_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/genie/util/StorageInfo_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/motorola/genie/util/StorageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/motorola/genie/util/StorageInfo_Factory;
    .locals 1

    invoke-static {}, Lcom/motorola/genie/util/StorageInfo_Factory$InstanceHolder;->access$000()Lcom/motorola/genie/util/StorageInfo_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/motorola/genie/util/StorageInfo;
    .locals 1

    new-instance v0, Lcom/motorola/genie/util/StorageInfo;

    invoke-direct {v0}, Lcom/motorola/genie/util/StorageInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/motorola/genie/util/StorageInfo;
    .locals 1

    invoke-static {}, Lcom/motorola/genie/util/StorageInfo_Factory;->newInstance()Lcom/motorola/genie/util/StorageInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/genie/util/StorageInfo_Factory;->get()Lcom/motorola/genie/util/StorageInfo;

    move-result-object v0

    return-object v0
.end method
