.class public Lcom/android/permissioncontroller/role/UserPackage;
.super Ljava/lang/Object;
.source "UserPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/permissioncontroller/role/UserPackage$1;

    invoke-direct {v0}, Lcom/android/permissioncontroller/role/UserPackage$1;-><init>()V

    sput-object v0, Lcom/android/permissioncontroller/role/UserPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/permissioncontroller/role/UserPackage;->user:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/permissioncontroller/role/UserPackage;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static from(Landroid/content/pm/ApplicationInfo;)Lcom/android/permissioncontroller/role/UserPackage;
    .locals 2

    new-instance v0, Lcom/android/permissioncontroller/role/UserPackage;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/permissioncontroller/role/UserPackage;-><init>(Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/permissioncontroller/role/UserPackage;
    .locals 1

    new-instance v0, Lcom/android/permissioncontroller/role/UserPackage;

    invoke-direct {v0, p0, p1}, Lcom/android/permissioncontroller/role/UserPackage;-><init>(Landroid/os/UserHandle;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/permissioncontroller/role/UserPackage;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/permissioncontroller/role/UserPackage;

    iget-object v1, p0, Lcom/android/permissioncontroller/role/UserPackage;->user:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/permissioncontroller/role/UserPackage;->user:Landroid/os/UserHandle;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/permissioncontroller/role/UserPackage;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/permissioncontroller/role/UserPackage;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/permissioncontroller/role/UserPackage;->user:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/permissioncontroller/role/UserPackage;->packageName:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/android/permissioncontroller/role/UserPackage;->user:Landroid/os/UserHandle;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/android/permissioncontroller/role/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
