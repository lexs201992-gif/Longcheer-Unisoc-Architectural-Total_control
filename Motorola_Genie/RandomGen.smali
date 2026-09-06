.class public Lfr/bmartel/speedtest/utils/RandomGen;
.super Ljava/lang/Object;
.source "RandomGen.java"


# instance fields
.field private mFile:Ljava/io/File;

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lfr/bmartel/speedtest/utils/RandomGen;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public deleteFile()V
    .locals 1

    iget-object v0, p0, Lfr/bmartel/speedtest/utils/RandomGen;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public generateRandomArray(I)[B
    .locals 7

    new-array v0, p1, [B

    const v1, 0xfa00

    div-int v2, p1, v1

    rem-int/2addr p1, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    new-array v5, v1, [B

    iget-object v6, p0, Lfr/bmartel/speedtest/utils/RandomGen;->mRandom:Ljava/util/Random;

    invoke-virtual {v6, v5}, Ljava/util/Random;->nextBytes([B)V

    mul-int v6, v4, v1

    invoke-static {v5, v3, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    new-array v4, p1, [B

    iget-object v5, p0, Lfr/bmartel/speedtest/utils/RandomGen;->mRandom:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextBytes([B)V

    mul-int/2addr v2, v1

    invoke-static {v4, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method

.method public generateRandomFile(I)Ljava/io/RandomAccessFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "speed-test-random"

    const-string v1, ".tmp"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lfr/bmartel/speedtest/utils/RandomGen;->mFile:Ljava/io/File;

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lfr/bmartel/speedtest/utils/RandomGen;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    const v1, 0xfa00

    div-int v2, p1, v1

    rem-int/2addr p1, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-array v4, v1, [B

    iget-object v5, p0, Lfr/bmartel/speedtest/utils/RandomGen;->mRandom:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    new-array p1, p1, [B

    iget-object v1, p0, Lfr/bmartel/speedtest/utils/RandomGen;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_1
    return-object v0
.end method
