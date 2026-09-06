.class public Lcom/motorola/feedback/utils/GoverningRules;
.super Ljava/lang/Object;
.source "GoverningRules.java"


# static fields
.field public static final IS_CONTEXTUAL_RATINGS_ENABLED:Z = true

.field public static final KEY_IS_CONTEXTUAL_INVITATION_ENABLED:Ljava/lang/String; = "isConInvEnabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isContextualFeedbackEnabled(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "isConInvEnabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isEligibleForInvitation(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName",
            "priority"
        }
    .end annotation

    invoke-static {p0}, Lcom/motorola/feedback/utils/GoverningRules;->isContextualFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->isEligibleForInvitation(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static nextInvitationETA(Landroid/content/Context;Ljava/lang/String;I)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName",
            "priority"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->getNextRequestTime(Landroid/content/Context;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static saveInvitationDisplayTime(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName",
            "priority"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p2, v0, v1}, Lcom/motorola/feedback/inappfeedback/uiapi/CardDB;->setLastRequestTime(Landroid/content/Context;IJ)V

    return-void
.end method
