.class public final Lcom/motorola/ccc/sso/accounts/MotoAccountManager;
.super Ljava/lang/Object;
.source "MotoAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_ACCOUNT_ADDED:Ljava/lang/String; = "com.motorola.ccc.sso.action.ACCOUNT_ADDED"

.field public static final ACTION_ACCOUNT_AUTH_CHANGED:Ljava/lang/String; = "com.motorola.ccc.sso.action.ACCOUNT_LOGIN_CHANGED"

.field public static final ACTION_ACCOUNT_REMOVED:Ljava/lang/String; = "com.motorola.ccc.sso.action.ACCOUNT_REMOVED"

.field protected static final ACTION_ACCOUNT_VALIDATION_REQUESTED:Ljava/lang/String; = "com.motorola.ccc.sso.action.ACCOUNT_VALIDATION_REQUESTED"

.field private static final ACTION_ADD_ACCOUNT:Ljava/lang/String; = "com.motorola.ccc.sso.action.ADD_ACCOUNT"

.field private static final ACTION_SETTINGS:Ljava/lang/String; = "com.motorola.ccc.sso.action.SETTINGS"

.field public static final EXTRA_AUTHENTICATED:Ljava/lang/String; = "authenticated"

.field public static final EXTRA_GOOGLE_ID:Ljava/lang/String; = "googleId"

.field public static final EXTRA_LOGIN:Ljava/lang/String; = "login"

.field public static final EXTRA_PROVIDER:Ljava/lang/String; = "provider"

.field public static final EXTRA_SUPPRESS_UI:Ljava/lang/String; = "suppressUI"

.field public static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final TAG:Ljava/lang/String; = "MotAcctManager"

.field private static sInstance:Lcom/motorola/ccc/sso/accounts/MotoAccountManager;


# instance fields
.field private final mAccountAuthenticator:Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;

.field private final mAccountChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

.field private final mContext:Landroid/content/Context;

.field private final mMainHandler:Landroid/os/Handler;

