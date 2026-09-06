.class public Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;
.super Ljava/lang/Object;
.source "GDCertificate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;
    }
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x800

.field private static final TAG:Ljava/lang/String; = "GDCertificate"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPrivateKey:Ljava/security/PrivateKey;

.field private mRawCert:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized getPrivateKey()Ljava/security/PrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;
        }
    .end annotation

    const-string v0, "Invalid key spec: "

    const-string v1, "No such key algorithm: "

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->mPrivateKey:Ljava/security/PrivateKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    sget v2, Lcom/motorola/ccc/cce/R$raw;->key:I

    invoke-direct {p0, v2}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->readRawResource(I)[B

    move-result-object v2

    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->mPrivateKey:Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;-><init>(Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;-><init>(Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;Ljava/lang/String;)V

    throw v2

    :catch_2
    new-instance v0, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;

    const-string v1, "Failed to read key from resource"

    invoke-direct {v0, p0, v1}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;-><init>(Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->mPrivateKey:Ljava/security/PrivateKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readRawResource(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to close raw resource"

    iget-object p0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v1, v1, [B

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    sget-object p0, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    throw p1
.end method


# virtual methods
.method public declared-synchronized getCertificate()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;
        }
    .end annotation

    const-string v0, "Failed to read cert from raw resource: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->mRawCert:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    sget v1, Lcom/motorola/ccc/cce/R$raw;->cert:I

    invoke-direct {p0, v1}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->readRawResource(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->mRawCert:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;-><init>(Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;Ljava/lang/String;)V

    throw v2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->mRawCert:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SHA256withRSA"

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    invoke-direct {p0}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to sign: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;-><init>(Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid private key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;-><init>(Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No such signing algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;-><init>(Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;Ljava/lang/String;)V

    throw p2

    :catch_3
    new-instance p1, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;

    const-string p2, "Failed to read key from resource"

    invoke-direct {p1, p0, p2}, Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate$GDCException;-><init>(Lcom/motorola/blur/service/blur/deviceprovisioning/GDCertificate;Ljava/lang/String;)V

    throw p1
.end method
