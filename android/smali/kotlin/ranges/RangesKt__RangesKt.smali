.class Lkotlin/ranges/RangesKt__RangesKt;
.super Ljava/lang/Object;
.source "Ranges.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000f\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a@\u0010\u0006\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0007*\u00020\u0008\"\u0018\u0008\u0001\u0010\t*\u0008\u0012\u0004\u0012\u0002H\u00070\n*\u0008\u0012\u0004\u0012\u0002H\u00070\u000b*\u0002H\t2\u0008\u0010\u000c\u001a\u0004\u0018\u0001H\u0007H\u0087\n\u00a2\u0006\u0002\u0010\r\u001a@\u0010\u0006\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0007*\u00020\u0008\"\u0018\u0008\u0001\u0010\t*\u0008\u0012\u0004\u0012\u0002H\u00070\u000e*\u0008\u0012\u0004\u0012\u0002H\u00070\u000b*\u0002H\t2\u0008\u0010\u000c\u001a\u0004\u0018\u0001H\u0007H\u0087\n\u00a2\u0006\u0002\u0010\u000f\u001a0\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\n\"\u000e\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00070\u0011*\u0002H\u00072\u0006\u0010\u0012\u001a\u0002H\u0007H\u0086\u0002\u00a2\u0006\u0002\u0010\u0013\u001a\u001b\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014*\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0015H\u0087\u0002\u001a\u001b\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0014*\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0016H\u0087\u0002\u001a0\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u000e\"\u000e\u0008\u0000\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00070\u0011*\u0002H\u00072\u0006\u0010\u0012\u001a\u0002H\u0007H\u0087\u0002\u00a2\u0006\u0002\u0010\u0018\u001a\u001b\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000e*\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0015H\u0087\u0002\u001a\u001b\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000e*\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0016H\u0087\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "checkStepIsPositive",
        "",
        "isPositive",
        "",
        "step",
        "",
        "contains",
        "T",
        "",
        "R",
        "Lkotlin/ranges/ClosedRange;",
        "",
        "element",
        "(Lkotlin/ranges/ClosedRange;Ljava/lang/Object;)Z",
        "Lkotlin/ranges/OpenEndRange;",
        "(Lkotlin/ranges/OpenEndRange;Ljava/lang/Object;)Z",
        "rangeTo",
        "",
        "that",
        "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/ClosedRange;",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
        "",
        "",
        "rangeUntil",
        "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/OpenEndRange;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x31
    xs = "kotlin/ranges/RangesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkStepIsPositive(ZLjava/lang/Number;)V
    .locals 3
    .param p0, "isPositive"    # Z
    .param p1, "step"    # Ljava/lang/Number;

    const-string/jumbo v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    if-eqz p0, :cond_0

    .line 278
    return-void

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step must be positive, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final contains(Lkotlin/ranges/ClosedRange;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this$contains"    # Lkotlin/ranges/ClosedRange;
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R::",
            "Lkotlin/ranges/ClosedRange<",
            "TT;>;:",
            "Ljava/lang/Iterable<",
            "+TT;>;>(TR;TT;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p0, v0}, Lkotlin/ranges/ClosedRange;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final contains(Lkotlin/ranges/OpenEndRange;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this$contains"    # Lkotlin/ranges/OpenEndRange;
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R::",
            "Lkotlin/ranges/OpenEndRange<",
            "TT;>;:",
            "Ljava/lang/Iterable<",
            "+TT;>;>(TR;TT;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p0, v0}, Lkotlin/ranges/OpenEndRange;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final rangeTo(DD)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 1
    .param p0, "$this$rangeTo"    # D
    .param p2, "that"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Lkotlin/ranges/ClosedDoubleRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlin/ranges/ClosedDoubleRange;-><init>(DD)V

    check-cast v0, Lkotlin/ranges/ClosedFloatingPointRange;

    return-object v0
.end method

.method public static final rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 1
    .param p0, "$this$rangeTo"    # F
    .param p1, "that"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Lkotlin/ranges/ClosedFloatRange;

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    check-cast v0, Lkotlin/ranges/ClosedFloatingPointRange;

    return-object v0
.end method

.method public static final rangeTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/ClosedRange;
    .locals 1
    .param p0, "$this$rangeTo"    # Ljava/lang/Comparable;
    .param p1, "that"    # Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)",
            "Lkotlin/ranges/ClosedRange<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "that"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lkotlin/ranges/ComparableRange;

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/ComparableRange;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    check-cast v0, Lkotlin/ranges/ClosedRange;

    return-object v0
.end method

.method public static final rangeUntil(DD)Lkotlin/ranges/OpenEndRange;
    .locals 1
    .param p0, "$this$rangeUntil"    # D
    .param p2, "that"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Lkotlin/ranges/OpenEndDoubleRange;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlin/ranges/OpenEndDoubleRange;-><init>(DD)V

    check-cast v0, Lkotlin/ranges/OpenEndRange;

    return-object v0
.end method

.method public static final rangeUntil(FF)Lkotlin/ranges/OpenEndRange;
    .locals 1
    .param p0, "$this$rangeUntil"    # F
    .param p1, "that"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lkotlin/ranges/OpenEndRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Lkotlin/ranges/OpenEndFloatRange;

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/OpenEndFloatRange;-><init>(FF)V

    check-cast v0, Lkotlin/ranges/OpenEndRange;

    return-object v0
.end method

.method public static final rangeUntil(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/OpenEndRange;
    .locals 1
    .param p0, "$this$rangeUntil"    # Ljava/lang/Comparable;
    .param p1, "that"    # Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)",
            "Lkotlin/ranges/OpenEndRange<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "that"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lkotlin/ranges/ComparableOpenEndRange;

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/ComparableOpenEndRange;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    check-cast v0, Lkotlin/ranges/OpenEndRange;

    return-object v0
.end method
