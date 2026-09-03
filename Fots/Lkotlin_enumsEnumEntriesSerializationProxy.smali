.class public final Lkotlin/enums/EnumEntriesSerializationProxy;
.super Ljava/lang/Object;
.source "EnumEntriesSerializationProxy.kt"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final Companion:Lkotlin/enums/EnumEntriesSerializationProxy$Companion;

.field private static final serialVersionUID:J


# instance fields
.field private final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/enums/EnumEntriesSerializationProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/enums/EnumEntriesSerializationProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/enums/EnumEntriesSerializationProxy;->Companion:Lkotlin/enums/EnumEntriesSerializationProxy$Companion;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Enum;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lkotlin/enums/EnumEntriesSerializationProxy;->c:Ljava/lang/Class;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/enums/EnumEntriesSerializationProxy;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, [Ljava/lang/Enum;

    invoke-static {p0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object p0

    return-object p0
.end method
