.class public final synthetic Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-boolean p2, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget-boolean v1, p0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->lambda$requestFocusAndShowKeyboard$0(Landroid/view/View;Z)V

    return-void
.end method
