.class public abstract Lcom/google/android/material/shape/ShapeableDelegate;
.super Ljava/lang/Object;
.source "ShapeableDelegate.java"


# instance fields
.field forceCompatClippingEnabled:Z

.field maskBounds:Landroid/graphics/RectF;

.field offsetZeroCornerEdgeBoundsEnabled:Z

.field shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field final shapePath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->forceCompatClippingEnabled:Z

    .line 41
    iput-boolean v0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->offsetZeroCornerEdgeBoundsEnabled:Z

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->maskBounds:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->shapePath:Landroid/graphics/Path;

    return-void
.end method

.method public static create(Landroid/view/View;)Lcom/google/android/material/shape/ShapeableDelegate;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 49
    new-instance v0, Lcom/google/android/material/shape/ShapeableDelegateV33;

    invoke-direct {v0, p0}, Lcom/google/android/material/shape/ShapeableDelegateV33;-><init>(Landroid/view/View;)V

    return-object v0

    .line 50
    :cond_0
    nop

    .line 51
    new-instance v0, Lcom/google/android/material/shape/ShapeableDelegateV22;

    invoke-direct {v0, p0}, Lcom/google/android/material/shape/ShapeableDelegateV22;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private isMaskBoundsValid()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->maskBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeableDelegate;->maskBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->maskBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeableDelegate;->maskBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateShapePath()V
    .locals 5

    .line 143
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeableDelegate;->isMaskBoundsValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapeableDelegate;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeableDelegate;->maskBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/material/shape/ShapeableDelegate;->shapePath:Landroid/graphics/Path;

    .line 145
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method abstract invalidateClippingMethod(Landroid/view/View;)V
.end method

.method public isForceCompatClippingEnabled()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->forceCompatClippingEnabled:Z

    return v0
.end method

.method public maybeClip(Landroid/graphics/Canvas;Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "op"    # Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;

    .line 154
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeableDelegate;->shouldUseCompatClipping()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->shapePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->shapePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 157
    invoke-interface {p2, p1}, Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;->run(Landroid/graphics/Canvas;)V

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;->run(Landroid/graphics/Canvas;)V

    .line 162
    :goto_0
    return-void
.end method

.method public onMaskChanged(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maskBounds"    # Landroid/graphics/RectF;

    .line 137
    iput-object p2, p0, Lcom/google/android/material/shape/ShapeableDelegate;->maskBounds:Landroid/graphics/RectF;

    .line 138
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeableDelegate;->updateShapePath()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeableDelegate;->invalidateClippingMethod(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public onShapeAppearanceChanged(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 125
    iput-object p2, p0, Lcom/google/android/material/shape/ShapeableDelegate;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 126
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeableDelegate;->updateShapePath()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeableDelegate;->invalidateClippingMethod(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method public setForceCompatClippingEnabled(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 89
    iget-boolean v0, p0, Lcom/google/android/material/shape/ShapeableDelegate;->forceCompatClippingEnabled:Z

    if-eq p2, v0, :cond_0

    .line 90
    iput-boolean p2, p0, Lcom/google/android/material/shape/ShapeableDelegate;->forceCompatClippingEnabled:Z

    .line 91
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeableDelegate;->invalidateClippingMethod(Landroid/view/View;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setOffsetZeroCornerEdgeBoundsEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 113
    iput-boolean p2, p0, Lcom/google/android/material/shape/ShapeableDelegate;->offsetZeroCornerEdgeBoundsEnabled:Z

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeableDelegate;->invalidateClippingMethod(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method abstract shouldUseCompatClipping()Z
.end method
