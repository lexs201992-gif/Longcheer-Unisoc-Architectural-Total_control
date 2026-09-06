.class public final Lcom/motorola/feedback/ui/SubcomponentsHelperKt;
.super Ljava/lang/Object;
.source "SubcomponentsHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomponentsHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomponentsHelper.kt\ncom/motorola/feedback/ui/SubcomponentsHelperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1864#2,3:57\n*S KotlinDebug\n*F\n+ 1 SubcomponentsHelper.kt\ncom/motorola/feedback/ui/SubcomponentsHelperKt\n*L\n26#1:57,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0001\u001a\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e\u001a\u0012\u0010\u000f\u001a\u00020\u0010*\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "MODULE_NAME_INTERNAL",
        "",
        "MODULE_NAME_UI",
        "getModuleName",
        "",
        "context",
        "Landroid/content/Context;",
        "id",
        "type",
        "setupSubModules",
        "",
        "binding",
        "Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;",
        "rateAndFeedbackViewModel",
        "Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;",
        "getResourcesForEnglish",
        "Landroid/content/res/Resources;",
        "feedback_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final MODULE_NAME_INTERNAL:I = 0x0

.field public static final MODULE_NAME_UI:I = 0x1


# direct methods
.method public static final getModuleName(Landroid/content/Context;II)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "context.resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/motorola/feedback/ui/SubcomponentsHelperKt;->getResourcesForEnglish(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/motorola/feedback/lib/R$array;->module_array:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/motorola/feedback/lib/R$array;->module_array:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p2, "if (type == MODULE_NAME_\u2026array.module_array)\n    }"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static final getResourcesForEnglish(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance p0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "us"

    invoke-direct {p0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "context.createConfigurat\u2026hConfiguration).resources"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final setupSubModules(Landroid/content/Context;Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rateAndFeedbackViewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/feedback/lib/databinding/ModuleFiveStarRatingBinding;

    iget-object v1, p1, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->mod1Layout:Lcom/motorola/feedback/lib/databinding/ModuleFiveStarRatingBinding;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p1, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->mod2Layout:Lcom/motorola/feedback/lib/databinding/ModuleFiveStarRatingBinding;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p1, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->mod3Layout:Lcom/motorola/feedback/lib/databinding/ModuleFiveStarRatingBinding;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    iget-object v3, p1, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->mod4Layout:Lcom/motorola/feedback/lib/databinding/ModuleFiveStarRatingBinding;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    iget-object p1, p1, Lcom/motorola/feedback/lib/databinding/ModuleContainerBinding;->mod5Layout:Lcom/motorola/feedback/lib/databinding/ModuleFiveStarRatingBinding;

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v0, Lcom/motorola/feedback/lib/databinding/ModuleFiveStarRatingBinding;

    invoke-virtual {v0, v1}, Lcom/motorola/feedback/lib/databinding/ModuleFiveStarRatingBinding;->setModuleId(I)V

    invoke-virtual {v0, p2}, Lcom/motorola/feedback/lib/databinding/ModuleFiveStarRatingBinding;->setRateAndfeedbackViewModel(Lcom/motorola/feedback/viewmodels/RateAndFeedbackViewModel;)V

    invoke-virtual {v0, p0}, Lcom/motorola/feedback/lib/databinding/ModuleFiveStarRatingBinding;->setContext(Landroid/content/Context;)V

    move v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method
