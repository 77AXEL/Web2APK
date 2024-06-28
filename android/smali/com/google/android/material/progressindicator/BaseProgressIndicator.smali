.class public abstract Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.super Landroid/widget/ProgressBar;
.source "BaseProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/progressindicator/BaseProgressIndicator$HideAnimationBehavior;,
        Lcom/google/android/material/progressindicator/BaseProgressIndicator$ShowAnimationBehavior;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;",
        ">",
        "Landroid/widget/ProgressBar;"
    }
.end annotation


# static fields
.field static final DEFAULT_OPACITY:F = 0.2f

.field static final DEF_STYLE_RES:I

.field public static final HIDE_ESCAPE:I = 0x3

.field public static final HIDE_INWARD:I = 0x2

.field public static final HIDE_NONE:I = 0x0

.field public static final HIDE_OUTWARD:I = 0x1

.field static final MAX_ALPHA:I = 0xff

.field static final MAX_HIDE_DELAY:I = 0x3e8

.field public static final SHOW_INWARD:I = 0x2

.field public static final SHOW_NONE:I = 0x0

.field public static final SHOW_OUTWARD:I = 0x1


# instance fields
.field animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

.field private final delayedHide:Ljava/lang/Runnable;

.field private final delayedShow:Ljava/lang/Runnable;

.field private final hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private isIndeterminateModeChangeRequested:Z

.field private isParentDoneInitializing:Z

.field private lastShowStartTime:J

.field private final minHideDelay:I

.field private final showDelay:I

.field spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private storedProgress:I

.field private storedProgressAnimated:Z

