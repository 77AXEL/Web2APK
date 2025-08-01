.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$VisibilityInfo;,
        Landroidx/transition/Visibility$OverlayListener;,
        Landroidx/transition/Visibility$DisappearListener;,
        Landroidx/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 103
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    .line 104
    sget-object v0, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p2

    check-cast v1, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v2, "transitionVisibilityMode"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 109
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0, v1}, Landroidx/transition/Visibility;->setMode(I)V

    .line 113
    :cond_0
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 147
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 148
    .local v0, "visibility":I
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 151
    .local v1, "loc":[I
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 152
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method private getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .locals 7
    .param p1, "startValues"    # Landroidx/transition/TransitionValues;
    .param p2, "endValues"    # Landroidx/transition/TransitionValues;

    .line 192
    new-instance v0, Landroidx/transition/Visibility$VisibilityInfo;

    invoke-direct {v0}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    .line 193
    .local v0, "visInfo":Landroidx/transition/Visibility$VisibilityInfo;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 194
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 195
    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p1, :cond_0

    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 196
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 197
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 199
    :cond_0
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 200
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 202
    :goto_0
    if-eqz p2, :cond_1

    iget-object v6, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 204
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 206
    :cond_1
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 207
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 209
    :goto_1
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 210
    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    .line 212
    return-object v0

    .line 214
    :cond_2
    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq v3, v4, :cond_4

    .line 215
    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v3, :cond_3

    .line 216
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 217
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 218
    :cond_3
    iget v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v1, :cond_8

    .line 219
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 220
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 224
    :cond_4
    iget-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez v3, :cond_5

    .line 225
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 226
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 227
    :cond_5
    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_8

    .line 228
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 229
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 233
    :cond_6
    if-nez p1, :cond_7

    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v3, :cond_7

    .line 234
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 235
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 236
    :cond_7
    if-nez p2, :cond_8

    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v3, :cond_8

    .line 237
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 238
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 240
    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 162
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 163
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 157
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 158
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;

    .line 247
    invoke-direct {p0, p2, p3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 248
    .local v0, "visInfo":Landroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 250
    :cond_0
    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v1, :cond_1

    .line 251
    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 254
    :cond_1
    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 259
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMode()I
    .locals 1

    .line 137
    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 143
    sget-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 4
    .param p1, "startValues"    # Landroidx/transition/TransitionValues;
    .param p2, "endValues"    # Landroidx/transition/TransitionValues;

    .line 491
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 492
    return v0

    .line 494
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 495
    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 496
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 499
    return v0

    .line 501
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v1

    .line 502
    .local v1, "changeInfo":Landroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v2, :cond_3

    iget v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz v2, :cond_2

    iget v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public isVisible(Landroidx/transition/TransitionValues;)Z
    .locals 4
    .param p1, "values"    # Landroidx/transition/TransitionValues;

    .line 181
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 182
    return v0

    .line 184
    :cond_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 185
    .local v1, "visibility":I
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 187
    .local v2, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 281
    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    if-nez p2, :cond_1

    .line 285
    iget-object v0, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 286
    .local v0, "endParent":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v3

    .line 288
    .local v3, "startParentValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p0, v0, v1}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v1

    .line 289
    .local v1, "endParentValues":Landroidx/transition/TransitionValues;
    nop

    .line 290
    invoke-direct {p0, v3, v1}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v4

    .line 291
    .local v4, "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v5, :cond_1

    .line 292
    return-object v2

    .line 295
    .end local v0    # "endParent":Landroid/view/View;
    .end local v1    # "endParentValues":Landroidx/transition/TransitionValues;
    .end local v3    # "startParentValues":Landroidx/transition/TransitionValues;
    .end local v4    # "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    :cond_1
    iget-object v0, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 282
    :cond_2
    :goto_0
    return-object v2
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 19
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 341
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Landroidx/transition/Visibility;->mMode:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    .line 342
    return-object v7

    .line 345
    :cond_0
    if-nez v2, :cond_1

    .line 347
    return-object v7

    .line 350
    :cond_1
    iget-object v5, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 351
    .local v5, "startView":Landroid/view/View;
    if-eqz v3, :cond_2

    iget-object v8, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v8, v7

    .line 352
    .local v8, "endView":Landroid/view/View;
    :goto_0
    const/4 v9, 0x0

    .line 353
    .local v9, "overlayView":Landroid/view/View;
    const/4 v10, 0x0

    .line 354
    .local v10, "viewToKeep":Landroid/view/View;
    const/4 v11, 0x0

    .line 356
    .local v11, "reusingOverlayView":Z
    sget v12, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {v5, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 357
    .local v12, "savedOverlayView":Landroid/view/View;
    const/4 v13, 0x1

    if-eqz v12, :cond_3

    .line 361
    move-object v9, v12

    .line 362
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 364
    :cond_3
    const/4 v14, 0x0

    .line 366
    .local v14, "needOverlayForStartView":Z
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_4

    goto :goto_1

    .line 375
    :cond_4
    const/4 v15, 0x4

    if-ne v4, v15, :cond_5

    .line 376
    move-object v10, v8

    goto :goto_2

    .line 379
    :cond_5
    if-ne v5, v8, :cond_6

    .line 380
    move-object v10, v8

    goto :goto_2

    .line 382
    :cond_6
    const/4 v14, 0x1

    goto :goto_2

    .line 367
    :cond_7
    :goto_1
    if-eqz v8, :cond_8

    .line 369
    move-object v9, v8

    goto :goto_2

    .line 371
    :cond_8
    const/4 v14, 0x1

    .line 387
    :goto_2
    if-eqz v14, :cond_c

    .line 391
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_9

    .line 393
    move-object v9, v5

    goto :goto_3

    .line 394
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    instance-of v15, v15, Landroid/view/View;

    if-eqz v15, :cond_c

    .line 395
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 396
    .local v15, "startParent":Landroid/view/View;
    invoke-virtual {v0, v15, v13}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v7

    .line 397
    .local v7, "startParentValues":Landroidx/transition/TransitionValues;
    invoke-virtual {v0, v15, v13}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v6

    .line 399
    .local v6, "endParentValues":Landroidx/transition/TransitionValues;
    nop

    .line 400
    invoke-direct {v0, v7, v6}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v13

    .line 401
    .local v13, "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    move-object/from16 v17, v6

    .end local v6    # "endParentValues":Landroidx/transition/TransitionValues;
    .local v17, "endParentValues":Landroidx/transition/TransitionValues;
    iget-boolean v6, v13, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v6, :cond_a

    .line 402
    invoke-static {v1, v5, v15}, Landroidx/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    goto :goto_3

    .line 405
    :cond_a
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v6

    .line 406
    .local v6, "id":I
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    if-nez v18, :cond_b

    move-object/from16 v18, v7

    .end local v7    # "startParentValues":Landroidx/transition/TransitionValues;
    .local v18, "startParentValues":Landroidx/transition/TransitionValues;
    const/4 v7, -0x1

    if-eq v6, v7, :cond_c

    .line 407
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-boolean v7, v0, Landroidx/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v7, :cond_c

    .line 411
    move-object v9, v5

    goto :goto_3

    .line 406
    .end local v18    # "startParentValues":Landroidx/transition/TransitionValues;
    .restart local v7    # "startParentValues":Landroidx/transition/TransitionValues;
    :cond_b
    move-object/from16 v18, v7

    .line 420
    .end local v6    # "id":I
    .end local v7    # "startParentValues":Landroidx/transition/TransitionValues;
    .end local v13    # "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    .end local v14    # "needOverlayForStartView":Z
    .end local v15    # "startParent":Landroid/view/View;
    .end local v17    # "endParentValues":Landroidx/transition/TransitionValues;
    :cond_c
    :goto_3
    const/4 v6, 0x0

    if-eqz v9, :cond_10

    .line 421
    if-nez v11, :cond_d

    .line 422
    iget-object v7, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v13, "android:visibility:screenLocation"

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 423
    .local v7, "screenLoc":[I
    aget v13, v7, v6

    .line 424
    .local v13, "screenX":I
    const/4 v14, 0x1

    aget v15, v7, v14

    .line 425
    .local v15, "screenY":I
    const/4 v14, 0x2

    new-array v14, v14, [I

    .line 426
    .local v14, "loc":[I
    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 427
    aget v6, v14, v6

    sub-int v6, v13, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v6, v6, v16

    invoke-virtual {v9, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 428
    const/4 v6, 0x1

    aget v6, v14, v6

    sub-int v6, v15, v6

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v6, v6, v16

    invoke-virtual {v9, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 431
    .end local v7    # "screenLoc":[I
    .end local v13    # "screenX":I
    .end local v14    # "loc":[I
    .end local v15    # "screenY":I
    :cond_d
    invoke-virtual {v0, v1, v9, v2, v3}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    .line 432
    .local v6, "animator":Landroid/animation/Animator;
    if-nez v11, :cond_f

    .line 433
    if-nez v6, :cond_e

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_4

    .line 436
    :cond_e
    sget v7, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {v5, v7, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 438
    new-instance v7, Landroidx/transition/Visibility$OverlayListener;

    invoke-direct {v7, v0, v1, v9, v5}, Landroidx/transition/Visibility$OverlayListener;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    .line 441
    .local v7, "listener":Landroidx/transition/Visibility$OverlayListener;
    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 442
    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Visibility;->getRootTransition()Landroidx/transition/Transition;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 446
    .end local v7    # "listener":Landroidx/transition/Visibility$OverlayListener;
    :cond_f
    :goto_4
    return-object v6

    .line 449
    .end local v6    # "animator":Landroid/animation/Animator;
    :cond_10
    if-eqz v10, :cond_12

    .line 450
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v7

    .line 451
    .local v7, "originalVisibility":I
    invoke-static {v10, v6}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 452
    invoke-virtual {v0, v1, v10, v2, v3}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    .line 453
    .restart local v6    # "animator":Landroid/animation/Animator;
    if-eqz v6, :cond_11

    .line 454
    new-instance v13, Landroidx/transition/Visibility$DisappearListener;

    const/4 v14, 0x1

    invoke-direct {v13, v10, v4, v14}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 456
    .local v13, "disappearListener":Landroidx/transition/Visibility$DisappearListener;
    invoke-virtual {v6, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Visibility;->getRootTransition()Landroidx/transition/Transition;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 458
    .end local v13    # "disappearListener":Landroidx/transition/Visibility$DisappearListener;
    goto :goto_5

    .line 459
    :cond_11
    invoke-static {v10, v7}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 461
    :goto_5
    return-object v6

    .line 463
    .end local v6    # "animator":Landroid/animation/Animator;
    .end local v7    # "originalVisibility":I
    :cond_12
    const/4 v6, 0x0

    return-object v6
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 123
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 126
    iput p1, p0, Landroidx/transition/Visibility;->mMode:I

    .line 127
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
