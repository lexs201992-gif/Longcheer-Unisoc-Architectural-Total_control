.class public Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ServiceCenterViewModel.java"


# static fields
.field private static final DISTANCE:Ljava/lang/String; = "50"


# instance fields
.field private deviceLocation:Z

.field private mCoordinate:Lcom/google/android/gms/maps/model/LatLng;

.field private mResult:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/motorola/genie/common/network/Resource<",
            "Ljava/util/List<",
            "Lcom/motorola/genie/servicecenter/ServiceCenter;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->deviceLocation:Z

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->mResult:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;)Landroidx/lifecycle/MediatorLiveData;
    .locals 0

    iget-object p0, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->mResult:Landroidx/lifecycle/MediatorLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->deviceLocation:Z

    return p0
.end method

.method static synthetic access$200(Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->mCoordinate:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method private doLoad()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->mCoordinate:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->mCoordinate:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, v0}, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->coordinateToCity(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->doLoad(Ljava/lang/String;)V

    return-void
.end method

.method private doLoad(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "city"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->mResult:Landroidx/lifecycle/MediatorLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/motorola/genie/common/network/Resource;->loading(Ljava/lang/Object;)Lcom/motorola/genie/common/network/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/genie/servicecenter/ServiceCenterRequest;

    iget-boolean v1, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->deviceLocation:Z

    if-eqz v1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v1, "India"

    invoke-direct {v0, v1, p1}, Lcom/motorola/genie/servicecenter/ServiceCenterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/genie/common/network/APIRetrofit;->getMotoSupportService()Lcom/motorola/genie/common/deviceregister/MotoSupportService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/motorola/genie/common/deviceregister/MotoSupportService;->getServiceCenters(Lcom/motorola/genie/servicecenter/ServiceCenterRequest;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel$1;

    invoke-direct {v0, p0}, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel$1;-><init>(Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public coordinateToCity(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latLng"
        }
    .end annotation

    const-string v0, "Bengaluru"

    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Lcom/motorola/genie/common/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    :try_start_0
    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Address;

    invoke-virtual {v5}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    invoke-virtual {v6}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Address;

    invoke-virtual {v7}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "address: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subLocality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "country: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postalCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "knownName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move-object v3, v5

    :cond_0
    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/motorola/genie/util/LogUtils;->e(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCityList()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/motorola/genie/common/network/Resource<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "getCityList"

    invoke-static {v0}, Lcom/motorola/genie/util/LogUtils;->d(Ljava/lang/Object;)V

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/motorola/genie/common/network/Resource;->loading(Ljava/lang/Object;)Lcom/motorola/genie/common/network/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/genie/common/network/APIRetrofit;->getMotoSupportService()Lcom/motorola/genie/common/deviceregister/MotoSupportService;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/genie/common/deviceregister/MotoSupportService;->getCityList()Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel$2;

    invoke-direct {v2, p0, v0}, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel$2;-><init>(Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;Landroidx/lifecycle/MediatorLiveData;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    return-object v0
.end method

.method public getResult()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/motorola/genie/common/network/Resource<",
            "Ljava/util/List<",
            "Lcom/motorola/genie/servicecenter/ServiceCenter;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->mResult:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public load()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->mCoordinate:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->doLoad()V

    goto :goto_0

    :cond_0
    const-string v0, "mCoordinate is null!"

    invoke-static {v0}, Lcom/motorola/genie/util/LogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public load(Lcom/google/android/gms/maps/model/LatLng;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "latLng",
            "dc"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->mCoordinate:Lcom/google/android/gms/maps/model/LatLng;

    iput-boolean p2, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->deviceLocation:Z

    invoke-direct {p0}, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->doLoad()V

    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "city"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->deviceLocation:Z

    invoke-direct {p0, p1}, Lcom/motorola/genie/servicecenter/ServiceCenterViewModel;->doLoad(Ljava/lang/String;)V

    return-void
.end method
