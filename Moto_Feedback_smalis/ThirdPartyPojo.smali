.class public Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo;
.super Ljava/lang/Object;
.source "ThirdPartyPojo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$BookingPropsPojo;,
        Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$SpotifyPropsPojo;
    }
.end annotation


# instance fields
.field private bookingProps:Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$BookingPropsPojo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "booking"
    .end annotation
.end field

.field private spotifyProps:Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$SpotifyPropsPojo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spotify"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookingProps()Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$BookingPropsPojo;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo;->bookingProps:Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$BookingPropsPojo;

    return-object p0
.end method

.method public getSpotifyProps()Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$SpotifyPropsPojo;
    .locals 0

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo;->spotifyProps:Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$SpotifyPropsPojo;

    return-object p0
.end method

.method public setBookingProps(Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$BookingPropsPojo;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo;->bookingProps:Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$BookingPropsPojo;

    return-void
.end method

.method public setSpotifyProps(Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$SpotifyPropsPojo;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo;->spotifyProps:Lcom/motorola/blur/service/blur/deviceprovisioning/ThirdPartyPojo$SpotifyPropsPojo;

    return-void
.end method
