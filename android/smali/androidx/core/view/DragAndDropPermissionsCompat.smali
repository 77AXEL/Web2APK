.class public final Landroidx/core/view/DragAndDropPermissionsCompat;
.super Ljava/lang/Object;
.source "DragAndDropPermissionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DragAndDropPermissionsCompat$Api24Impl;
    }
.end annotation


# instance fields
.field private final mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;


# direct methods
.method private constructor <init>(Landroid/view/DragAndDropPermissions;)V
    .locals 0
    .param p1, "dragAndDropPermissions"    # Landroid/view/DragAndDropPermissions;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/core/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    .line 47
    return-void
.end method

.method public static request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragEvent"    # Landroid/view/DragEvent;

    .line 53
    nop

    .line 54
    nop

    .line 55
    invoke-static {p0, p1}, Landroidx/core/view/DragAndDropPermissionsCompat$Api24Impl;->requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    .line 56
    .local v0, "dragAndDropPermissions":Landroid/view/DragAndDropPermissions;
    if-eqz v0, :cond_0

    .line 57
    new-instance v1, Landroidx/core/view/DragAndDropPermissionsCompat;

    invoke-direct {v1, v0}, Landroidx/core/view/DragAndDropPermissionsCompat;-><init>(Landroid/view/DragAndDropPermissions;)V

    return-object v1

    .line 60
    .end local v0    # "dragAndDropPermissions":Landroid/view/DragAndDropPermissions;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 67
    nop

    .line 68
    iget-object v0, p0, Landroidx/core/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    invoke-static {v0}, Landroidx/core/view/DragAndDropPermissionsCompat$Api24Impl;->release(Landroid/view/DragAndDropPermissions;)V

    .line 70
    return-void
.end method
