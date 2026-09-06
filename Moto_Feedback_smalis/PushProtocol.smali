.class public final Lcom/motorola/blur/service/push/protocol/PushProtocol;
.super Ljava/lang/Object;
.source "PushProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/push/protocol/PushProtocol$PushDataWrapper;,
        Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataActionRequest;,
        Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushDataAction;,
        Lcom/motorola/blur/service/push/protocol/PushProtocol$_PushData;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_PushDataWrapper_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_PushDataWrapper_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static__PushDataActionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static__PushDataActionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static__PushDataAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static__PushDataAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static__PushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static__PushData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\n\u0013push_protocol.proto\"N\n\t_PushData\u0012\u0012\n\nsequenceId\u0018\u0001 \u0002(\u0005\u0012\r\n\u0005appId\u0018\u0002 \u0002(\t\u0012\u0010\n\u0008dataType\u0018\u0003 \u0001(\t\u0012\u000c\n\u0004data\u0018\u0004 \u0001(\t\"\u0090\u0001\n\u000f_PushDataAction\u0012\u0011\n\taccountId\u0018\u0001 \u0002(\u0003\u0012\u0010\n\u0008deviceId\u0018\u0002 \u0002(\u0003\u0012\u000e\n\u0006action\u0018\u0003 \u0002(\u0005\u0012\u0011\n\tdelayTime\u0018\u0004 \u0002(\u0003\u0012\u000e\n\u0006expiry\u0018\u0005 \u0002(\u0003\u0012\u000b\n\u0003key\u0018\u0007 \u0001(\t\u0012\u0018\n\u0004data\u0018\u0008 \u0002(\u000b2\n._PushData\"L\n\u0016_PushDataActionRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\u0005\u0012!\n\u0007actions\u0018\u0002 \u0003(\u000b2\u0010._PushDataAction\"\u009a\u0001\n\u000fPushDataWrapper\u0012/\n\u0006format\u0018\u0001 \u0002(\u000e2\u001f.PushDataWrapper.PushDataFormat\u0012\u0018\n\u0010j"

    const-string v1, "sonPushDataList\u0018\u0002 \u0003(\t\u0012\u0017\n\u000fgpbPushDataList\u0018\u0003 \u0003(\u000c\"#\n\u000ePushDataFormat\u0012\u0008\n\u0004JSON\u0010\u0000\u0012\u0007\n\u0003GPB\u0010\u0001B+\n\'com.motorola.blur.service.push.protocolH\u0002"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/blur/service/push/protocol/PushProtocol$1;

    invoke-direct {v1}, Lcom/motorola/blur/service/push/protocol/PushProtocol$1;-><init>()V

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

    sget-object v0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushDataAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushDataAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushDataAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushDataAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushDataActionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushDataActionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushDataActionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static__PushDataActionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static_PushDataWrapper_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static_PushDataWrapper_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static_PushDataWrapper_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->internal_static_PushDataWrapper_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/motorola/blur/service/push/protocol/PushProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
