.class public final synthetic Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Landroidx/core/util/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Landroidx/core/util/Predicate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda4;->f$1:Landroidx/core/util/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda4;->f$1:Landroidx/core/util/Predicate;

    invoke-static {v0, v1, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtra$13(Ljava/lang/Class;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
