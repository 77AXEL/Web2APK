.class Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationMenuSeparatorItem"
.end annotation


# instance fields
.field private final paddingBottom:I

.field private final paddingTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingTop:I

    .line 900
    iput p2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingBottom:I

    .line 901
    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 1

    .line 908
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingBottom:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 904
    iget v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->paddingTop:I

    return v0
.end method
