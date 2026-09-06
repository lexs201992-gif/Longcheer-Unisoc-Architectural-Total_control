.class public Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
.super Ljava/lang/Object;
.source "AnalyticsTracker.java"


# static fields
.field private static final instance:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->instance:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->instance:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    return-object v0
.end method


# virtual methods
.method public setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
