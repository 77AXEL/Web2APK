.class Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$Api21Impl;
.super Ljava/lang/Object;
.source "DrawableContainerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    return-void
.end method

.method public static canApplyTheme(Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .locals 1
    .param p0, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1215
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public static getOutline(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V
    .locals 0
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 1223
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 1224
    return-void
.end method

.method public static getResources(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1219
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