.field private final switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private visibilityAfterHide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ProgressIndicator:I

    sput v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->DEF_STYLE_RES:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 138
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    sget v0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z

    .line 129
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibilityAfterHide:I

    .line 810
    new-instance v1, Lcom/google/android/material/progressindicator/BaseProgressIndicator$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$1;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    .line 823
    new-instance v1, Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$2;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    .line 838
    new-instance v1, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$3;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 853
    new-instance v1, Lcom/google/android/material/progressindicator/BaseProgressIndicator$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator$4;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V

    iput-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 142
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 147
    sget-object v4, Lcom/google/android/material/R$styleable;->BaseProgressIndicator:[I

    new-array v7, v0, [I

    .line 148
    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 150
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_showDelay:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->showDelay:I

    .line 151
    sget v1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_minHideDelay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 152
    .local v1, "minHideDelayUncapped":I
    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    new-instance v2, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    invoke-direct {v2}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 156
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isParentDoneInitializing:Z

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 70
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->internalShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 70
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->internalHide()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/material/progressindicator/BaseProgressIndicator;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;
    .param p1, "x1"    # J

    .line 70
    iput-wide p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 70
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgress:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 70
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgressAnimated:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 70
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/material/progressindicator/BaseProgressIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 70
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibilityAfterHide:I

    return v0
.end method

.method private getCurrentDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/DrawingDelegate<",
            "TS;>;"
        }
    .end annotation

    .line 366
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;

    move-result-object v1

    .line 367
    :goto_0
    return-object v1

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->getDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private internalHide()V
    .locals 3

    .line 250
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 251
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    .line 253
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isNoLongerNeedToBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setVisibility(I)V

    .line 256
    :cond_0
    return-void
.end method

.method private internalShow()V
    .locals 2

    .line 214
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    if-lez v0, :cond_0

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    .line 218
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setVisibility(I)V

    .line 219
    return-void
.end method

.method private isNoLongerNeedToBeVisible()Z
    .locals 1

    .line 488
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 488
    :goto_1
    return v0
.end method

.method private registerAnimationCallbacks()V
    .locals 2

    .line 164
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 180
    :cond_2
    return-void
.end method

.method private unregisterAnimationCallbacks()V
    .locals 2

    .line 183
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    .line 185
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->unregisterAnimatorsCompleteCallback()V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->hideAnimationCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    .line 190
    :cond_1
    return-void
.end method


# virtual methods
.method protected applyNewVisibility(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 277
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isParentDoneInitializing:Z

    if-nez v0, :cond_0

    .line 278
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 282
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    .line 283
    return-void
.end method

.method abstract createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TS;"
        }
    .end annotation
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 360
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHideAnimationBehavior()I
    .locals 1

    .line 703
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    return v0
.end method

.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 70
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/IndeterminateDrawable<",
            "TS;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    return-object v0
.end method

.method public getIndicatorColor()[I
    .locals 1

    .line 564
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    return-object v0
.end method

.method public getIndicatorTrackGapSize()I
    .locals 1

    .line 650
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorTrackGapSize:I

    return v0
.end method

.method public bridge synthetic getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 70
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/progressindicator/DeterminateDrawable<",
            "TS;>;"
        }
    .end annotation

    .line 424
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    return-object v0
.end method

.method public getShowAnimationBehavior()I
    .locals 1

    .line 678
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    return v0
.end method

.method public getTrackColor()I
    .locals 1

    .line 596
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    return v0
.end method

.method public getTrackCornerRadius()I
    .locals 1

    .line 623
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    return v0
.end method

.method public getTrackThickness()I
    .locals 1

    .line 537
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    return v0
.end method

.method public hide()V
    .locals 6

    .line 226
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 229
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->lastShowStartTime:J

    sub-long/2addr v0, v2

    .line 234
    .local v0, "timeElapsedSinceShowStart":J
    iget v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 235
    .local v2, "enoughTimeElapsed":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 236
    iget-object v3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 237
    return-void

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    iget v4, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->minHideDelay:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 348
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 349
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 352
    :cond_0
    return-void
.end method

.method isEffectivelyVisible()Z
    .locals 5

    .line 467
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    move-object v0, p0

    .line 469
    .local v0, "current":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 470
    return v2

    .line 472
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 473
    .local v1, "parent":Landroid/view/ViewParent;
    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 474
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWindowVisibility()I

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 476
    :cond_2
    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_3

    .line 477
    return v3

    .line 479
    :cond_3
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 480
    .end local v1    # "parent":Landroid/view/ViewParent;
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 287
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 288
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->registerAnimationCallbacks()V

    .line 290
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->internalShow()V

    .line 293
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 298
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 300
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    .line 301
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->unregisterAnimationCallbacks()V

    .line 302
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 303
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    monitor-enter p0

    .line 309
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 310
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    .end local p0    # "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 315
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 316
    .local v2, "h":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 320
    .end local v1    # "w":I
    .end local v2    # "h":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 308
    .end local v0    # "saveCount":I
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    monitor-enter p0

    .line 327
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawingDelegate()Lcom/google/android/material/progressindicator/DrawingDelegate;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .local v0, "drawingDelegate":Lcom/google/android/material/progressindicator/DrawingDelegate;, "Lcom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    if-nez v0, :cond_0

    .line 329
    monitor-exit p0

    return-void

    .line 336
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredWidth()I

    move-result v1

    if-gez v1, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getDefaultSize(II)I

    move-result v1

    goto :goto_0

    .line 338
    .end local p0    # "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    nop

    .line 340
    .local v1, "measuredWidth":I
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredHeight()I

    move-result v2

    if-gez v2, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getDefaultSize(II)I

    move-result v2

    goto :goto_1

    .line 342
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawingDelegate;->getPreferredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    :goto_1
    nop

    .line 343
    .local v2, "measuredHeight":I
    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 326
    .end local v0    # "drawingDelegate":Lcom/google/android/material/progressindicator/DrawingDelegate;, "Lcom/google/android/material/progressindicator/DrawingDelegate<TS;>;"
    .end local v1    # "measuredWidth":I
    .end local v2    # "measuredHeight":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 260
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    .line 261
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->applyNewVisibility(Z)V

    .line 262
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 266
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowVisibilityChanged(I)V

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->applyNewVisibility(Z)V

    .line 268
    return-void
.end method

.method public setAnimatorDurationScaleProvider(Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;)V
    .locals 1
    .param p1, "animatorDurationScaleProvider"    # Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 794
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 795
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 799
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    iput-object p1, v0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 801
    :cond_1
    return-void
.end method

.method public setHideAnimationBehavior(I)V
    .locals 1
    .param p1, "hideAnimationBehavior"    # I

    .line 715
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    .line 716
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    .line 717
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 4
    .param p1, "indeterminate"    # Z

    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    monitor-enter p0

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 504
    monitor-exit p0

    return-void

    .line 509
    :cond_0
    nop

    .line 510
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 511
    .local v0, "oldDrawable":Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    .line 514
    .end local p0    # "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 515
    nop

    .line 516
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 517
    .local v1, "newDrawable":Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 518
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    move-result v3

    invoke-virtual {v1, v3, v2, v2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setVisible(ZZZ)Z

    .line 520
    :cond_2
    instance-of v3, v1, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibleToUser()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 521
    move-object v3, v1

    check-cast v3, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->startAnimator()V

    .line 525
    :cond_3
    iput-boolean v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    .line 501
    .end local v0    # "oldDrawable":Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
    .end local v1    # "newDrawable":Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
    .end local p1    # "indeterminate":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 408
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    if-nez p1, :cond_0

    .line 409
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    return-void

    .line 412
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    if-eqz v0, :cond_1

    .line 413
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideNow()Z

    .line 414
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    return-void

    .line 416
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set framework drawable as indeterminate drawable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setIndicatorColor([I)V
    .locals 3
    .param p1, "indicatorColors"    # [I

    .line 576
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    array-length v0, p1

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$attr;->colorPrimary:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    move-object p1, v0

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndicatorColor()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iput-object p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    .line 582
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->invalidateSpecValues()V

    .line 583
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    .line 585
    :cond_1
    return-void
.end method

.method public setIndicatorTrackGapSize(I)V
    .locals 1
    .param p1, "indicatorTrackGapSize"    # I

    .line 662
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorTrackGapSize:I

    if-eq v0, p1, :cond_0

    .line 663
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorTrackGapSize:I

    .line 664
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->validateSpec()V

    .line 665
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    .line 667
    :cond_0
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    monitor-enter p0

    .line 730
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 731
    monitor-exit p0

    return-void

    .line 733
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    monitor-exit p0

    return-void

    .line 729
    .end local p0    # "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    .end local p1    # "progress":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressCompat(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "animated"    # Z

    .line 747
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 751
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgress:I

    .line 752
    iput-boolean p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->storedProgressAnimated:Z

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isIndeterminateModeChangeRequested:Z

    .line 755
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->animatorDurationScaleProvider:Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;

    .line 757
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 756
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAnimatorDelegate()Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;->requestCancelAnimatorAfterCurrentCycle()V

    goto :goto_1

    .line 759
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->switchIndeterminateModeCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getIndeterminateDrawable()Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 767
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 769
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 770
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgressDrawable()Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->jumpToCurrentState()V

    .line 773
    :cond_3
    :goto_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 383
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    if-nez p1, :cond_0

    .line 384
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    return-void

    .line 387
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    if-eqz v0, :cond_1

    .line 388
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;

    .line 389
    .local v0, "determinateDrawable":Lcom/google/android/material/progressindicator/DeterminateDrawable;, "Lcom/google/android/material/progressindicator/DeterminateDrawable<TS;>;"
    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->hideNow()Z

    .line 390
    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->setLevelByFraction(F)V

    .line 395
    .end local v0    # "determinateDrawable":Lcom/google/android/material/progressindicator/DeterminateDrawable;, "Lcom/google/android/material/progressindicator/DeterminateDrawable<TS;>;"
    nop

    .line 398
    return-void

    .line 396
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set framework drawable as progress drawable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowAnimationBehavior(I)V
    .locals 1
    .param p1, "showAnimationBehavior"    # I

    .line 690
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 691
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    .line 692
    return-void
.end method

.method public setTrackColor(I)V
    .locals 1
    .param p1, "trackColor"    # I

    .line 608
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    if-eq v0, p1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 610
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    .line 612
    :cond_0
    return-void
.end method

.method public setTrackCornerRadius(I)V
    .locals 2
    .param p1, "trackCornerRadius"    # I

    .line 635
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    if-eq v0, p1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    .line 637
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    .line 639
    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 1
    .param p1, "trackThickness"    # I

    .line 549
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    if-eq v0, p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 551
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->requestLayout()V

    .line 553
    :cond_0
    return-void
.end method

.method public setVisibilityAfterHide(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 781
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The component\'s visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->visibilityAfterHide:I

    .line 787
    return-void
.end method

.method public show()V
    .locals 3

    .line 199
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->showDelay:I

    if-lez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 201
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->showDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->delayedShow:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 205
    :goto_0
    return-void
.end method

.method visibleToUser()Z
    .locals 1

    .line 438
    .local p0, "this":Lcom/google/android/material/progressindicator/BaseProgressIndicator;, "Lcom/google/android/material/progressindicator/BaseProgressIndicator<TS;>;"
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->isEffectivelyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0
.end method
