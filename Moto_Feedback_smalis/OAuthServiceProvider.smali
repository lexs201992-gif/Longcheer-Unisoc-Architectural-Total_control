.class public Lnet/oauth/OAuthServiceProvider;
.super Ljava/lang/Object;
.source "OAuthServiceProvider.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2de32b82e5c9fbeeL


# instance fields
.field public final accessTokenURL:Ljava/lang/String;

.field public final requestTokenURL:Ljava/lang/String;

.field public final userAuthorizationURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/oauth/OAuthServiceProvider;->requestTokenURL:Ljava/lang/String;

    iput-object p2, p0, Lnet/oauth/OAuthServiceProvider;->userAuthorizationURL:Ljava/lang/String;

    iput-object p3, p0, Lnet/oauth/OAuthServiceProvider;->accessTokenURL:Ljava/lang/String;

    return-void
.end method
