.class Landroidx/core/app/NotificationCompat$MessagingStyle$Message$Api28Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4415
    return-void
.end method

.method static castToParcelable(Landroid/app/Person;)Landroid/os/Parcelable;
    .locals 0
    .param p0, "person"    # Landroid/app/Person;

    .line 4425
    return-object p0
.end method

.method static createMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "timestamp"    # J
    .param p3, "sender"    # Landroid/app/Person;

    .line 4420
    new-instance v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    return-object v0
.end method
