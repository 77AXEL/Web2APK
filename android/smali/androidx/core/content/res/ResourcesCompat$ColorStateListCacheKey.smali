.class final Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ColorStateListCacheKey"
.end annotation


# instance fields
.field final mResources:Landroid/content/res/Resources;

.field final mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    .line 332
    iput-object p2, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    .line 333
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 337
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 338
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 339
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;

    .line 340
    .local v2, "that":Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    iget-object v3, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    iget-object v4, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object v4, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    .line 341
    invoke-static {v3, v4}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 340
    :goto_0
    return v0

    .line 338
    .end local v2    # "that":Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 346
    iget-object v0, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
