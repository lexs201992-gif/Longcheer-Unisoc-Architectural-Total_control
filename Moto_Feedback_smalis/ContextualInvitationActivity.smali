.class public Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;
.super Landroid/app/Activity;
.source "ContextualInvitationActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextualInvitationActivity"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCallerPackageName:Ljava/lang/String;

.field private mCardView:Landroidx/cardview/widget/CardView;

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mCloseWithFeedback:Ljava/lang/Boolean;

.field private mComplete:Landroid/widget/TextView;

.field private mDeviceId:Ljava/lang/String;

.field private mFace1:Landroid/widget/ImageView;

.field private mFace2:Landroid/widget/ImageView;

.field private mFace3:Landroid/widget/ImageView;

.field private mFace4:Landroid/widget/ImageView;

.field private mFace5:Landroid/widget/ImageView;

.field private mFeedbackCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIsNotification:Ljava/lang/Boolean;

.field private mNegative:Landroid/widget/TextView;

.field private mPageno:Landroid/widget/TextView;

.field private mPosition:F

.field private mPositive:Landroid/widget/TextView;

.field private mPriority:I

.field private mRating1:Landroid/widget/TextView;

.field private mRating2:Landroid/widget/TextView;

.field private mRating3:Landroid/widget/TextView;

.field private mRating4:Landroid/widget/TextView;

.field private mRating5:Landroid/widget/TextView;

.field private mRatingFinished:Ljava/lang/Boolean;

.field private mRatingLayoutSmart:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mRatingLayoutText:Landroid/widget/RelativeLayout;

.field private mResult:Ljava/lang/String;

.field private mSize:I

.field private mStars:I

.field private mToken:Ljava/lang/String;

.field private mTopic:Ljava/lang/String;

.field private mVisibleDesc:Landroid/widget/TextView;

.field private mVisibleTitle:Landroid/widget/TextView;

.field viewHieght:I


