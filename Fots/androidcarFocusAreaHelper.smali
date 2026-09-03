.class Lcom/android/car/ui/FocusAreaHelper;
.super Ljava/lang/Object;
.source "FocusAreaHelper.java"


# static fields
.field private static final FOCUS_AREA_ACTIONS:Ljava/util/List;

.field private static final INVALID_DIMEN:I = -0x1

.field private static final INVALID_DIRECTION:I = -0x1

.field private static final NUDGE_DIRECTIONS:Ljava/util/List;

.field private static final TAG:Ljava/lang/String; = "FocusAreaHelper"


# instance fields
.field private mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

.field private mBottomOffset:I

.field private mClearFocusAreaHistoryWhenRotating:Z

.field private mDefaultFocusId:I

.field private mDefaultFocusOverridesHistory:Z

.field private mDefaultFocusView:Landroid/view/View;

.field private final mDisabledNudgeDirections:Ljava/util/Set;

.field private mEnableBackgroundHighlight:Z

.field private mEnableForegroundHighlight:Z

.field private final mFocusArea:Landroid/view/ViewGroup;

.field private final mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field private mFocusedView:Landroid/view/View;

.field private mForegroundHighlight:Landroid/graphics/drawable/Drawable;

.field private mHasFocus:Z

.field private mLeftOffset:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPreviousFocusArea:Lcom/android/car/ui/IFocusArea;

.field private mRightOffset:I

.field private mRotaryCache:Lcom/android/car/ui/RotaryCache;

.field private mRtl:Z

.field private mShouldRestoreFocus:Z

.field private mSkipRestoreFocusUntil:J

.field private mSpecifiedNudgeFocusAreaMap:Landroid/util/SparseArray;

.field private final mSpecifiedNudgeIdMap:Landroid/util/SparseIntArray;

.field private final mSpecifiedNudgeShortcutIdMap:Landroid/util/SparseIntArray;

.field private mSpecifiedNudgeShortcutMap:Landroid/util/SparseArray;

.field private mTopOffset:I

.field private final mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private final mTouchModeSkipRestoreFocusMs:J

.field private mWrapAround:Z