.field private mSupportedProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    iput-object p1, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/motorola/ccc/cce/CCEUtils;->amIProxyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/ccc/sso/accounts/SystemAccountHelper;

    invoke-direct {v0, p1}, Lcom/motorola/ccc/sso/accounts/SystemAccountHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/ccc/sso/accounts/PrivateAccountHelper;

    invoke-direct {v0, p1}, Lcom/motorola/ccc/sso/accounts/PrivateAccountHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    :goto_0
    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    new-instance v1, Lcom/motorola/ccc/sso/accounts/MotoAccountManager$1;

    invoke-direct {v1, p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager$1;-><init>(Lcom/motorola/ccc/sso/accounts/MotoAccountManager;)V

    invoke-interface {v0, v1}, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;->setAccountChangeCallbacks(Lcom/motorola/ccc/sso/accounts/MotoAccountHelper$AccountChangeCallbacks;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/motorola/ccc/sso/accounts/ExternalAccountHelper;

    invoke-direct {v0, p1}, Lcom/motorola/ccc/sso/accounts/ExternalAccountHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    :goto_1
    new-instance v0, Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;

    invoke-direct {v0, p1}, Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountAuthenticator:Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;

    invoke-direct {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->checkAccount()V

    invoke-direct {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->initComponents()V

    return-void
.end method

.method private static DEBUG()Z
    .locals 2

    const-string v0, "MotAcctManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static VERBOSE()Z
    .locals 2

    const-string v0, "MotAcctManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/motorola/ccc/sso/accounts/MotoAccountManager;Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->hasAccountChangeListener(Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;)Z

    move-result p0

    return p0
.end method

.method private accountExists()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    invoke-interface {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;->accountExists()Z

    move-result p0

    return p0
.end method

.method private checkAccount()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    invoke-interface {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;->checkAccount()V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/motorola/ccc/sso/accounts/MotoAccountManager;
    .locals 4

    const-string v0, "app context is null ("

    const-class v1, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    monitor-enter v1

    :try_start_0
    const-string v2, "context is null"

    invoke-static {p0, v2}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertArgNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->sInstance:Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "MotAcctManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    invoke-direct {v0, p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    invoke-direct {p0, v2}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->sInstance:Lcom/motorola/ccc/sso/accounts/MotoAccountManager;

    :cond_1
    sget-object p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->sInstance:Lcom/motorola/ccc/sso/accounts/MotoAccountManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method private hasAccountChangeListener(Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initComponents()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->accountExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountAuthenticator:Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;->activate()V

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->requestAccountAuthValidation()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountAuthenticator:Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;->deactivate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountAuthenticator:Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;->deactivate()V

    :goto_0
    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    invoke-interface {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;->whatAccountAccess()Lcom/motorola/ccc/sso/accounts/MotoAccountHelper$AccountAccess;

    move-result-object v0

    sget-object v1, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper$AccountAccess;->External:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper$AccountAccess;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/ccc/sso/accounts/MotoAccountChangeReceiver;->setEnabled(Landroid/content/Context;Z)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    invoke-interface {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;->whatAccountAccess()Lcom/motorola/ccc/sso/accounts/MotoAccountHelper$AccountAccess;

    move-result-object v0

    sget-object v1, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper$AccountAccess;->System:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper$AccountAccess;

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/ccc/sso/service/GAMSMotoIdService;->setEnabled(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method private onAccountChanged(ZLjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "login is null"

    invoke-static {p2, v0}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountAuthenticator:Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;->activate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountAuthenticator:Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;

    invoke-virtual {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;->deactivate()V

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "com.motorola.ccc.sso.action.ACCOUNT_ADDED"

    goto :goto_1

    :cond_1
    const-string v0, "com.motorola.ccc.sso.action.ACCOUNT_REMOVED"

    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "login"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/ccc/cce/CCEUtils;->amIProxyApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    const-string v3, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-static {v2, v1, v3}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/motorola/blur/service/blur/BSUtils;->sendPrivateBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_2
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->DEBUG()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MotAcctManager"

    const-string v2, " sent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p1, :cond_4

    invoke-static {}, Lcom/motorola/ccc/sso/accounts/AppMotoAccount;->exists()Z

    :cond_4
    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;

    new-instance v3, Lcom/motorola/ccc/sso/accounts/MotoAccountManager$2;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager$2;-><init>(Lcom/motorola/ccc/sso/accounts/MotoAccountManager;Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addAccountChangeListener(Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;)V
    .locals 4

    const-string v0, "+ account change listener "

    const-string v1, "listener is null"

    invoke-static {p1, v1}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertArgNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->VERBOSE()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string p1, "MotAcctManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "listener is already added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public canModifyAccount()Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/ccc/cce/CCEUtils;->isNonMotoDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/motorola/ccc/cce/CCEUtils;->amIProxyApp(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected canUseExternalApi()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    invoke-interface {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;->whatAccountAccess()Lcom/motorola/ccc/sso/accounts/MotoAccountHelper$AccountAccess;

    move-result-object p0

    sget-object v0, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper$AccountAccess;->External:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper$AccountAccess;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected createAccount(Lcom/motorola/ccc/sso/accounts/MotoAccount$AccountData;)Z
    .locals 1

    invoke-static {}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertNotMainThread()V

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->accountExists()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/ccc/sso/accounts/MotoAccount$AccountData;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    invoke-interface {p0, p1}, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;->createAccount(Lcom/motorola/ccc/sso/accounts/MotoAccount$AccountData;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid account data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "account already exists, only single account supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "account creation is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccount()Lcom/motorola/ccc/sso/accounts/MotoAccount;
    .locals 1

    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    invoke-interface {v0, p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;->getAccount(Lcom/motorola/ccc/sso/accounts/MotoAccountManager;)Lcom/motorola/ccc/sso/accounts/MotoAccount;

    move-result-object p0

    return-object p0
.end method

.method protected getAccountAuthenticator()Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;
    .locals 0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountAuthenticator:Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;

    return-object p0
.end method

.method protected getAccountData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/ccc/sso/accounts/AccountNotFoundException;
        }
    .end annotation

    const-string v0, "login is null"

    invoke-static {p1, v0}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertArgNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key is null"

    invoke-static {p2, v0}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertArgNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    invoke-interface {p0, p1, p2}, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;->getAccountData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getProviderAuthenticator(Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;)Lcom/motorola/ccc/sso/accounts/ProviderAuthenticator;
    .locals 1

    const-string v0, "provider is null"

    invoke-static {p1, v0}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertArgNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;->Google:Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/motorola/ccc/sso/accounts/GoogleAuthenticator;->get(Landroid/content/Context;)Lcom/motorola/ccc/sso/accounts/GoogleAuthenticator;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;->Motorola:Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " provider is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MotAcctManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSupportedProviders()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mSupportedProviders:Ljava/util/Set;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    const-string v1, "MotAcctManager"

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mSupportedProviders:Ljava/util/Set;

    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/motorola/ccc/cce/R$string;->motoid_supported_providers:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allowed providers: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/motorola/ccc/sso/accounts/Utils$Convert;->providersToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;

    invoke-virtual {p0, v2}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->getProviderAuthenticator(Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;)Lcom/motorola/ccc/sso/accounts/ProviderAuthenticator;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/motorola/ccc/sso/accounts/ProviderAuthenticator;->isSupported()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    sget-object v3, Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;->Motorola:Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;

    if-ne v2, v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mSupportedProviders:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canUseExternalApi()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/ccc/sso/accounts/MotoAccountExternalApi;->getSupportedProviders(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mSupportedProviders:Ljava/util/Set;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "supported providers: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mSupportedProviders:Ljava/util/Set;

    invoke-static {v2}, Lcom/motorola/ccc/sso/accounts/Utils$Convert;->providersToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "wrong call redirection"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mSupportedProviders:Ljava/util/Set;

    return-object p0
.end method

.method public isProviderSupported(Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;)Z
    .locals 1

    const-string v0, "provider is null"

    invoke-static {p1, v0}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertArgNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->getSupportedProviders()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public newAccountSettingsIntent()Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/motorola/ccc/sso/ui/MainSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string p0, "com.motorola.ccc.sso.action.SETTINGS"

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public newCreateAccountIntent(Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/motorola/ccc/sso/ui/CreateAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.ccc.sso.action.ADD_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "provider"

    invoke-virtual {p1}, Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "login"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;->Google:Lcom/motorola/ccc/sso/accounts/MotoAccount$Provider;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "googleId"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p0, "suppressUI"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected onAccountAuthChanged(Ljava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "login is null"

    invoke-static {p1, v0}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.ccc.sso.action.ACCOUNT_LOGIN_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "login"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "authenticated"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/ccc/cce/CCEUtils;->amIProxyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    const-string v2, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-static {v1, v0, v2}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendPrivateBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    invoke-static {}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->DEBUG()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MotAcctManager"

    const-string v1, "com.motorola.ccc.sso.action.ACCOUNT_LOGIN_CHANGED sent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;

    new-instance v3, Lcom/motorola/ccc/sso/accounts/MotoAccountManager$4;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager$4;-><init>(Lcom/motorola/ccc/sso/accounts/MotoAccountManager;Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected onAccountCreated(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->onAccountChanged(ZLjava/lang/String;)V

    return-void
.end method

.method protected onAccountRemoved(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->onAccountChanged(ZLjava/lang/String;)V

    return-void
.end method

.method protected onAppAccountRemoved(Ljava/lang/String;)V
    .locals 4

    const-string v0, "login is null"

    invoke-static {p1, v0}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;

    new-instance v3, Lcom/motorola/ccc/sso/accounts/MotoAccountManager$3;

    invoke-direct {v3, p0, v2, p1}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager$3;-><init>(Lcom/motorola/ccc/sso/accounts/MotoAccountManager;Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected removeAccount()Z
    .locals 1

    invoke-static {}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertNotMainThread()V

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    invoke-interface {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;->removeAccount()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "account removal is not allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeAccountChangeListener(Lcom/motorola/ccc/sso/accounts/MotoAccountManager$AccountChangeListener;)V
    .locals 4

    const-string v0, "- account change listener "

    const-string v1, "listener is null"

    invoke-static {p1, v1}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertArgNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "MotAcctManager"

    const-string p1, "listener was not previously added"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->VERBOSE()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string p1, "MotAcctManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountChangeListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestAccountAuthValidation()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.ccc.sso.action.ACCOUNT_VALIDATION_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v1

    const-string v2, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/ccc/cce/CCEUtils;->amIProxyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v2}, Lcom/motorola/blur/service/blur/BSUtils;->sendPrivateBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendPrivateBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v2}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected requestAccountRemovalWithLogout()V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountRemovalService;->activate(Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "account removal is not allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected setAccountData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/ccc/sso/accounts/AccountNotFoundException;
        }
    .end annotation

    const-string v0, "login is null"

    invoke-static {p1, v0}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertArgNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key is null"

    invoke-static {p2, v0}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertArgNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->isUnprotectedKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "account modification is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/motorola/ccc/sso/accounts/MotoAccount;->isReadOnlyKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountHelper:Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;

    invoke-interface {p0, p1, p2, p3}, Lcom/motorola/ccc/sso/accounts/MotoAccountHelper;->setAccountData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "read only key: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public validateAccountAuthenticated()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/ccc/sso/accounts/AccountNotFoundException;,
            Lcom/motorola/ccc/sso/accounts/AccountAuthException;
        }
    .end annotation

    invoke-static {}, Lcom/motorola/ccc/sso/accounts/Utils$Assert;->assertNotMainThread()V

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canModifyAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mAccountAuthenticator:Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;

    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountAuthenticator;->validateAccountAuthenticated()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->canUseExternalApi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/ccc/sso/accounts/MotoAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/motorola/ccc/sso/accounts/MotoAccountExternalApi;->validateAccountAuthenticated(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "wrong call redirection"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
