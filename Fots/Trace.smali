.class public final Landroidx/compose/runtime/internal/Trace;
.super Ljava/lang/Object;
.source "Trace.android.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/internal/Trace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/internal/Trace;

    invoke-direct {v0}, Landroidx/compose/runtime/internal/Trace;-><init>()V

    sput-object v0, Landroidx/compose/runtime/internal/Trace;->INSTANCE:Landroidx/compose/runtime/internal/Trace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final beginSection(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final endSection(Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
