.class Landroidx/core/app/NotificationCompat$Action$Builder$Api28Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$Action$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSemanticAction(Landroid/app/Notification$Action;)I
    .locals 1
    .param p0, "action"    # Landroid/app/Notification$Action;

    .line 6183
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v0

    return v0
.end method
