.class Lcom/google/android/material/color/utilities/Score$ScoredHCT;
.super Ljava/lang/Object;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/Score;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScoredHCT"
.end annotation


# instance fields
.field public final hct:Lcom/google/android/material/color/utilities/Hct;

.field public final score:D


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/utilities/Hct;D)V
    .locals 0
    .param p1, "hct"    # Lcom/google/android/material/color/utilities/Hct;
    .param p2, "score"    # D

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/google/android/material/color/utilities/Score$ScoredHCT;->hct:Lcom/google/android/material/color/utilities/Hct;

    .line 173
    iput-wide p2, p0, Lcom/google/android/material/color/utilities/Score$ScoredHCT;->score:D

    .line 174
    return-void
.end method
