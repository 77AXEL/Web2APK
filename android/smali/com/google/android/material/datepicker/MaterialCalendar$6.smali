.class Lcom/google/android/material/datepicker/MaterialCalendar$6;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 412
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar$6;, "Lcom/google/android/material/datepicker/MaterialCalendar$6;"
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accessibilityNodeInfoCompat"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 417
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar$6;, "Lcom/google/android/material/datepicker/MaterialCalendar$6;"
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 418
    nop

    .line 419
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$500(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_year_selection:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_day_selection:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    .line 422
    return-void
.end method
