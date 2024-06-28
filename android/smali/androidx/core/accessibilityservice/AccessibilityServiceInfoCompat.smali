.class public final Landroidx/core/accessibilityservice/AccessibilityServiceInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfoCompat.java"


# static fields
.field public static final CAPABILITY_CAN_FILTER_KEY_EVENTS:I = 0x8

.field public static final CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final FEEDBACK_ALL_MASK:I = -0x1

.field public static final FEEDBACK_BRAILLE:I = 0x20

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capabilityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "capability"    # I

    .line 296
    sparse-switch p0, :sswitch_data_0

    .line 306
    const-string v0, "UNKNOWN"

    return-object v0

    .line 304
    :sswitch_0
    const-string v0, "CAPABILITY_CAN_FILTER_KEY_EVENTS"

    return-object v0

    .line 302
    :sswitch_1
    const-string v0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    return-object v0

    .line 300
    :sswitch_2
    const-string v0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    return-object v0

    .line 298
    :sswitch_3
    const-string v0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static feedbackTypeToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "feedbackType"    # I

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :goto_0
    if-lez p0, :cond_1

    .line 214
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 215
    .local v1, "feedbackTypeFlag":I
    not-int v3, v1

    and-int/2addr p0, v3

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 217
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 227
    :sswitch_0
    const-string v2, "FEEDBACK_GENERIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    goto :goto_1

    .line 233
    :sswitch_1
    const-string v2, "FEEDBACK_VISUAL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 221
    :sswitch_2
    const-string v2, "FEEDBACK_AUDIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    goto :goto_1

    .line 224
    :sswitch_3
    const-string v2, "FEEDBACK_HAPTIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    goto :goto_1

    .line 230
    :sswitch_4
    const-string v2, "FEEDBACK_SPOKEN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    nop

    .line 236
    .end local v1    # "feedbackTypeFlag":I
    :goto_1
    goto :goto_0

    .line 237
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static flagToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "flag"    # I

    .line 251
    sparse-switch p0, :sswitch_data_0

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 263
    :sswitch_0
    const-string v0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    return-object v0

    .line 261
    :sswitch_1
    const-string v0, "FLAG_REPORT_VIEW_IDS"

    return-object v0

    .line 259
    :sswitch_2
    const-string v0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    return-object v0

    .line 257
    :sswitch_3
    const-string v0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    return-object v0

    .line 255
    :sswitch_4
    const-string v0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    return-object v0

    .line 253
    :sswitch_5
    const-string v0, "DEFAULT"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getCapabilities(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 1
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 283
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    return v0
.end method

.method public static loadDescription(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 198
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
