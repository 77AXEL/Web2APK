.class Landroidx/appcompat/view/WindowCallbackWrapper$Api26Impl;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/WindowCallbackWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method static onPointerCaptureChanged(Landroid/view/Window$Callback;Z)V
    .locals 0
    .param p0, "callback"    # Landroid/view/Window$Callback;
    .param p1, "hasCapture"    # Z

    .line 231
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 232
    return-void
.end method
