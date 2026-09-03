.class public Lcom/android/permissioncontroller/safetycenter/ui/ClickableDisabledSwitchPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "ClickableDisabledSwitchPreference.java"


# instance fields
.field private mAppearDisabled:Z


# direct methods
.method public static synthetic $r8$lambda$fy59Y7-ScmW1lSZgFt16uedirxo(Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel;Landroidx/fragment/app/Fragment;Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$Pref;Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$PrefState;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p3}, Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$PrefState;->getAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel;->handlePrefClick(Landroidx/fragment/app/Fragment;Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$Pref;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 p0, 0x1

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyEnableStateToChildren(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/permissioncontroller/safetycenter/ui/ClickableDisabledSwitchPreference;->mAppearDisabled:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/permissioncontroller/safetycenter/ui/ClickableDisabledSwitchPreference;->applyEnableStateToChildren(Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setAppearDisabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/permissioncontroller/safetycenter/ui/ClickableDisabledSwitchPreference;->mAppearDisabled:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/permissioncontroller/safetycenter/ui/ClickableDisabledSwitchPreference;->mAppearDisabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/permissioncontroller/safetycenter/ui/ClickableDisabledSwitchPreference;->applyEnableStateToChildren(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/permissioncontroller/safetycenter/ui/ClickableDisabledSwitchPreference;->mAppearDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public setupState(Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$PrefState;Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$Pref;Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel;Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$PrefState;->getVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$PrefState;->getChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/permissioncontroller/safetycenter/ui/ClickableDisabledSwitchPreference;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$PrefState;->getAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/permissioncontroller/safetycenter/ui/ClickableDisabledSwitchPreference;->setAppearDisabled(Z)V

    new-instance v0, Lcom/android/permissioncontroller/safetycenter/ui/ClickableDisabledSwitchPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p4, p2, p1}, Lcom/android/permissioncontroller/safetycenter/ui/ClickableDisabledSwitchPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel;Landroidx/fragment/app/Fragment;Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$Pref;Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$PrefState;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1}, Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$PrefState;->getAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$PrefState;->getChecked()Z

    move-result p3

    if-eqz p3, :cond_1

    sget p1, Lcom/android/settingslib/widget/restricted/R$string;->enabled_by_admin:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$PrefState;->getAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_2

    sget p1, Lcom/android/settingslib/widget/restricted/R$string;->disabled_by_admin:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_2
    sget-object p1, Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$Pref;->MIC:Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$Pref;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lcom/android/permissioncontroller/R$string;->mic_toggle_description:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_3
    sget-object p1, Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$Pref;->CAMERA:Lcom/android/permissioncontroller/safetycenter/ui/model/PrivacyControlsViewModel$Pref;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/android/permissioncontroller/R$string;->perm_toggle_description:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_4
    return-void
.end method
