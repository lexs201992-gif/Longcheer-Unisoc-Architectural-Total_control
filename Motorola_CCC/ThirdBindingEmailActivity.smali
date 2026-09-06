.class public Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;
.super Lcom/lenovo/lsf/lenovoid/ui/BaseActivity;
.source "ThirdBindingEmailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$CheckIsCanUseTask;
    }
.end annotation


# instance fields
.field private accesstoken:Ljava/lang/String;

.field private appPackageName:Ljava/lang/String;

.field private appSign:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private btn_account_binding_email:Landroid/widget/Button;

.field private btn_account_binding_email_clearAccountName:Landroid/widget/Button;

.field private checkIsCanUseTask:Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$CheckIsCanUseTask;

.field private common_title_back:Landroid/widget/ImageButton;

.field private et_account_binging_email_accountName:Landroid/widget/EditText;

.field private existed:Ljava/lang/String;

.field private lastClickTime:J

.field private oauthversion:Ljava/lang/String;

.field private profileimageurl:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private refreshtoken:Ljava/lang/String;

.field private revealScreenname:Ljava/lang/String;

.field private rid:Ljava/lang/String;

.field private screenname:Ljava/lang/String;

.field private thirdDes:Ljava/lang/String;

.field private thirdName:Ljava/lang/String;

.field private tv_account_binding_email_error:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lenovo/lsf/lenovoid/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->rid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->btn_account_binding_email_clearAccountName:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->btn_account_binding_email:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->appkey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->accesstoken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->refreshtoken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->oauthversion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->existed:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->thirdDes:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->thirdName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->et_account_binging_email_accountName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->showProgressDlg()V

    return-void
.end method

.method static synthetic access$502(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$CheckIsCanUseTask;)Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$CheckIsCanUseTask;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->checkIsCanUseTask:Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$CheckIsCanUseTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->closeProgressDlg()V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->rid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->appPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->appSign:Ljava/lang/String;

    return-object p0
.end method

.method private checkInputAndNetwork()Z
    .locals 4

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->et_account_binging_email_accountName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "string"

    if-eqz v1, :cond_0

    const-string v0, "motoid_lsf_error_empty_email"

    invoke-static {p0, v3, v0}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->showErrorMessage(I)V

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->et_account_binging_email_accountName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v2

    :cond_0
    invoke-static {v0}, Lcom/lenovo/lsf/lenovoid/utility/PatternUtil;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motoid_lsf_error_wrong_email"

    invoke-static {p0, v3, v0}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->showErrorMessage(I)V

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->et_account_binging_email_accountName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v2

    :cond_1
    invoke-static {p0}, Lcom/lenovo/lsf/lenovoid/utility/NetworkUtil;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "motoid_lsf_network_error2"

    invoke-static {p0, v3, v0}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->showErrorMessage(I)V

    const-string v0, "lenovoid_login"

    const-string v1, "clk_signup_mail_no_net"

    invoke-static {v0, v1}, Lcom/lenovo/lsf/lenovoid/analytics/AnalyticsDataHelper;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private closeProgressDlg()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private hideErrorMessage()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->tv_account_binding_email_error:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private initViews()V
    .locals 4

    const-string v0, "common_title_text"

    const-string v1, "id"

    invoke-static {p0, v1, v0}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "string"

    const-string v3, "com_lenovo_lsf_string_bind_account_email"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "common_title_back"

    invoke-static {p0, v1, v0}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->common_title_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tv_account_binding_phone_error_email"

    invoke-static {p0, v1, v0}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->tv_account_binding_email_error:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "account_binging_edit_account_email"

    invoke-static {p0, v1, v0}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->et_account_binging_email_accountName:Landroid/widget/EditText;

    const-string v0, "btn_account_binding_phone_email"

    invoke-static {p0, v1, v0}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->btn_account_binding_email:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->et_account_binging_email_accountName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->btn_account_binding_email:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->btn_account_binding_email:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    const-string v0, "b_account_bindingclearAccountName_email"

    invoke-static {p0, v1, v0}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->btn_account_binding_email_clearAccountName:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->et_account_binging_email_accountName:Landroid/widget/EditText;

    new-instance v1, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$1;-><init>(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->et_account_binging_email_accountName:Landroid/widget/EditText;

    new-instance v1, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$2;-><init>(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private isFastDoubleClick()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->lastClickTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iput-wide v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->lastClickTime:J

    const/4 v0, 0x0

    return v0
.end method

.method private onClearAccountClicked(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->et_account_binging_email_accountName:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showErrorMessage(I)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->tv_account_binding_email_error:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->tv_account_binding_email_error:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private showProgressDlg()V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v2, "string"

    const-string v3, "motoid_checking_account"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/lenovoid/utility/DialogUtil;->showLoadingDialog(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "b_account_bindingclearAccountName_email"

    const-string v2, "id"

    invoke-static {p0, v2, v1}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->onClearAccountClicked(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string p1, "btn_account_binding_phone_email"

    invoke-static {p0, v2, p1}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ne v0, p1, :cond_2

    invoke-direct {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->checkInputAndNetwork()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->checkIsCanUseTask:Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$CheckIsCanUseTask;

    if-nez p1, :cond_3

    new-instance p1, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$CheckIsCanUseTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$CheckIsCanUseTask;-><init>(Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$1;)V

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->checkIsCanUseTask:Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$CheckIsCanUseTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity$CheckIsCanUseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    const-string p1, "common_title_back"

    invoke-static {p0, v2, p1}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->goBack()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/lenovo/lsf/lenovoid/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "#0195BA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const-string p1, "layout"

    const-string v0, "motoid_lsf_account_binding_email"

    invoke-static {p0, p1, v0}, Lcom/lenovo/lsf/lenovoid/utility/ResourceProxy;->getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "appkey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->appkey:Ljava/lang/String;

    const-string v0, "accesstoken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->accesstoken:Ljava/lang/String;

    const-string v0, "refreshtoken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->refreshtoken:Ljava/lang/String;

    const-string v0, "oauthversion"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->oauthversion:Ljava/lang/String;

    const-string v0, "screenname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->screenname:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->thirdName:Ljava/lang/String;

    const-string v0, "thirddesc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->thirdDes:Ljava/lang/String;

    const-string v0, "existed"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->existed:Ljava/lang/String;

    const-string v0, "profileimageurl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->profileimageurl:Ljava/lang/String;

    const-string v0, "reveal_ScreenName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->revealScreenname:Ljava/lang/String;

    const-string v0, "rid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->rid:Ljava/lang/String;

    const-string v0, "appPackageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->appPackageName:Ljava/lang/String;

    const-string v0, "appSign"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->appSign:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/lenovo/lsf/lenovoid/ui/BaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->initViews()V

    invoke-direct {p0}, Lcom/lenovo/lsf/lenovoid/ui/ThirdBindingEmailActivity;->hideErrorMessage()V

    return-void
.end method
