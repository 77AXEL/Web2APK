.class public final Landroidx/core/transition/TransitionKt$doOnCancel$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Transition.kt"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->doOnCancel(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$listener$1\n+ 2 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$1\n+ 3 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$4\n+ 4 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$5\n+ 5 Transition.kt\nandroidx/core/transition/TransitionKt$addListener$2\n*L\n1#1,76:1\n60#2:77\n63#3:78\n64#4:79\n61#5:80\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/transition/TransitionKt$addListener$listener$1",
        "Landroid/transition/Transition$TransitionListener;",
        "onTransitionCancel",
        "",
        "transition",
        "Landroid/transition/Transition;",
        "onTransitionEnd",
        "onTransitionPause",
        "onTransitionResume",
        "onTransitionStart",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $onCancel:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "$onCancel"    # Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/core/transition/TransitionKt$doOnCancel$$inlined$addListener$default$1;->$onCancel:Lkotlin/jvm/functions/Function1;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 70
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$doOnCancel$$inlined$addListener$default$1;->$onCancel:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 67
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$1":I
    move-object v1, p1

    .line 77
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 67
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$1":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 69
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$5":I
    move-object v1, p1

    .line 79
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 69
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$5":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 68
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$4":I
    move-object v1, p1

    .line 78
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 68
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$4":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 71
    const/4 v0, 0x0

    .local v0, "$i$a$-addListener-TransitionKt$addListener$2":I
    move-object v1, p1

    .line 80
    .local v1, "it":Landroid/transition/Transition;
    nop

    .line 71
    .end local v0    # "$i$a$-addListener-TransitionKt$addListener$2":I
    .end local v1    # "it":Landroid/transition/Transition;
    return-void
.end method
