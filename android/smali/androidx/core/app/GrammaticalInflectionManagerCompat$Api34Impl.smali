.class Landroidx/core/app/GrammaticalInflectionManagerCompat$Api34Impl;
.super Ljava/lang/Object;
.source "GrammaticalInflectionManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/GrammaticalInflectionManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApplicationGrammaticalGender(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    invoke-static {p0}, Landroidx/core/app/GrammaticalInflectionManagerCompat$Api34Impl;->getGrammaticalInflectionManager(Landroid/content/Context;)Landroid/app/GrammaticalInflectionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/GrammaticalInflectionManager;->getApplicationGrammaticalGender()I

    move-result v0

    return v0
.end method

.method private static getGrammaticalInflectionManager(Landroid/content/Context;)Landroid/app/GrammaticalInflectionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 134
    const-class v0, Landroid/app/GrammaticalInflectionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/GrammaticalInflectionManager;

    return-object v0
.end method

.method static setRequestedApplicationGrammaticalGender(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "grammaticalGender"    # I

    .line 128
    invoke-static {p0}, Landroidx/core/app/GrammaticalInflectionManagerCompat$Api34Impl;->getGrammaticalInflectionManager(Landroid/content/Context;)Landroid/app/GrammaticalInflectionManager;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Landroid/app/GrammaticalInflectionManager;->setRequestedApplicationGrammaticalGender(I)V

    .line 130
    return-void
.end method
