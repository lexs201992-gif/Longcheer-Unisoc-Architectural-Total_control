.class public Lnet/oauth/signature/RSA_SHA1;
.super Lnet/oauth/signature/OAuthSignatureMethod;
.source "RSA_SHA1.java"


# static fields
.field public static final PRIVATE_KEY:Ljava/lang/String; = "RSA-SHA1.PrivateKey"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "RSA-SHA1.PublicKey"

.field public static final X509_CERTIFICATE:Ljava/lang/String; = "RSA-SHA1.X509Certificate"


# instance fields
.field private privateKey:Ljava/security/PrivateKey;

.field private publicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/oauth/signature/OAuthSignatureMethod;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method private getPrivateKeyFromDer([B)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method private getPrivateKeyFromPem(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p1}, Lnet/oauth/signature/RSA_SHA1;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->getPrivateKeyFromDer([B)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method private getPublicKeyFromDer([B)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private getPublicKeyFromDerCert([B)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string p0, "X509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private getPublicKeyFromPem(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p1}, Lnet/oauth/signature/RSA_SHA1;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromDer([B)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private getPublicKeyFromPemCert(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string p0, "X509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private sign([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iget-object p0, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "need to set private key with OAuthConsumer.setProperty when generating RSA-SHA1 signatures."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verify([B[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iget-object p0, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "need to set public key with  OAuthConsumer.setProperty when verifying RSA-SHA1 signatures."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->sign([B)[B

    move-result-object p0

    invoke-static {p0}, Lnet/oauth/signature/RSA_SHA1;->base64Encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/oauth/OAuthException;

    invoke-direct {p1, p0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/oauth/OAuthException;

    invoke-direct {p1, p0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected initialize(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;
        }
    .end annotation

    const-string v0, "X509Certificate set through RSA_SHA1.X509_CERTIFICATE must be of type X509Certificate, String, or byte[], and not "

    const-string v1, "Public key set through RSA_SHA1.PRIVATE_KEY must be of type PublicKey, String, or byte[], and not "

    const-string v2, "Private key set through RSA_SHA1.PRIVATE_KEY must be of type PrivateKey, String, or byte[], and not "

    invoke-super {p0, p1, p2}, Lnet/oauth/signature/OAuthSignatureMethod;->initialize(Ljava/lang/String;Lnet/oauth/OAuthAccessor;)V

    iget-object p1, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v3, "RSA-SHA1.PrivateKey"

    invoke-virtual {p1, v3}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_0
    instance-of v3, p1, Ljava/security/PrivateKey;

    if-eqz v3, :cond_0

    check-cast p1, Ljava/security/PrivateKey;

    iput-object p1, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    goto :goto_0

    :cond_0
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->getPrivateKeyFromPem(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    goto :goto_0

    :cond_1
    instance-of v3, p1, [B

    if-eqz v3, :cond_2

    check-cast p1, [B

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->getPrivateKeyFromDer([B)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lnet/oauth/signature/RSA_SHA1;->privateKey:Ljava/security/PrivateKey;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object p1, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string v2, "RSA-SHA1.PublicKey"

    invoke-virtual {p1, v2}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    instance-of p2, p1, Ljava/security/PublicKey;

    if-eqz p2, :cond_4

    check-cast p1, Ljava/security/PublicKey;

    iput-object p1, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    goto/16 :goto_1

    :cond_4
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_5

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromPem(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    goto/16 :goto_1

    :cond_5
    instance-of p2, p1, [B

    if-eqz p2, :cond_6

    check-cast p1, [B

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromDer([B)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object p1, p2, Lnet/oauth/OAuthAccessor;->consumer:Lnet/oauth/OAuthConsumer;

    const-string p2, "RSA-SHA1.X509Certificate"

    invoke-virtual {p1, p2}, Lnet/oauth/OAuthConsumer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    instance-of p2, p1, Ljava/security/cert/X509Certificate;

    if-eqz p2, :cond_8

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    goto :goto_1

    :cond_8
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_9

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromPemCert(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    goto :goto_1

    :cond_9
    instance-of p2, p1, [B

    if-eqz p2, :cond_a

    check-cast p1, [B

    invoke-direct {p0, p1}, Lnet/oauth/signature/RSA_SHA1;->getPublicKeyFromDerCert([B)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lnet/oauth/signature/RSA_SHA1;->publicKey:Ljava/security/PublicKey;

    goto :goto_1

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/oauth/OAuthException;

    invoke-direct {p1, p0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected isValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oauth/OAuthException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lnet/oauth/signature/RSA_SHA1;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/oauth/signature/RSA_SHA1;->verify([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/oauth/OAuthException;

    invoke-direct {p1, p0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/oauth/OAuthException;

    invoke-direct {p1, p0}, Lnet/oauth/OAuthException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
