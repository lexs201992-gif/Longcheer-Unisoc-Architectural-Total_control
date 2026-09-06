.class public interface abstract Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning;
.super Ljava/lang/Object;
.source "IDeviceProvisioning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$ProvisionDeviceReturnType;,
        Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;
    }
.end annotation


# virtual methods
.method public abstract createDeviceIdOrLogin(Lcom/motorola/blur/service/blur/deviceprovisioning/IDeviceProvisioning$request_type;)V
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getSessionExpiration()Ljava/lang/String;
.end method

.method public abstract getSessionToken()Ljava/lang/String;
.end method

.method public abstract isDeviceProvisioned()Z
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract provisionDevice(Ljava/lang/String;Ljava/lang/String;)V
.end method
