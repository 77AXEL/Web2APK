.class Landroidx/transition/ChangeBounds$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mViewBounds:Landroidx/transition/ChangeBounds$ViewBounds;

.field final synthetic this$0:Landroidx/transition/ChangeBounds;

.field final synthetic val$viewBounds:Landroidx/transition/ChangeBounds$ViewBounds;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/transition/ChangeBounds;

    .line 290
    iput-object p1, p0, Landroidx/transition/ChangeBounds$6;->this$0:Landroidx/transition/ChangeBounds;

    iput-object p2, p0, Landroidx/transition/ChangeBounds$6;->val$viewBounds:Landroidx/transition/ChangeBounds$ViewBounds;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 293
    iget-object p2, p0, Landroidx/transition/ChangeBounds$6;->val$viewBounds:Landroidx/transition/ChangeBounds$ViewBounds;

    iput-object p2, p0, Landroidx/transition/ChangeBounds$6;->mViewBounds:Landroidx/transition/ChangeBounds$ViewBounds;

    return-void
.end method
