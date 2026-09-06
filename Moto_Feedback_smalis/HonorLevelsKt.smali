.class public final Lcom/motorola/feedback/utils/HonorLevelsKt;
.super Ljava/lang/Object;
.source "HonorLevels.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "HONOR_BADGE_MOTOROLA_BUILDER_START_COUNT",
        "",
        "HONOR_BADGE_MOTOROLA_CONTRIBUTOR_START_COUNT",
        "HONOR_BADGE_MOTOROLA_DEDICATED_FAN_START_COUNT",
        "HONOR_BADGE_MOTOROLA_MISSIONARY_START_COUNT",
        "HONOR_BADGE_MOTOROLA_USER_START_COUNT",
        "getHonorTitle",
        "",
        "it",
        "feedback_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HONOR_BADGE_MOTOROLA_BUILDER_START_COUNT:I = 0x28

.field private static final HONOR_BADGE_MOTOROLA_CONTRIBUTOR_START_COUNT:I = 0x5

.field private static final HONOR_BADGE_MOTOROLA_DEDICATED_FAN_START_COUNT:I = 0xf

.field private static final HONOR_BADGE_MOTOROLA_MISSIONARY_START_COUNT:I = 0x50

.field private static final HONOR_BADGE_MOTOROLA_USER_START_COUNT:I


# direct methods
.method public static final getHonorTitle(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    const-string p0, "MOTOROLA_USER"

    goto :goto_4

    :cond_1
    const/16 v3, 0xf

    if-gt v0, p0, :cond_2

    if-ge p0, v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    const-string p0, "CONTRIBUTOR"

    goto :goto_4

    :cond_3
    const/16 v0, 0x28

    if-gt v3, p0, :cond_4

    if-ge p0, v0, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-eqz v3, :cond_5

    const-string p0, "DEDICATED_FAN"

    goto :goto_4

    :cond_5
    if-gt v0, p0, :cond_6

    const/16 v0, 0x50

    if-ge p0, v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    if-eqz v1, :cond_7

    const-string p0, "BUILDER"

    goto :goto_4

    :cond_7
    const-string p0, "MISSIONARY"

    :goto_4
    return-object p0
.end method
