.class final Landroidx/appcompat/widget/AppCompatSpinner$Api23Impl;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    return-void
.end method

.method static setDropDownViewTheme(Landroid/widget/ThemedSpinnerAdapter;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p0, "themedSpinnerAdapter"    # Landroid/widget/ThemedSpinnerAdapter;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1111
    invoke-interface {p0}, Landroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    invoke-interface {p0, p1}, Landroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    .line 1114
    :cond_0
    return-void
.end method
