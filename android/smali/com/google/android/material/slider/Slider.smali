.class public Lcom/google/android/material/slider/Slider;
.super Lcom/google/android/material/slider/BaseSlider;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/slider/Slider$OnSliderTouchListener;,
        Lcom/google/android/material/slider/Slider$OnChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/slider/BaseSlider<",
        "Lcom/google/android/material/slider/Slider;",
        "Lcom/google/android/material/slider/Slider$OnChangeListener;",
        "Lcom/google/android/material/slider/Slider$OnSliderTouchListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 72
    sget v0, Lcom/google/android/material/R$attr;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/slider/Slider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const v0, 0x1010024

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method


# virtual methods
.method public bridge synthetic addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->addOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    return-void
.end method

.method public bridge synthetic addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->addOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V

    return-void
.end method

.method public bridge synthetic clearOnChangeListeners()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnChangeListeners()V

    return-void
.end method

.method public bridge synthetic clearOnSliderTouchListeners()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->clearOnSliderTouchListeners()V

    return-void
.end method

.method public bridge synthetic dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActiveThumbIndex()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getActiveThumbIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFocusedThumbIndex()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getFocusedThumbIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHaloRadius()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloRadius()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHaloTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getHaloTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLabelBehavior()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getLabelBehavior()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStepSize()F
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getStepSize()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbElevation()F
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbElevation()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbHeight()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbRadius()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbRadius()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThumbStrokeWidth()F
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbStrokeWidth()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThumbTrackGapSize()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbTrackGapSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getThumbWidth()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getThumbWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTickActiveRadius()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickActiveRadius()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTickActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickActiveTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTickInactiveRadius()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickInactiveRadius()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickInactiveTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTickTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTickTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackActiveTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackHeight()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackInactiveTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackInsideCornerSize()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackInsideCornerSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrackSidePadding()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackSidePadding()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrackStopIndicatorSize()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackStopIndicatorSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTrackWidth()I
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getTrackWidth()I

    move-result v0

    return v0
.end method

.method public getValue()F
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValueFrom()F
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValueTo()F
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    move-result v0

    return v0
.end method

.method public bridge synthetic hasLabelFormatter()Z
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->hasLabelFormatter()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTickVisible()Z
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/google/android/material/slider/BaseSlider;->isTickVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/google/android/material/slider/BaseSlider;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected pickActiveThumb()Z
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/google/android/material/slider/Slider;->getActiveThumbIndex()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 133
    return v2

    .line 136
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/slider/Slider;->setActiveThumbIndex(I)V

    .line 137
    return v2
.end method

.method public bridge synthetic removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->removeOnChangeListener(Lcom/google/android/material/slider/BaseOnChangeListener;)V

    return-void
.end method

.method public bridge synthetic removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->removeOnSliderTouchListener(Lcom/google/android/material/slider/BaseOnSliderTouchListener;)V

    return-void
.end method

.method public setCustomThumbDrawable(I)V
    .locals 0
    .param p1, "drawableResId"    # I

    .line 119
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawable(I)V

    .line 120
    return-void
.end method

.method public setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setCustomThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setFocusedThumbIndex(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setFocusedThumbIndex(I)V

    return-void
.end method

.method public bridge synthetic setHaloRadius(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadius(I)V

    return-void
.end method

.method public bridge synthetic setHaloRadiusResource(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloRadiusResource(I)V

    return-void
.end method

.method public bridge synthetic setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setLabelBehavior(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelBehavior(I)V

    return-void
.end method

.method public bridge synthetic setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setLabelFormatter(Lcom/google/android/material/slider/LabelFormatter;)V

    return-void
.end method

.method public bridge synthetic setStepSize(F)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setStepSize(F)V

    return-void
.end method

.method public bridge synthetic setThumbElevation(F)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevation(F)V

    return-void
.end method

.method public bridge synthetic setThumbElevationResource(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbElevationResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbHeight(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbHeight(I)V

    return-void
.end method

.method public bridge synthetic setThumbHeightResource(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbHeightResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbRadius(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadius(I)V

    return-void
.end method

.method public bridge synthetic setThumbRadiusResource(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbRadiusResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeColorResource(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeColorResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeWidth(F)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidth(F)V

    return-void
.end method

.method public bridge synthetic setThumbStrokeWidthResource(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbStrokeWidthResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setThumbTrackGapSize(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbTrackGapSize(I)V

    return-void
.end method

.method public bridge synthetic setThumbWidth(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbWidth(I)V

    return-void
.end method

.method public bridge synthetic setThumbWidthResource(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setThumbWidthResource(I)V

    return-void
.end method

.method public bridge synthetic setTickActiveRadius(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveRadius(I)V

    return-void
.end method

.method public bridge synthetic setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickInactiveRadius(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveRadius(I)V

    return-void
.end method

.method public bridge synthetic setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickVisible(Z)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTickVisible(Z)V

    return-void
.end method

.method public bridge synthetic setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTrackHeight(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackHeight(I)V

    return-void
.end method

.method public bridge synthetic setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTrackInsideCornerSize(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackInsideCornerSize(I)V

    return-void
.end method

.method public bridge synthetic setTrackStopIndicatorSize(I)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackStopIndicatorSize(I)V

    return-void
.end method

.method public bridge synthetic setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setValue(F)V
    .locals 3
    .param p1, "value"    # F

    .line 111
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/google/android/material/slider/Slider;->setValues([Ljava/lang/Float;)V

    .line 112
    return-void
.end method

.method public bridge synthetic setValueFrom(F)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueFrom(F)V

    return-void
.end method

.method public bridge synthetic setValueTo(F)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/slider/BaseSlider;->setValueTo(F)V

    return-void
.end method
