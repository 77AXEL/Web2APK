.class Landroidx/core/app/NotificationCompat$MessagingStyle$Api26Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addHistoricMessage(Landroid/app/Notification$MessagingStyle;Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .locals 1
    .param p0, "messagingStyle"    # Landroid/app/Notification$MessagingStyle;
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 4471
    invoke-virtual {p0, p1}, Landroid/app/Notification$MessagingStyle;->addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    move-result-object v0

    return-object v0
.end method
