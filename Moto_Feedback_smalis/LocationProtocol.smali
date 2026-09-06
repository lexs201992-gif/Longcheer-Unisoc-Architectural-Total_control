.class public final Lcom/motorola/blur/service/location/protocol/LocationProtocol;
.super Ljava/lang/Object;
.source "LocationProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/location/protocol/LocationProtocol$LocationResponse;,
        Lcom/motorola/blur/service/location/protocol/LocationProtocol$Location;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_LocationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_LocationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Location_CellIdData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Location_CellIdData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Location_GPSData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Location_GPSData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Location_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Location_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\n\u0017location_protocol.proto\"\u00eb\u0001\n\u0008Location\u0012&\n\u0008cellData\u0018\u0005 \u0001(\u000b2\u0014.Location.CellIdData\u0012\"\n\u0007gpsData\u0018\u0006 \u0001(\u000b2\u0011.Location.GPSData\u001aM\n\nCellIdData\u0012\u000b\n\u0003lac\u0018\u0001 \u0002(\u0005\u0012\n\n\u0002id\u0018\u0002 \u0002(\u0005\u0012\u000c\n\u0004time\u0018\u0003 \u0002(\u0003\u0012\u000b\n\u0003mcc\u0018\u0004 \u0001(\u0005\u0012\u000b\n\u0003mnc\u0018\u0005 \u0001(\u0005\u001aD\n\u0007GPSData\u0012\u000b\n\u0003lat\u0018\u0001 \u0002(\u0001\u0012\u000c\n\u0004long\u0018\u0002 \u0002(\u0001\u0012\u000c\n\u0004time\u0018\u0003 \u0002(\u0003\u0012\u0010\n\u0008accuracy\u0018\u0004 \u0001(\u0002\"\u0083\u0001\n\u0010LocationResponse\u0012&\n\u0005error\u0018\u0002 \u0001(\u000e2\u0017.LocationResponse.Error\u0012\u0010\n\u0008errorMsg\u0018\u0003 \u0001(\t\"5\n\u0005Error\u0012\u0019\n\u0015INTERNAL_SERVER_ERROR\u0010\u0001\u0012\u0011\n\rWRONG_VERSION\u0010\u0002B/\n"

    const-string v1, "+com.motorola.blur.service.location.protocolH\u0002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/blur/service/location/protocol/LocationProtocol$1;

    invoke-direct {v1}, Lcom/motorola/blur/service/location/protocol/LocationProtocol$1;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_GPSData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_GPSData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_GPSData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_GPSData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_CellIdData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_CellIdData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_CellIdData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_Location_CellIdData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_LocationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_LocationResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_LocationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->internal_static_LocationResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/location/protocol/LocationProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
