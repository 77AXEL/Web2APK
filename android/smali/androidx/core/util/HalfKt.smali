.class public final Landroidx/core/util/HalfKt;
.super Ljava/lang/Object;
.source "Half.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHalf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Half.kt\nandroidx/core/util/HalfKt\n*L\n1#1,60:1\n43#1:61\n*S KotlinDebug\n*F\n+ 1 Half.kt\nandroidx/core/util/HalfKt\n*L\n51#1:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\n\n\u0002\u0010\u000e\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0003H\u0087\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0005H\u0087\u0008\u00a8\u0006\u0006"
    }
    d2 = {
        "toHalf",
        "Landroid/util/Half;",
        "",
        "",
        "",
        "",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toHalf(D)Landroid/util/Half;
    .locals 3
    .param p0, "$this$toHalf"    # D

    const/4 v0, 0x0

    .line 51
    .local v0, "$i$f$toHalf":I
    double-to-float v1, p0

    .local v1, "$this$toHalf$iv":F
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$f$toHalf":I
    invoke-static {v1}, Landroid/util/Half;->valueOf(F)Landroid/util/Half;

    move-result-object v1

    .line 51
    .end local v1    # "$this$toHalf$iv":F
    .end local v2    # "$i$f$toHalf":I
    return-object v1
.end method

.method public static final toHalf(F)Landroid/util/Half;
    .locals 2
    .param p0, "$this$toHalf"    # F

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$toHalf":I
    invoke-static {p0}, Landroid/util/Half;->valueOf(F)Landroid/util/Half;

    move-result-object v1

    return-object v1
.end method

.method public static final toHalf(Ljava/lang/String;)Landroid/util/Half;
    .locals 2
    .param p0, "$this$toHalf"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    .local v0, "$i$f$toHalf":I
    invoke-static {p0}, Landroid/util/Half;->valueOf(Ljava/lang/String;)Landroid/util/Half;

    move-result-object v1

    return-object v1
.end method

.method public static final toHalf(S)Landroid/util/Half;
    .locals 2
    .param p0, "$this$toHalf"    # S

    const/4 v0, 0x0

    .line 35
    .local v0, "$i$f$toHalf":I
    invoke-static {p0}, Landroid/util/Half;->valueOf(S)Landroid/util/Half;

    move-result-object v1

    return-object v1
.end method
