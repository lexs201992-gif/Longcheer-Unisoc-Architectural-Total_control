.class public Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker;
.super Landroid/content/BroadcastReceiver;
.source "LenovoAccountTracker.java"


# static fields
.field private static final LOGEVENT_EVENT_LENOVO_ID_STATS:Ljava/lang/String; = "LENOVO_ID_STATS"

.field private static final LOGEVENT_KEY_LOGIN_STATUS:Ljava/lang/String; = "login_status"

.field private static final LOGEVENT_KEY_PROVIDER_TYPE:Ljava/lang/String; = "login_provider"

.field private static final LOGEVENT_KEY_UID:Ljava/lang/String; = "uid"

.field private static final LOGEVENT_TAG_CCESTATS:Ljava/lang/String; = "MOT_CCE_STATS"

.field private static final LOGEVENT_VERSION:Ljava/lang/String; = "1.00"

.field private static final LOG_TAG:Ljava/lang/String; = "LenovoAccountTracker"

.field private static final signInTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _lenovoAccountExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker$1;

    invoke-direct {v0}, Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker$1;-><init>()V

    sput-object v0, Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker;->signInTypeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker;Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/AccountInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker;->checkinLenovoID(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/AccountInfo;)V

    return-void
.end method

.method private checkinLenovoID(Landroid/content/Context;Lcom/lenovo/lsf/lenovoid/AccountInfo;)V
    .locals 9

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getStatus(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker;->signInTypeMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getSigninType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/motorola/blur/checkinutil/CheckinEventWrapper;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/motorola/blur/checkinutil/CheckinEventWrapper;

    const-string v4, "MOT_CCE_STATS"

    const-string v5, "LENOVO_ID_STATS"

    const-string v6, "1.00"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/motorola/blur/checkinutil/CheckinEventWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v3, "login_status"

    invoke-virtual {v2, v3, v0}, Lcom/motorola/blur/checkinutil/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "login_provider"

    invoke-virtual {v2, v0, v1}, Lcom/motorola/blur/checkinutil/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/lenovo/lsf/lenovoid/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "uid"

    invoke-virtual {v2, v0, p2}, Lcom/motorola/blur/checkinutil/CheckinEventWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/motorola/blur/checkinutil/CheckinEventWrapper;->publish(Landroid/content/ContentResolver;)V

    :cond_2
    return-void
.end method

.method private getUserID(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker;->_lenovoAccountExecutor:Ljava/util/concurrent/ExecutorService;

    :try_start_0
    new-instance v1, Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker$2;

    invoke-direct {v1, p0, p1}, Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker$2;-><init>(Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error in getting LenovoUserid"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LenovoAccountTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lcom/motorola/ccc/cce/CCEUtils;->isOneLenovoIDAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "LenovoAccountTracker"

    if-nez v0, :cond_0

    const-string p1, "Lenovo ID is not available"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/lenovo/lsf/lenovoid/LenovoIDApi;->getStatus(Landroid/content/Context;)Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lenovo/lsf/lenovoid/LOGIN_STATUS;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/motorola/ccc/cce/CCEUtils;->getLastLoginStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/motorola/ccc/cce/CCEUtils;->setLastLoginStatus(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/motorola/ccc/sso/accounts/LenovoAccountTracker;->getUserID(Landroid/content/Context;)V

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.motorola.blur.service.mmapi.force.login"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "KEY_REQUEST_REASON"

    const-string v1, "lenovo_account"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/motorola/ccc/cce/CCEUtils;->isMotoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    nop

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p1, "Null intent or action"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
