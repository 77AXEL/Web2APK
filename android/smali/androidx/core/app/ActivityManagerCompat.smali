.class public final Landroidx/core/app/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLowRamDevice(Landroid/app/ActivityManager;)Z
    .locals 1
    .param p0, "activityManager"    # Landroid/app/ActivityManager;

    .line 39
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    return v0
.end method
