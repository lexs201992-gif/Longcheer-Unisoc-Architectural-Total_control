.class public final Lcom/motorola/ccc/sso/accounts/AppMotoAccount;
.super Ljava/lang/Object;
.source "AppMotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException;
    }
.end annotation


# static fields
.field private static final KEY_APP_LOGIN:Ljava/lang/String; = "app:login"

.field private static final TAG:Ljava/lang/String; = "AppMotAcct"

.field private static sAccount:Lcom/motorola/ccc/sso/accounts/MotoAccount;

.field private static sContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DEBUG()Z
    .locals 2

    const-string v0, "AppMotAcct"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static assertNotInitialized()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException;
        }
    .end annotation

    sget-object v0, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException;

    const-string v1, "init() must be called before using this method"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException;-><init>(Ljava/lang/String;Lcom/motorola/ccc/sso/accounts/AppMotoAccount$1;)V

    throw v0
.end method

.method public static exists()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Lcom/motorola/ccc/sso/accounts/AccountNotFoundException;

    invoke-direct {v0}, Lcom/motorola/ccc/sso/accounts/AccountNotFoundException;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    const/4 v0, 0x0

    return v0
.end method

.method private static declared-synchronized getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException;
        }
    .end annotation

    const-class v0, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->assertNotInitialized()V

    sget-object v1, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sAccount:Lcom/motorola/ccc/sso/accounts/MotoAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException;

    const-string v2, "account is null"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException;-><init>(Ljava/lang/String;Lcom/motorola/ccc/sso/accounts/AppMotoAccount$1;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCachedMotoAuthToken()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getCachedMotoAuthToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCachedProviderAuthToken()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getCachedProviderAuthToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLogin()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getLogin()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLoginFormat()Lcom/motorola/ccc/sso/accounts/MotoAccount$LoginFormat;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getLoginFormat()Lcom/motorola/ccc/sso/accounts/MotoAccount$LoginFormat;

    move-result-object v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/motorola/ccc/sso/accounts/MotoAccount$LoginFormat;->Unknown:Lcom/motorola/ccc/sso/accounts/MotoAccount$LoginFormat;

    return-object v0
.end method

.method public static getMotoAuthToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/ccc/sso/accounts/AccountAuthException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getMotoAuthToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    new-instance v0, Lcom/motorola/ccc/sso/accounts/AccountAuthException;

    sget-object v1, Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;->AppAccountNotFound:Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;

    invoke-direct {v0, v1}, Lcom/motorola/ccc/sso/accounts/AccountAuthException;-><init>(Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;)V

    throw v0
.end method

.method public static getProvider()Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getProvider()Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;

    move-result-object v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getProviderAuthToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/ccc/sso/accounts/AccountAuthException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getProviderAuthToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    new-instance v0, Lcom/motorola/ccc/sso/accounts/AccountAuthException;

    sget-object v1, Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;->AppAccountNotFound:Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;

    invoke-direct {v0, v1}, Lcom/motorola/ccc/sso/accounts/AccountAuthException;-><init>(Lcom/motorola/ccc/sso/accounts/AccountAuthException$AuthError;)V

    throw v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getUserId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getUserName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVersion()I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->getVersion()I

    move-result v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    const/4 v0, 0x0

    return v0
.end method

.method private static declared-synchronized handleAccountNotFound()V
    .locals 5

    const-string v0, "removed: "

    const-class v1, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    sput-object v3, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sAccount:Lcom/motorola/ccc/sso/accounts/MotoAccount;

    const-string v4, "app:login"

    invoke-static {v2, v4, v3}, Lcom/motorola/ccc/sso/accounts/Utils$Prefs;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v3, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sContext:Landroid/content/Context;

    const-string v4, "app:login"

    invoke-static {v3, v4}, Lcom/motorola/ccc/sso/accounts/Utils$Prefs;->removeValue(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "AppMotAcct"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/ccc/util/StringUtils;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->get(Landroid/content/Context;)Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->onAppAccountRemoved(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "context must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "login changed: "

    const-class v1, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v2, "app context is null"

    invoke-static {p0, v2}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertArgNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sContext:Landroid/content/Context;

    const-string v2, "app:login"

    invoke-static {p0, v2, p1}, Lcom/motorola/ccc/sso/accounts/Utils$Prefs;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->DEBUG()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "AppMotAcct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/ccc/util/StringUtils;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public static invalidateMotoAuthToken()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->invalidateMotoAuthToken()V
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    :goto_0
    return-void
.end method

.method public static invalidateProviderAuthToken()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->invalidateProviderAuthToken()V
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    :goto_0
    return-void
.end method

.method public static isMotoAuthTokenValid()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->isCachedMotoAuthTokenValid()Z

    move-result v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isProviderAuthTokenValid()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->isCachedProviderAuthTokenValid()Z

    move-result v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isVerified()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->isVerified()Z

    move-result v0
    :try_end_0
    .catch Lcom/motorola/ccc/sso/accounts/AccountNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    :catch_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V

    :catch_1
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException;
        }
    .end annotation

    const-class v0, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->assertNotInitialized()V

    const/4 v1, 0x0

    sput-object v1, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sAccount:Lcom/motorola/ccc/sso/accounts/MotoAccount;

    sget-object v1, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sContext:Landroid/content/Context;

    const-string v2, "app:login"

    invoke-static {v1, v2}, Lcom/motorola/ccc/sso/accounts/Utils$Prefs;->removeValue(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->DEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AppMotAcct"

    const-string v2, "cleared"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized restore()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException;
        }
    .end annotation

    const-string v0, "restored: "

    const-class v1, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->assertNotInitialized()V

    sget-object v2, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sContext:Landroid/content/Context;

    const-string v3, "app:login"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/motorola/ccc/sso/accounts/Utils$Prefs;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->DEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppMotAcct"

    const-string v2, "not stored"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return v4

    :cond_1
    :try_start_1
    sget-object v3, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->get(Landroid/content/Context;)Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v5, v3, Lcom/motorola/ccc/sso/accounts/MotoAccount;->login:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    sput-object v3, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sAccount:Lcom/motorola/ccc/sso/accounts/MotoAccount;

    const-string v2, "AppMotAcct"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sAccount:Lcom/motorola/ccc/sso/accounts/MotoAccount;

    iget-object v0, v0, Lcom/motorola/ccc/sso/accounts/MotoAccount;->login:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/ccc/util/StringUtils;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->handleAccountNotFound()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return v4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized set(Lcom/motorola/ccc/sso/accounts/MotoAccount;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/ccc/sso/accounts/AppMotoAccount$NotInitializedException;
        }
    .end annotation

    const-string v0, "stored: "

    const-class v1, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->assertNotInitialized()V

    const-string v2, "account is null"

    invoke-static {p0, v2}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertArgNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sAccount:Lcom/motorola/ccc/sso/accounts/MotoAccount;

    sget-object v2, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sContext:Landroid/content/Context;

    const-string v3, "app:login"

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccount;->login:Ljava/lang/String;

    invoke-static {v2, v3, p0}, Lcom/motorola/ccc/sso/accounts/Utils$Prefs;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->DEBUG()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "AppMotAcct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->sAccount:Lcom/motorola/ccc/sso/accounts/MotoAccount;

    iget-object v0, v0, Lcom/motorola/ccc/sso/accounts/MotoAccount;->login:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/ccc/util/StringUtils;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
