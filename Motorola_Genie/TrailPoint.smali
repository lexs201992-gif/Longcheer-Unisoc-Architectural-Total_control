.class public Lcom/orange/dgil/trail/core/common/TrailPoint;
.super Ljava/lang/Object;
.source "TrailPoint.java"


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->x:I

    iput v0, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->y:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->x:I

    iput v0, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->y:I

    invoke-virtual {p0, p1, p2}, Lcom/orange/dgil/trail/core/common/TrailPoint;->set(II)V

    return-void
.end method


# virtual methods
.method public deepCopy(Lcom/orange/dgil/trail/core/common/TrailPoint;)V
    .locals 1

    iget v0, p1, Lcom/orange/dgil/trail/core/common/TrailPoint;->x:I

    iput v0, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->x:I

    iget p1, p1, Lcom/orange/dgil/trail/core/common/TrailPoint;->y:I

    iput p1, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->y:I

    return-void
.end method

.method public getDistanceTo(Lcom/orange/dgil/trail/core/common/TrailPoint;)D
    .locals 2

    iget v0, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->x:I

    invoke-virtual {p1}, Lcom/orange/dgil/trail/core/common/TrailPoint;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->y:I

    invoke-virtual {p1}, Lcom/orange/dgil/trail/core/common/TrailPoint;->getY()I

    move-result p1

    sub-int/2addr v1, p1

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->y:I

    return v0
.end method

.method public isSameAs(Lcom/orange/dgil/trail/core/common/TrailPoint;)Z
    .locals 2

    iget v0, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->x:I

    iget v1, p1, Lcom/orange/dgil/trail/core/common/TrailPoint;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->y:I

    iget p1, p1, Lcom/orange/dgil/trail/core/common/TrailPoint;->y:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public set(II)V
    .locals 0

    iput p1, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->x:I

    iput p2, p0, Lcom/orange/dgil/trail/core/common/TrailPoint;->y:I

    return-void
.end method
