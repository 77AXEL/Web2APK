.class final Landroidx/core/os/PersistableBundleApi22ImplKt;
.super Ljava/lang/Object;
.source "PersistableBundle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0018\n\u0000\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\"\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u000cH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/core/os/PersistableBundleApi22ImplKt;",
        "",
        "()V",
        "putBoolean",
        "",
        "persistableBundle",
        "Landroid/os/PersistableBundle;",
        "key",
        "",
        "value",
        "",
        "putBooleanArray",
        "",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/os/PersistableBundleApi22ImplKt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/os/PersistableBundleApi22ImplKt;

    invoke-direct {v0}, Landroidx/core/os/PersistableBundleApi22ImplKt;-><init>()V

    sput-object v0, Landroidx/core/os/PersistableBundleApi22ImplKt;->INSTANCE:Landroidx/core/os/PersistableBundleApi22ImplKt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final putBoolean(Landroid/os/PersistableBundle;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "persistableBundle"    # Landroid/os/PersistableBundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method public static final putBooleanArray(Landroid/os/PersistableBundle;Ljava/lang/String;[Z)V
    .locals 0
    .param p0, "persistableBundle"    # Landroid/os/PersistableBundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 152
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 153
    return-void
.end method
