.class Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat$Api34Impl;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    return-void
.end method

.method static getLocales(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/os/LocaleList;
    .locals 1
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 689
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public static getTransitionTimeMillis(Landroid/view/accessibility/AccessibilityWindowInfo;)J
    .locals 2
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 684
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTransitionTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
