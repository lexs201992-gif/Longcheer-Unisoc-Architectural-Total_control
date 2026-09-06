.class public Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;
.super Ljava/lang/Object;
.source "OSSSharedPreferences.java"


# static fields
.field private static sInstance:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;


# instance fields
.field private mSp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "oss_android_sdk_sp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->mSp:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->sInstance:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    if-nez v0, :cond_1

    const-class v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->sInstance:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->sInstance:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->sInstance:Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;

    return-object p0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->mSp:Landroid/content/SharedPreferences;

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSSharedPreferences;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
