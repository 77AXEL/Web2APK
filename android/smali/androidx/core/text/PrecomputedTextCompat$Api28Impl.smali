.class Landroidx/core/text/PrecomputedTextCompat$Api28Impl;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/PrecomputedTextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    return-void
.end method

.method static castToSpannable(Landroid/text/PrecomputedText;)Landroid/text/Spannable;
    .locals 0
    .param p0, "precomputedText"    # Landroid/text/PrecomputedText;

    .line 749
    return-object p0
.end method
