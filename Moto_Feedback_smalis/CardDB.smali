.class public Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;
.super Ljava/lang/Object;
.source "CardDB.java"


# static fields
.field public static IN_APP_FEEDBACK:Ljava/lang/String; = "INAPPFEEDBACK"

.field public static final IN_APP_FEEDBACK_TIME_FRAME_IN_DAYS:I = 0x7

.field static KEY_APP_COUNTER:Ljava/lang/String; = "com.motorola.feedback.counter"

.field static KEY_APP_DESC:Ljava/lang/String; = "com.motorola.feedback.description"

.field static KEY_APP_NEGATIVE_TEXT:Ljava/lang/String; = "com.motorola.feedback.negative"

.field static KEY_APP_POSITIVE_TEXT:Ljava/lang/String; = "com.motorola.feedback.positive"

.field static KEY_APP_STYLE:Ljava/lang/String; = "com.motorola.feedback.style"

.field static KEY_APP_TITLE:Ljava/lang/String; = "com.motorola.feedback.title"

.field private static KEY_CRITICAL_PRIORITY_LAST_REQ:Ljava/lang/String; = "com.motorola.feedback.critical"

.field private static KEY_HIGH_PRIORITY_LAST_REQ:Ljava/lang/String; = "com.motorola.feedback.high"

.field public static KEY_LAST_REQUEST_TIME:Ljava/lang/String; = "com.motorola.feedback.lastrequest"

.field private static KEY_NORMAL_PRIORITY_LAST_REQ:Ljava/lang/String; = "com.motorola.feedback.normal"

.field public static final PRIORITY_CRITICAL:I = 0x1

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_NORMAL:I = 0x3

.field private static preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static checkForNullKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private static editPreferenceForLong(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->checkForNullKey(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static getLastRequestTime(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_NORMAL_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getPreferenceLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_HIGH_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getPreferenceLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_CRITICAL_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getPreferenceLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getListString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->preferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u201a\u2017\u201a"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getNextRequestTime(Landroid/content/Context;I)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "priority"
        }
    .end annotation

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->preferences:Landroid/content/SharedPreferences;

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0

    :cond_0
    sget-object v2, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_CRITICAL_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getTimeFrameBasedOnPriority(I)I

    move-result p0

    invoke-static {v2, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->isTimeOutFinished(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_HIGH_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getTimeFrameBasedOnPriority(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->isTimeOutFinished(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_NORMAL_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getTimeFrameBasedOnPriority(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->isTimeOutFinished(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0

    :cond_1
    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_LAST_REQUEST_TIME:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getPreferenceLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getTimeFrameBasedOnPriority(I)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0

    :cond_2
    sget-object v1, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_CRITICAL_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getTimeFrameBasedOnPriority(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->isTimeOutFinished(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_HIGH_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getTimeFrameBasedOnPriority(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->isTimeOutFinished(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0

    :cond_3
    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getLastRequestTime(I)J

    move-result-wide v1

    invoke-static {v0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getLastRequestTime(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    invoke-static {v0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getLastRequestTime(I)J

    move-result-wide v0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getTimeFrameBasedOnPriority(I)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getLastRequestTime(I)J

    move-result-wide v0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getTimeFrameBasedOnPriority(I)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_CRITICAL_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getTimeFrameBasedOnPriority(I)I

    move-result p0

    invoke-static {v0, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->isTimeOutFinished(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0

    :cond_6
    invoke-static {p1}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getLastRequestTime(I)J

    move-result-wide v0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getTimeFrameBasedOnPriority(I)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    goto :goto_0
.end method

.method private static getPreferenceLong(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getTimeFrameBasedOnPriority(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static isEligibleForInvitation(Landroid/content/Context;I)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "priority"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getNextRequestTime(Landroid/content/Context;I)J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static isTimeOutFinished(Ljava/lang/String;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "priorityTimeFrameInDays"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getPreferenceLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static putInt(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->checkForNullKey(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static putListString(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "stringList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->checkForNullKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    sget-object v0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "\u201a\u2017\u201a"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastRequestTime(Landroid/content/Context;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "priority",
            "timeInMillis"
        }
    .end annotation

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->preferences:Landroid/content/SharedPreferences;

    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_LAST_REQUEST_TIME:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->editPreferenceForLong(Ljava/lang/String;J)V

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_NORMAL_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->editPreferenceForLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_HIGH_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->editPreferenceForLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->KEY_CRITICAL_PRIORITY_LAST_REQ:Ljava/lang/String;

    invoke-static {p0, p2, p3}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->editPreferenceForLong(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method


# virtual methods
.method getInt(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->preferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