# direct methods
.method public static synthetic $r8$lambda$H6bhqQYKQ_OAPLSAN7lVWcNaoOw(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$initialiseTextualCard$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IVnt0CwkFGuYl78qgrDu-5ETpZs(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroidx/cardview/widget/CardView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$collapse$11(Landroidx/cardview/widget/CardView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J2kh28ltV2eoP7Orf-0cIOf1dK0(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$onTouchResizeFaces$14(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OMdpWD1hL5_YgEY2ViPbrkpTPsw(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$initialiseRatingCard$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QdVSd-La-z6DA31HeXLiTnF7upE(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$initialiseRatingCard$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QnkZETrdAngboEPy08weOub22HA(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$initCommon$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SyS45f9YxWEmZ1iJj_4NFresXAw(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$initCommon$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z8UtcrTIlH0I2sfxkL5H2uE7230(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$initialiseTextualCard$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZbOWLMCUIyprranD3aQ3P2wKzv4(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$initCommon$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_wc80ftFRALjLVmxJet_iiHPIok(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$initCommon$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWGabR_x0JP64_Wjb7Q-q5C8e84(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroidx/cardview/widget/CardView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$collapse$12(Landroidx/cardview/widget/CardView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e74lKW-RmvTwasjEbK7v0O1Nzow(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$initialiseRatingCard$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eG2xjpRLyrMhbW1dU_D9XP5_aRM(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$initialiseRatingCard$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$goRxF8Igy74NcM6jcB6u-U-lF9E(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$onTouchResizeFaces$13(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qB30Uty97paM6QSSNo0KGQzq7u0(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->lambda$initialiseRatingCard$8(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPosition:F

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCallerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mToken:Ljava/lang/String;

    const/4 v2, 0x3

    iput v2, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPriority:I

    iput-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingFinished:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCloseWithFeedback:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIsNotification:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mAppName:Ljava/lang/String;

    return-void
.end method

.method private cardDataRefresh()V
    .locals 3

    iget v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->setToDefault()V

    iget v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFeedbackCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->setCardView()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mVisibleDesc:Landroid/widget/TextView;

    sget v1, Lcom/motorola/feedback/lib/R$string;->feedback_complete_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mVisibleTitle:Landroid/widget/TextView;

    sget v1, Lcom/motorola/feedback/lib/R$string;->complete:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingLayoutText:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPositive:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mNegative:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPageno:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingLayoutSmart:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mComplete:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private collapse(Landroidx/cardview/widget/CardView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroidx/cardview/widget/CardView;)V

    const-wide/16 p0, 0x190

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private decorateView()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/motorola/feedback/lib/R$color;->in_app_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->startAnimation()V

    return-void
.end method

.method private expand(Landroidx/cardview/widget/CardView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->cardDataRefresh()V

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private faceLayoutClicked(Landroid/widget/ImageView;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "face"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mStars:I

    invoke-direct {p0, v0, v1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->uploadRatingsToCloud(II)V

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/motorola/feedback/lib/R$anim;->face_zoom_out_100_50:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/motorola/feedback/lib/R$anim;->face_zoom_in_50_130:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/motorola/feedback/lib/R$anim;->face_zoom_out_130_100:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v1, v1, -0xe

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v1, v1, -0xe

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating1:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating3:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating4:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating5:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace1:Landroid/widget/ImageView;

    if-eq p1, v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace1:Landroid/widget/ImageView;

    sget v2, Lcom/motorola/feedback/lib/R$drawable;->very_dissatisfied_no_choose:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace2:Landroid/widget/ImageView;

    if-eq p1, v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace2:Landroid/widget/ImageView;

    sget v2, Lcom/motorola/feedback/lib/R$drawable;->disatisfied_no_choose:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace3:Landroid/widget/ImageView;

    if-eq p1, v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace3:Landroid/widget/ImageView;

    sget v2, Lcom/motorola/feedback/lib/R$drawable;->netural_no_choose:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace4:Landroid/widget/ImageView;

    if-eq p1, v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace4:Landroid/widget/ImageView;

    sget v2, Lcom/motorola/feedback/lib/R$drawable;->satisfied_no_choose:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace5:Landroid/widget/ImageView;

    if-eq p1, v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace5:Landroid/widget/ImageView;

    sget p1, Lcom/motorola/feedback/lib/R$drawable;->very_dissatisfied_no_choose:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    return-void
.end method

.method private finishAnim()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingFinished:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Result"

    iget-object v2, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingFinished:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->finish()V

    return-void
.end method

.method private finishAnimation()V
    .locals 4

    iget v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPosition:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget v0, Lcom/motorola/feedback/lib/R$anim;->slide_up_out:I

    invoke-virtual {p0, v1, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/motorola/feedback/lib/R$anim;->slide_down_out:I

    invoke-virtual {p0, v1, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method private getIntentData()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    sget-object v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface;->EXTRA_CARD_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface;->EXTRA_CARD_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFeedbackCardList:Ljava/util/ArrayList;

    :cond_0
    sget-object v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface;->EXTRA_POSITION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface;->EXTRA_POSITION:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPosition:F

    :cond_1
    sget-object v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCallerPackageName:Ljava/lang/String;

    :cond_2
    sget-object v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface;->EXTRA_PRIORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface;->EXTRA_PRIORITY:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPriority:I

    :cond_3
    sget-object v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface;->EXTRA_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface;->EXTRA_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mToken:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "navigation_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initCommon()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/ccc/cce/CCESettings;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mDeviceId:Ljava/lang/String;

    sget v0, Lcom/motorola/feedback/lib/R$id;->card:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCardView:Landroidx/cardview/widget/CardView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->option1:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPageno:Landroid/widget/TextView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->option3:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPositive:Landroid/widget/TextView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->option2:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mNegative:Landroid/widget/TextView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mVisibleTitle:Landroid/widget/TextView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->Description:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mVisibleDesc:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mVisibleTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFeedbackCardList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;

    invoke-virtual {v1}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mVisibleDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFeedbackCardList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;

    invoke-virtual {v1}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/motorola/feedback/lib/R$id;->finish:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mComplete:Landroid/widget/TextView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->face1:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace1:Landroid/widget/ImageView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->face2:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace2:Landroid/widget/ImageView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->face3:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace3:Landroid/widget/ImageView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->face4:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace4:Landroid/widget/ImageView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->face5:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace5:Landroid/widget/ImageView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->rating1:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating1:Landroid/widget/TextView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->rating2:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating2:Landroid/widget/TextView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->rating3:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating3:Landroid/widget/TextView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->rating4:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating4:Landroid/widget/TextView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->rating5:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating5:Landroid/widget/TextView;

    sget v0, Lcom/motorola/feedback/lib/R$id;->ratingLayoutText:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingLayoutText:Landroid/widget/RelativeLayout;

    sget v0, Lcom/motorola/feedback/lib/R$id;->ratingLayoutSmart:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingLayoutSmart:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/motorola/feedback/lib/R$id;->closeText:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCloseButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->viewHieght:I

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCardView:Landroidx/cardview/widget/CardView;

    sget v1, Lcom/motorola/feedback/lib/R$drawable;->rectangle_top_corner_rounded:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda13;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/motorola/feedback/lib/R$id;->dismiss:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda14;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/motorola/feedback/lib/R$id;->dismisspart2:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mComplete:Landroid/widget/TextView;

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCallerPackageName:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mAppName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    sget v0, Lcom/motorola/feedback/lib/R$id;->cardContainer:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getNavigationBarHeight()I

    move-result p0

    iput p0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initialiseRatingCard()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFeedbackCardList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace1:Landroid/widget/ImageView;

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace2:Landroid/widget/ImageView;

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace3:Landroid/widget/ImageView;

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace4:Landroid/widget/ImageView;

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace5:Landroid/widget/ImageView;

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->onTouchResizeFaces(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initialiseTextualCard()V
    .locals 3

    iget v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFeedbackCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFeedbackCardList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPositive:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mNegative:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPositive:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPositive:Landroid/widget/TextView;

    sget v2, Lcom/motorola/feedback/lib/R$string;->postive_response:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mNegative:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mNegative:Landroid/widget/TextView;

    sget v1, Lcom/motorola/feedback/lib/R$string;->negative_response:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPositive:Landroid/widget/TextView;

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mNegative:Landroid/widget/TextView;

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$collapse$11(Landroidx/cardview/widget/CardView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->expand(Landroidx/cardview/widget/CardView;)V

    return-void
.end method

.method private synthetic lambda$collapse$12(Landroidx/cardview/widget/CardView;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda12;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroidx/cardview/widget/CardView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private synthetic lambda$initCommon$0(Landroid/view/View;)V
    .locals 1

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mStars:I

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCloseButton:Landroid/widget/ImageButton;

    sget v0, Lcom/motorola/feedback/lib/R$drawable;->ic_close_icon_pressed:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingFinished:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->finishAnim()V

    return-void
.end method

.method private synthetic lambda$initCommon$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingFinished:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->finishAnim()V

    return-void
.end method

.method private synthetic lambda$initCommon$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingFinished:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->finishAnim()V

    return-void
.end method

.method private synthetic lambda$initCommon$3(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingFinished:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->finishAnim()V

    return-void
.end method

.method private synthetic lambda$initialiseRatingCard$4(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mStars:I

    const-string p1, "Very Poor"

    iput-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mResult:Ljava/lang/String;

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace1:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->faceLayoutClicked(Landroid/widget/ImageView;)V

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->onClickResponse()V

    return-void
.end method

.method private synthetic lambda$initialiseRatingCard$5(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mStars:I

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace2:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->faceLayoutClicked(Landroid/widget/ImageView;)V

    const-string p1, "Poor"

    iput-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mResult:Ljava/lang/String;

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->onClickResponse()V

    return-void
.end method

.method private synthetic lambda$initialiseRatingCard$6(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mStars:I

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace3:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->faceLayoutClicked(Landroid/widget/ImageView;)V

    const-string p1, "Neutral"

    iput-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mResult:Ljava/lang/String;

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->onClickResponse()V

    return-void
.end method

.method private synthetic lambda$initialiseRatingCard$7(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x4

    iput p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mStars:I

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace4:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->faceLayoutClicked(Landroid/widget/ImageView;)V

    const-string p1, "Satisfied"

    iput-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mResult:Ljava/lang/String;

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->onClickResponse()V

    return-void
.end method

.method private synthetic lambda$initialiseRatingCard$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x5

    iput p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mStars:I

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace5:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->faceLayoutClicked(Landroid/widget/ImageView;)V

    const-string p1, "Very Satisfied"

    iput-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mResult:Ljava/lang/String;

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->onClickResponse()V

    return-void
.end method

.method private synthetic lambda$initialiseTextualCard$10(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->uploadRatingsToCloud(II)V

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->onClickResponse()V

    return-void
.end method

.method private synthetic lambda$initialiseTextualCard$9(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->uploadRatingsToCloud(II)V

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->onClickResponse()V

    return-void
.end method

.method private synthetic lambda$onTouchResizeFaces$13(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v0, v0, -0xe

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v0, v0, -0xe

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating1:Landroid/widget/TextView;

    const/16 v0, 0x8

    if-eq p3, p2, :cond_0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating5:Landroid/widget/TextView;

    if-eq p0, p2, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return p1
.end method

.method private synthetic lambda$onTouchResizeFaces$14(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 p4, p4, 0xe

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 p4, p4, 0xe

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating1:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating5:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return v0
.end method

.method private onClickResponse()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCardView:Landroidx/cardview/widget/CardView;

    invoke-direct {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->collapse(Landroidx/cardview/widget/CardView;)V

    return-void
.end method

.method private setCardView()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFeedbackCardList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;

    invoke-virtual {v0}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getTopic()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mTopic:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getStyle()Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard$STYLE;

    move-result-object v1

    sget-object v2, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard$STYLE;->FEEDBACK:Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard$STYLE;

    invoke-virtual {v1, v2}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard$STYLE;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingLayoutText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->initialiseTextualCard()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getStyle()Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard$STYLE;

    move-result-object v0

    sget-object v1, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard$STYLE;->RATINGS:Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard$STYLE;

    invoke-virtual {v0, v1}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard$STYLE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingLayoutSmart:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->initialiseRatingCard()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFeedbackCardList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;

    if-nez v0, :cond_2

    sget-object p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->TAG:Ljava/lang/String;

    const-string v0, "Null Card"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mVisibleDesc:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mVisibleTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/motorola/help/feedbackinterface/FeedbackUIInterface$FeedbackCard;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/motorola/feedback/lib/R$id;->cardContainer:I

    invoke-virtual {p0, v0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v3, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPosition:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPageno:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIndex:I

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "%d/%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->decorateView()V

    return-void
.end method

.method private setToDefault()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingLayoutSmart:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingLayoutText:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private showNavigationBar()V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1702

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private showNotification()V
    .locals 0

    return-void
.end method

.method private startAnimation()V
    .locals 4

    iget v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPosition:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    sget v0, Lcom/motorola/feedback/lib/R$anim;->slide_down:I

    invoke-virtual {p0, v0, v1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/motorola/feedback/lib/R$anim;->slide_up:I

    invoke-virtual {p0, v0, v1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method private uploadRatingsToCloud(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "questionType",
            "rating"
        }
    .end annotation

    invoke-static {}, Lcom/motorola/feedback/scheduler/WorkManagerHelper;->clearFinishedTaskList()V

    new-instance v0, Lcom/motorola/feedback/transport/request/InAppRatingRequest;

    invoke-direct {v0}, Lcom/motorola/feedback/transport/request/InAppRatingRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/motorola/feedback/transport/request/InAppRatingRequest;->setQuestionType(I)V

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/motorola/feedback/transport/request/InAppRatingRequest;->setAppName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/motorola/feedback/transport/request/InAppRatingRequest;->setPackageName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mTopic:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/motorola/feedback/transport/request/InAppRatingRequest;->setTopic(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/motorola/feedback/transport/request/InAppRatingRequest;->setRating(I)V

    iget-object p0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mDeviceId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/motorola/feedback/scheduler/WorkManagerHelper;->getEndPointWorker(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/feedback/transport/request/BaseFeedbackRequest;)Landroidx/work/OneTimeWorkRequest;

    move-result-object p0

    invoke-static {}, Landroidx/work/WorkManager;->getInstance()Landroidx/work/WorkManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->getIntentData()V

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCallerPackageName:Ljava/lang/String;

    iget v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPriority:I

    invoke-static {p0, p1, v0}, Lcom/motorola/feedback/utils/GoverningRules;->isEligibleForInvitation(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->finishAnim()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCallerPackageName:Ljava/lang/String;

    iget v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mPriority:I

    invoke-static {p0, p1, v0}, Lcom/motorola/feedback/utils/GoverningRules;->saveInvitationDisplayTime(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFeedbackCardList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mSize:I

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mIsNotification:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->showNotification()V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRatingFinished:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->finishAnim()V

    goto :goto_0

    :cond_1
    sget p1, Lcom/motorola/feedback/lib/R$layout;->in_app_main:I

    invoke-virtual {p0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->initCommon()V

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->setCardView()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->finishAnim()V

    invoke-virtual {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->finishAnimation()V

    :cond_0
    return-void
.end method

.method public onTouchResizeFaces(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choice"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mComplete:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mCloseButton:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating5:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace5:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating4:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace4:Landroid/widget/ImageView;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace3:Landroid/widget/ImageView;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace2:Landroid/widget/ImageView;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mRating1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;->mFace1:Landroid/widget/ImageView;

    :goto_0
    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v1, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1}, Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/feedback/inappfeedback/uiapi/ContextualInvitationActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
