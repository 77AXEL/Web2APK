.class final Landroidx/core/os/PersistableBundleApi21ImplKt;
.super Ljava/lang/Object;
.source "PersistableBundle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J$\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/core/os/PersistableBundleApi21ImplKt;",
        "",
        "()V",
        "createPersistableBundle",
        "Landroid/os/PersistableBundle;",
        "capacity",
        "",
        "putValue",
        "",
        "persistableBundle",
        "key",
        "",
        "value",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/os/PersistableBundleApi21ImplKt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/os/PersistableBundleApi21ImplKt;

    invoke-direct {v0}, Landroidx/core/os/PersistableBundleApi21ImplKt;-><init>()V

    sput-object v0, Landroidx/core/os/PersistableBundleApi21ImplKt;->INSTANCE:Landroidx/core/os/PersistableBundleApi21ImplKt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createPersistableBundle(I)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "capacity"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 75
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(I)V

    return-object v0
.end method

.method public static final putValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p0, "persistableBundle"    # Landroid/os/PersistableBundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 80
    move-object v0, p0

    .local v0, "$this$putValue_u24lambda_u240":Landroid/os/PersistableBundle;
    const/4 v1, 0x0

    .line 81
    .local v1, "$i$a$-apply-PersistableBundleApi21ImplKt$putValue$1":I
    nop

    .line 82
    if-nez p2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :cond_0
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 86
    nop

    .line 87
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, p1, v2}, Landroidx/core/os/PersistableBundleApi22ImplKt;->putBoolean(Landroid/os/PersistableBundle;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 94
    :cond_1
    instance-of v2, p2, Ljava/lang/Double;

    if-eqz v2, :cond_2

    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 95
    :cond_2
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 96
    :cond_3
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 99
    :cond_4
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_5
    instance-of v2, p2, [Z

    if-eqz v2, :cond_6

    .line 103
    nop

    .line 104
    move-object v2, p2

    check-cast v2, [Z

    invoke-static {v0, p1, v2}, Landroidx/core/os/PersistableBundleApi22ImplKt;->putBooleanArray(Landroid/os/PersistableBundle;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 111
    :cond_6
    instance-of v2, p2, [D

    if-eqz v2, :cond_7

    move-object v2, p2

    check-cast v2, [D

    invoke-virtual {v0, p1, v2}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 112
    :cond_7
    instance-of v2, p2, [I

    if-eqz v2, :cond_8

    move-object v2, p2

    check-cast v2, [I

    invoke-virtual {v0, p1, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 113
    :cond_8
    instance-of v2, p2, [J

    if-eqz v2, :cond_9

    move-object v2, p2

    check-cast v2, [J

    invoke-virtual {v0, p1, v2}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0

    .line 116
    :cond_9
    instance-of v2, p2, [Ljava/lang/Object;

    const/16 v3, 0x22

    const-string v4, " for key \""

    if-eqz v2, :cond_b

    .line 117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    .local v2, "componentType":Ljava/lang/Class;
    const-class v5, Ljava/lang/String;

    .line 120
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 121
    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p2

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    .end local v2    # "componentType":Ljava/lang/Class;
    :goto_0
    nop

    .line 80
    .end local v0    # "$this$putValue_u24lambda_u240":Landroid/os/PersistableBundle;
    .end local v1    # "$i$a$-apply-PersistableBundleApi21ImplKt$putValue$1":I
    nop

    .line 138
    return-void

    .line 124
    .restart local v0    # "$this$putValue_u24lambda_u240":Landroid/os/PersistableBundle;
    .restart local v1    # "$i$a$-apply-PersistableBundleApi21ImplKt$putValue$1":I
    .restart local v2    # "componentType":Ljava/lang/Class;
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "valueType":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 126
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal value array type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 133
    .end local v2    # "componentType":Ljava/lang/Class;
    .end local v5    # "valueType":Ljava/lang/String;
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "valueType":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal value type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