# direct methods
.method public static synthetic $r8$lambda$NVl6grhfr_kMp29fihIJRw8IAfs(Lcom/android/car/ui/FocusAreaHelper;Z)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mTouchModeSkipRestoreFocusMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mSkipRestoreFocusUntil:J

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$kaM6p6J0irubDlqvcS5vkQ5gS5s(Lcom/android/car/ui/FocusAreaHelper;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/car/ui/FocusAreaHelper;->saveFocusHistory(Z)V

    invoke-direct {p0, p2, p1}, Lcom/android/car/ui/FocusAreaHelper;->maybeUpdatePreviousFocusArea(ZLandroid/view/View;)V

    invoke-direct {p0, p2, p1}, Lcom/android/car/ui/FocusAreaHelper;->maybeClearFocusAreaHistory(ZLandroid/view/View;)V

    invoke-direct {p0, p2}, Lcom/android/car/ui/FocusAreaHelper;->maybeUpdateFocusAreaHighlight(Z)V

    iput-boolean p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mHasFocus:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/car/ui/FocusAreaHelper;->NUDGE_DIRECTIONS:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x20000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/car/ui/FocusAreaHelper;->FOCUS_AREA_ACTIONS:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mDefaultFocusId:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutIdMap:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeIdMap:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mDisabledNudgeDirections:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mShouldRestoreFocus:Z

    iput-object p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/car/ui/FocusAreaHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/car/ui/FocusAreaHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/car/ui/FocusAreaHelper;)V

    iput-object v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/car/ui/R$bool;->car_ui_enable_focus_area_foreground_highlight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mEnableForegroundHighlight:Z

    sget v3, Lcom/android/car/ui/R$bool;->car_ui_enable_focus_area_background_highlight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mEnableBackgroundHighlight:Z

    sget v3, Lcom/android/car/ui/R$drawable;->car_ui_focus_area_foreground_highlight:I

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mForegroundHighlight:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/android/car/ui/R$drawable;->car_ui_focus_area_background_highlight:I

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/android/car/ui/R$bool;->car_ui_clear_focus_area_history_when_rotating:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mClearFocusAreaHistoryWhenRotating:Z

    sget v3, Lcom/android/car/ui/R$integer;->car_ui_focus_history_cache_type:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sget v4, Lcom/android/car/ui/R$integer;->car_ui_focus_history_expiration_period_ms:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sget v5, Lcom/android/car/ui/R$integer;->car_ui_focus_area_history_cache_type:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sget v6, Lcom/android/car/ui/R$integer;->car_ui_focus_area_history_expiration_period_ms:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    new-instance v7, Lcom/android/car/ui/RotaryCache;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/car/ui/RotaryCache;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/car/ui/FocusAreaHelper;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    sget v3, Lcom/android/car/ui/R$integer;->car_ui_touch_mode_skip_restore_focus_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mTouchModeSkipRestoreFocusMs:J

    new-instance v2, Lcom/android/car/ui/FocusAreaHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/car/ui/FocusAreaHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/car/ui/FocusAreaHelper;)V

    iput-object v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-direct {p0, v1, p2}, Lcom/android/car/ui/FocusAreaHelper;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private focusOnDescendant()Z
    .locals 3

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/car/ui/RotaryCache;->getFocusedView(J)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    iget-boolean p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mDefaultFocusOverridesHistory:Z

    invoke-static {v1, v0, p0}, Lcom/android/car/ui/utils/ViewUtils;->adjustFocusImmediately(Landroid/view/View;Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method private static getNudgeDirection(Landroid/os/Bundle;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.android.car.ui.utils.NUDGE_DIRECTION"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getOppositeDirection(I)I
    .locals 4

    const/16 v0, 0x42

    const/16 v1, 0x11

    if-eq p0, v1, :cond_3

    const/16 v2, 0x82

    const/16 v3, 0x21

    if-eq p0, v3, :cond_2

    if-eq p0, v0, :cond_1

    if-ne p0, v2, :cond_0

    return v3

    :cond_0
    const-string p0, "direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT."

    invoke-static {p0}, Lokio/Buffer$$ExternalSyntheticBUOutline3;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method private getSpecifiedFocusArea(I)Lcom/android/car/ui/IFocusArea;
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/FocusAreaHelper;->maybeInitializeSpecifiedFocusAreas()V

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeFocusAreaMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/IFocusArea;

    return-object p0
.end method

.method private getSpecifiedShortcut(I)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/FocusAreaHelper;->maybeInitializeSpecifiedShortcuts()V

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/car/ui/R$styleable;->IFocusArea:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_defaultFocus:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mDefaultFocusId:I

    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_highlightPaddingStart:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_highlightPaddingHorizontal:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_1
    :goto_0
    sget v2, Lcom/android/car/ui/R$styleable;->IFocusArea_highlightPaddingEnd:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-ne v2, v0, :cond_2

    sget v2, Lcom/android/car/ui/R$styleable;->IFocusArea_highlightPaddingHorizontal:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    :cond_2
    iget-object v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mRtl:Z

    if-eqz v3, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, p2

    :goto_2
    iput v5, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingLeft:I

    if-eqz v3, :cond_5

    move v3, p2

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    iput v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingRight:I

    sget v3, Lcom/android/car/ui/R$styleable;->IFocusArea_highlightPaddingTop:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingTop:I

    if-ne v3, v0, :cond_6

    sget v3, Lcom/android/car/ui/R$styleable;->IFocusArea_highlightPaddingVertical:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingTop:I

    :cond_6
    sget v3, Lcom/android/car/ui/R$styleable;->IFocusArea_highlightPaddingBottom:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingBottom:I

    if-ne v3, v0, :cond_7

    sget v3, Lcom/android/car/ui/R$styleable;->IFocusArea_highlightPaddingVertical:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingBottom:I

    :cond_7
    sget v3, Lcom/android/car/ui/R$styleable;->IFocusArea_startBoundOffset:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-ne v3, v0, :cond_8

    sget v3, Lcom/android/car/ui/R$styleable;->IFocusArea_horizontalBoundOffset:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    :cond_8
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_endBoundOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-ne p2, v0, :cond_9

    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_horizontalBoundOffset:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    :cond_9
    iget-boolean v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mRtl:Z

    if-eqz v2, :cond_a

    move v5, p2

    goto :goto_4

    :cond_a
    move v5, v3

    :goto_4
    iput v5, p0, Lcom/android/car/ui/FocusAreaHelper;->mLeftOffset:I

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    move v3, p2

    :goto_5
    iput v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mRightOffset:I

    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_topBoundOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mTopOffset:I

    if-ne p2, v0, :cond_c

    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_verticalBoundOffset:I

    iget v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingTop:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mTopOffset:I

    :cond_c
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_bottomBoundOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mBottomOffset:I

    if-ne p2, v0, :cond_d

    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_verticalBoundOffset:I

    iget v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingBottom:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mBottomOffset:I

    :cond_d
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeLeftShortcut:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/16 v3, 0x11

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_e
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeRightShortcut:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/16 v5, 0x42

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {v2, v5, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_f
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeUpShortcut:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/16 v6, 0x21

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {v2, v6, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_10
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeDownShortcut:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/16 v7, 0x82

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {v2, v7, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_11
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeShortcut:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget v2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeShortcutDirection:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ne p2, v0, :cond_12

    move v8, v4

    goto :goto_6

    :cond_12
    move v8, v1

    :goto_6
    if-ne v2, v0, :cond_13

    goto :goto_7

    :cond_13
    move v4, v1

    :goto_7
    xor-int/2addr v4, v8

    if-nez v4, :cond_1e

    if-eq p2, v0, :cond_15

    iget-object v4, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_14

    iget-object v4, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_8

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Don\'t use nudgeShortcut/nudgeShortcutDirection and nudge*Shortcut in the same focus area. Use nudge*Shortcut only."

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_8
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeLeft:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_16
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeRight:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {v2, v5, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_17
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeUp:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {v2, v6, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_18
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeDown:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {v2, v7, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_19
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeLeftDisabled:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mDisabledNudgeDirections:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1a
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeRightDisabled:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mDisabledNudgeDirections:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1b
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeUpDisabled:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mDisabledNudgeDirections:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1c
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_nudgeDownDisabled:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mDisabledNudgeDirections:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1d
    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_defaultFocusOverridesHistory:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mDefaultFocusOverridesHistory:Z

    sget p2, Lcom/android/car/ui/R$styleable;->IFocusArea_wrapAround:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mWrapAround:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1e
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "nudgeShortcut and nudgeShortcutDirection must be specified together"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private isNudgeDisabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mDisabledNudgeDirections:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private maybeAdjustFocus()Z
    .locals 1

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/car/ui/utils/ViewUtils;->adjustFocus(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private maybeClearFocusAreaHistory(ZLandroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mClearFocusAreaHistoryWhenRotating:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/android/car/ui/utils/ViewUtils;->getAncestorFocusArea(Landroid/view/View;)Lcom/android/car/ui/IFocusArea;

    move-result-object p1

    iget-object p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    invoke-virtual {p0}, Lcom/android/car/ui/RotaryCache;->clearFocusAreaHistory()V

    :cond_3
    :goto_0
    return-void
.end method

.method private maybeInitFocus()Z
    .locals 1

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/car/ui/utils/ViewUtils;->initFocus(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private maybeInitializeSpecifiedFocusAreas()V
    .locals 5

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeFocusAreaMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeFocusAreaMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/car/ui/FocusAreaHelper;->NUDGE_DIRECTIONS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeIdMap:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeFocusAreaMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/car/ui/IFocusArea;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private maybeInitializeSpecifiedShortcuts()V
    .locals 5

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/car/ui/FocusAreaHelper;->NUDGE_DIRECTIONS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutIdMap:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private maybeUpdateFocusAreaHighlight(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mEnableBackgroundHighlight:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mEnableForegroundHighlight:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mHasFocus:Z

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeUpdatePreviousFocusArea(ZLandroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mHasFocus:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    instance-of p1, p2, Lcom/android/car/ui/FocusParkingView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/car/ui/utils/ViewUtils;->getAncestorFocusArea(Landroid/view/View;)Lcom/android/car/ui/IFocusArea;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mPreviousFocusArea:Lcom/android/car/ui/IFocusArea;

    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No ancestor focus area for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FocusAreaHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mPreviousFocusArea:Lcom/android/car/ui/IFocusArea;

    return-void
.end method

.method private nudgeToAnotherFocusArea(Landroid/os/Bundle;)Z
    .locals 5

    invoke-static {p1}, Lcom/android/car/ui/FocusAreaHelper;->getNudgeDirection(Landroid/os/Bundle;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/FocusAreaHelper;->isNudgeDisabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/android/car/ui/FocusAreaHelper;->getSpecifiedFocusArea(I)Lcom/android/car/ui/IFocusArea;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/car/ui/IFocusArea;->getHelper()Lcom/android/car/ui/FocusAreaHelper;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/car/ui/FocusAreaHelper;->focusOnDescendant()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/car/ui/RotaryCache;->getCachedFocusArea(IJ)Lcom/android/car/ui/IFocusArea;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/car/ui/IFocusArea;->getHelper()Lcom/android/car/ui/FocusAreaHelper;

    move-result-object p0

    invoke-direct {p0}, Lcom/android/car/ui/FocusAreaHelper;->focusOnDescendant()Z

    move-result p0

    if-eqz p0, :cond_2

    return v4

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method private nudgeToShortcutView(Landroid/os/Bundle;)Z
    .locals 3

    invoke-static {p1}, Lcom/android/car/ui/FocusAreaHelper;->getNudgeDirection(Landroid/os/Bundle;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/FocusAreaHelper;->getSpecifiedShortcut(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "FocusAreaHelper"

    const-string p1, "Failed to nudge to nudge shortcut view because there is no focused view in this FocusArea"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {p0, v0, p1}, Lcom/android/car/ui/utils/ViewUtils;->isCandidate(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    invoke-static {v0}, Lcom/android/car/ui/utils/ViewUtils;->requestFocus(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private saveFocusAreaHistory(ILcom/android/car/ui/IFocusArea;Lcom/android/car/ui/IFocusArea;J)V
    .locals 0

    invoke-interface {p2}, Lcom/android/car/ui/IFocusArea;->getHelper()Lcom/android/car/ui/FocusAreaHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/car/ui/FocusAreaHelper;->getCachedFocusArea(IJ)Lcom/android/car/ui/IFocusArea;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/car/ui/FocusAreaHelper;->getOppositeDirection(I)I

    move-result p0

    invoke-interface {p3}, Lcom/android/car/ui/IFocusArea;->getHelper()Lcom/android/car/ui/FocusAreaHelper;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p4, p5}, Lcom/android/car/ui/FocusAreaHelper;->saveFocusArea(ILcom/android/car/ui/IFocusArea;J)V

    :cond_0
    return-void
.end method

.method private saveFocusHistory(Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mHasFocus:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    iget-object v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusedView:Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/car/ui/RotaryCache;->saveFocusedView(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusedView:Landroid/view/View;

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_0

    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusedView:Landroid/view/View;

    return-void
.end method

.method private shouldSkipRestoreFocus()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mSkipRestoreFocusUntil:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mSkipRestoreFocusUntil:J

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mEnableForegroundHighlight:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mHasFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mForegroundHighlight:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingLeft:I

    iget-object v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingTop:I

    iget-object v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingRight:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mForegroundHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method enableForegroundHighlight()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mEnableForegroundHighlight:Z

    return-void
.end method

.method getCachedFocusArea(IJ)Lcom/android/car/ui/IFocusArea;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/car/ui/RotaryCache;->getCachedFocusArea(IJ)Lcom/android/car/ui/IFocusArea;

    move-result-object p0

    return-object p0
.end method

.method getDefaultFocusView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mDefaultFocusView:Landroid/view/View;

    return-object p0
.end method

.method isFocusAreaAction(I)Z
    .locals 0

    sget-object p0, Lcom/android/car/ui/FocusAreaHelper;->FOCUS_AREA_ACTIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method isWrapAround()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mWrapAround:Z

    return p0
.end method

.method onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mShouldRestoreFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/car/ui/utils/ViewUtils;->isInMultiWindowMode(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mShouldRestoreFocus:Z

    :cond_0
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    invoke-virtual {v0}, Lcom/android/car/ui/RotaryCache;->clearFocusAreaHistory()V

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/ui/RotaryCache;->saveFocusedView(Landroid/view/View;J)V

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mEnableBackgroundHighlight:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mHasFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingLeft:I

    iget-object v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingTop:I

    iget-object v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingRight:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method onFinishInflate()V
    .locals 2

    iget v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mDefaultFocusId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mDefaultFocusView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.android.car.ui.utils.FOCUS_AREA_LEFT_BOUND_OFFSET"

    iget v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mLeftOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.android.car.ui.utils.FOCUS_AREA_RIGHT_BOUND_OFFSET"

    iget v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mRightOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.android.car.ui.utils.FOCUS_AREA_TOP_BOUND_OFFSET"

    iget v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mTopOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.android.car.ui.utils.FOCUS_AREA_BOTTOM_BOUND_OFFSET"

    iget p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mBottomOffset:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method onLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mRtl:Z

    if-eq v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mRtl:Z

    iget v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingLeft:I

    iget v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingRight:I

    iput v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingLeft:I

    iput v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingRight:I

    iget v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mLeftOffset:I

    iget v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mRightOffset:I

    iput v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mLeftOffset:I

    iput v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mRightOffset:I

    :cond_1
    return-void
.end method

.method onRequestFocusInDescendants()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mShouldRestoreFocus:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/car/ui/FocusAreaHelper;->shouldSkipRestoreFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/car/ui/FocusAreaHelper;->maybeAdjustFocus()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method onWindowFocusChanged(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The window of Activity ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/ui/utils/ViewUtils;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "] gained"

    goto :goto_0

    :cond_0
    const-string v1, "] lost"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " focus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusAreaHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mShouldRestoreFocus:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/car/ui/FocusAreaHelper;->maybeInitFocus()Z

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x1000000

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x2000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x20000000

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p2}, Lcom/android/car/ui/FocusAreaHelper;->getNudgeDirection(Landroid/os/Bundle;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/FocusAreaHelper;->isNudgeDisabled(I)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/car/ui/FocusAreaHelper;->nudgeToAnotherFocusArea(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/car/ui/FocusAreaHelper;->nudgeToShortcutView(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_3
    invoke-direct {p0}, Lcom/android/car/ui/FocusAreaHelper;->focusOnDescendant()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mPreviousFocusArea:Lcom/android/car/ui/IFocusArea;

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/android/car/ui/FocusAreaHelper;->getNudgeDirection(Landroid/os/Bundle;)I

    move-result v2

    const/4 p2, -0x1

    if-eq v2, p2, :cond_4

    iget-object v3, p0, Lcom/android/car/ui/FocusAreaHelper;->mPreviousFocusArea:Lcom/android/car/ui/IFocusArea;

    iget-object p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    move-object v4, p2

    check-cast v4, Lcom/android/car/ui/IFocusArea;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/car/ui/FocusAreaHelper;->saveFocusAreaHistory(ILcom/android/car/ui/IFocusArea;Lcom/android/car/ui/IFocusArea;J)V

    :cond_4
    return p1
.end method

.method restoreDefaultFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mShouldRestoreFocus:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/car/ui/FocusAreaHelper;->shouldSkipRestoreFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/car/ui/FocusAreaHelper;->maybeAdjustFocus()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method saveFocusArea(ILcom/android/car/ui/IFocusArea;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/car/ui/RotaryCache;->saveFocusArea(ILcom/android/car/ui/IFocusArea;J)V

    return-void
.end method

.method setBoundsOffset(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mLeftOffset:I

    iput p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mTopOffset:I

    iput p3, p0, Lcom/android/car/ui/FocusAreaHelper;->mRightOffset:I

    iput p4, p0, Lcom/android/car/ui/FocusAreaHelper;->mBottomOffset:I

    return-void
.end method

.method setClearFocusAreaHistoryWhenRotating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mClearFocusAreaHistoryWhenRotating:Z

    return-void
.end method

.method setDefaultFocus(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mDefaultFocusView:Landroid/view/View;

    return-void
.end method

.method setDefaultFocusOverridesHistory(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mDefaultFocusOverridesHistory:Z

    return-void
.end method

.method setHighlightPadding(IIII)V
    .locals 1

    iget v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingBottom:I

    if-ne v0, p4, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingLeft:I

    iput p2, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingTop:I

    iput p3, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingRight:I

    iput p4, p0, Lcom/android/car/ui/FocusAreaHelper;->mPaddingBottom:I

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mFocusArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method setNudgeEnabled(IZ)V
    .locals 2

    sget-object v0, Lcom/android/car/ui/FocusAreaHelper;->NUDGE_DIRECTIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mDisabledNudgeDirections:Ljava/util/Set;

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const-string p0, "direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT."

    invoke-static {p0}, Lokio/Buffer$$ExternalSyntheticBUOutline3;->m(Ljava/lang/String;)V

    return-void
.end method

.method setNudgeShortcut(ILandroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/android/car/ui/FocusAreaHelper;->NUDGE_DIRECTIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/car/ui/FocusAreaHelper;->maybeInitializeSpecifiedShortcuts()V

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeShortcutMap:Landroid/util/SparseArray;

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT."

    invoke-static {p0}, Lokio/Buffer$$ExternalSyntheticBUOutline3;->m(Ljava/lang/String;)V

    return-void
.end method

.method setNudgeTargetFocusArea(ILcom/android/car/ui/IFocusArea;)V
    .locals 2

    sget-object v0, Lcom/android/car/ui/FocusAreaHelper;->NUDGE_DIRECTIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/car/ui/FocusAreaHelper;->maybeInitializeSpecifiedFocusAreas()V

    iget-object p0, p0, Lcom/android/car/ui/FocusAreaHelper;->mSpecifiedNudgeFocusAreaMap:Landroid/util/SparseArray;

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT."

    invoke-static {p0}, Lokio/Buffer$$ExternalSyntheticBUOutline3;->m(Ljava/lang/String;)V

    return-void
.end method

.method setRotaryCache(Lcom/android/car/ui/RotaryCache;)V
    .locals 0

    iput-object p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    return-void
.end method

.method setWrapAround(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/car/ui/FocusAreaHelper;->mWrapAround:Z

    return-void
.end method
