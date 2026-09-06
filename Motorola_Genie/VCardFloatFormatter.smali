.class public Lezvcard/util/VCardFloatFormatter;
.super Ljava/text/DecimalFormat;
.source "VCardFloatFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lezvcard/util/VCardFloatFormatter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/text/DecimalFormat;-><init>()V

    invoke-virtual {p0, p1}, Lezvcard/util/VCardFloatFormatter;->setMaximumFractionDigits(I)V

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lezvcard/util/VCardFloatFormatter;->setMinimumFractionDigits(I)V

    :cond_0
    new-instance p1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {p1}, Ljava/text/DecimalFormatSymbols;-><init>()V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    invoke-virtual {p0, p1}, Lezvcard/util/VCardFloatFormatter;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    return-void
.end method
