.class Landroidx/core/view/contentcapture/ContentCaptureSessionCompat$Api34Impl;
.super Ljava/lang/Object;
.source "ContentCaptureSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    return-void
.end method

.method static notifyViewsAppeared(Landroid/view/contentcapture/ContentCaptureSession;Ljava/util/List;)V
    .locals 0
    .param p0, "contentCaptureSession"    # Landroid/view/contentcapture/ContentCaptureSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/contentcapture/ContentCaptureSession;",
            "Ljava/util/List<",
            "Landroid/view/ViewStructure;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p1, "appearedNodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewStructure;>;"
    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewsAppeared(Ljava/util/List;)V

    .line 250
    return-void
.end method
