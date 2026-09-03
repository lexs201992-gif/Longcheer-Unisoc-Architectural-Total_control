.class public abstract Lcom/android/role/controller/model/AppOpPermissions;
.super Ljava/lang/Object;
.source "AppOpPermissions.java"


# direct methods
.method public static grantAsUser(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/UserHandle;Landroid/content/Context;)Z
    .locals 3

    const/16 v0, 0x1000

    invoke-static {p0, v0, p3, p4}, Lcom/android/role/controller/util/PackageUtils;->getPackageInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/role/controller/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/android/role/controller/compat/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_2

    invoke-static {p0, v0, p3, p4}, Lcom/android/role/controller/model/Permissions;->getAppOpModeAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0}, Lcom/android/role/controller/model/Permissions;->getDefaultAppOpMode(Ljava/lang/String;)I

    move-result v2

    if-eq p2, v2, :cond_2

    return v1

    :cond_2
    invoke-static {p0, v0, v1, p3, p4}, Lcom/android/role/controller/model/AppOpPermissions;->setAppOpModeAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/role/controller/model/Permissions;->setPermissionGrantedByRoleAsUser(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/UserHandle;Landroid/content/Context;)V

    :cond_3
    return p2
.end method

.method public static revokeAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0, p1, p2, p3}, Lcom/android/role/controller/model/Permissions;->isPermissionGrantedByRoleAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/android/role/controller/model/Permissions;->getAppOpModeAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/android/role/controller/model/Permissions;->getDefaultAppOpMode(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v0, v2, p2, p3}, Lcom/android/role/controller/model/AppOpPermissions;->setAppOpModeAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {p0, p1, v1, p2, p3}, Lcom/android/role/controller/model/Permissions;->setPermissionGrantedByRoleAsUser(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/UserHandle;Landroid/content/Context;)V

    return v0
.end method

.method private static setAppOpModeAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "android:loader_usage_stats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "android:start_foreground"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "android:manage_ipsec_tunnels"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "android:instant_app_start_foreground"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "android:request_install_packages"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "android:get_usage_stats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "android:write_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "android:interact_across_profiles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "android:system_alert_window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "android:access_notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/role/controller/model/Permissions;->setAppOpUidModeAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/role/controller/model/Permissions;->setAppOpUidModeAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)Z

    move-result p2

    invoke-static {p1}, Lcom/android/role/controller/model/Permissions;->getDefaultAppOpMode(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0, p3, p4}, Lcom/android/role/controller/model/Permissions;->setAppOpPackageModeAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)Z

    move-result p0

    or-int/2addr p0, p2

    return p0

    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/role/controller/model/Permissions;->setAppOpPackageModeAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bc60e88 -> :sswitch_9
        -0x5b4b3948 -> :sswitch_8
        -0x483f69b4 -> :sswitch_7
        -0x3314af12 -> :sswitch_6
        -0x1d357df3 -> :sswitch_5
        -0x182f7a94 -> :sswitch_4
        0x408eec67 -> :sswitch_3
        0x49d9b267 -> :sswitch_2
        0x6ac2aaeb -> :sswitch_1
        0x7ed05540 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
