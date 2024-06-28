.class public Landroidx/core/content/IntentSanitizer;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/IntentSanitizer$Api29Impl;,
        Landroidx/core/content/IntentSanitizer$Api31Impl;,
        Landroidx/core/content/IntentSanitizer$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentSanitizer"


# instance fields
.field private mAllowAnyComponent:Z

.field private mAllowClipDataText:Z

.field private mAllowIdentifier:Z

.field private mAllowSelector:Z

.field private mAllowSourceBounds:Z

.field private mAllowedActions:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedCategories:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipData:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipDataUri:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedComponents:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedData:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAllowedFlags:I

.field private mAllowedPackages:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedTypes:Landroidx/core/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Landroidx/core/content/IntentSanitizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/core/content/IntentSanitizer$1;

    .line 63
    invoke-direct {p0}, Landroidx/core/content/IntentSanitizer;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Landroidx/core/content/IntentSanitizer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowClipDataText:Z

    return p1
.end method

.method static synthetic access$102(Landroidx/core/content/IntentSanitizer;I)I
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    return p1
.end method

.method static synthetic access$1102(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Landroidx/core/util/Predicate;

    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedClipDataUri:Landroidx/core/util/Predicate;

    return-object p1
.end method

.method static synthetic access$1202(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Landroidx/core/util/Predicate;

    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedClipData:Landroidx/core/util/Predicate;

    return-object p1
.end method

.method static synthetic access$1302(Landroidx/core/content/IntentSanitizer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowIdentifier:Z

    return p1
.end method

.method static synthetic access$1402(Landroidx/core/content/IntentSanitizer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowSelector:Z

    return p1
.end method

.method static synthetic access$1502(Landroidx/core/content/IntentSanitizer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowSourceBounds:Z

    return p1
.end method

.method static synthetic access$202(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Landroidx/core/util/Predicate;

    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedActions:Landroidx/core/util/Predicate;

    return-object p1
.end method

.method static synthetic access$302(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Landroidx/core/util/Predicate;

    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedData:Landroidx/core/util/Predicate;

    return-object p1
.end method

.method static synthetic access$402(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Landroidx/core/util/Predicate;

    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedTypes:Landroidx/core/util/Predicate;

    return-object p1
.end method

.method static synthetic access$502(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Landroidx/core/util/Predicate;

    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedCategories:Landroidx/core/util/Predicate;

    return-object p1
.end method

.method static synthetic access$602(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Landroidx/core/util/Predicate;

    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedPackages:Landroidx/core/util/Predicate;

    return-object p1
.end method

.method static synthetic access$702(Landroidx/core/content/IntentSanitizer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowAnyComponent:Z

    return p1
.end method

.method static synthetic access$802(Landroidx/core/content/IntentSanitizer;Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Landroidx/core/util/Predicate;

    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedComponents:Landroidx/core/util/Predicate;

    return-object p1
.end method

.method static synthetic access$902(Landroidx/core/content/IntentSanitizer;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Landroidx/core/content/IntentSanitizer;
    .param p1, "x1"    # Ljava/util/Map;

    .line 63
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer;->mAllowedExtras:Ljava/util/Map;

    return-object p1
.end method

.method private static checkOtherMembers(ILandroid/content/ClipData$Item;Landroidx/core/util/Consumer;)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/ClipData$Item;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 942
    .local p2, "penalty":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 943
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClipData item at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contains htmlText, textLinks or intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 946
    :cond_1
    return-void
.end method

.method static synthetic lambda$sanitizeByFiltering$0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .line 93
    return-void
.end method

.method static synthetic lambda$sanitizeByThrowing$1(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 237
    if-nez p3, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_0
    instance-of v0, p3, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 240
    move-object v0, p3

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 241
    :cond_1
    instance-of v0, p3, [Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    .line 242
    move-object v0, p3

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 243
    :cond_2
    instance-of v0, p3, Ljava/io/Serializable;

    if-eqz v0, :cond_3

    .line 244
    move-object v0, p3

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sanitizeClipData(Landroid/content/Intent;Landroid/content/Intent;Landroidx/core/util/Predicate;ZLandroidx/core/util/Predicate;Landroidx/core/util/Consumer;)V
    .locals 10
    .param p0, "in"    # Landroid/content/Intent;
    .param p1, "out"    # Landroid/content/Intent;
    .param p3, "mAllowClipDataText"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Landroidx/core/util/Predicate<",
            "Landroid/content/ClipData;",
            ">;Z",
            "Landroidx/core/util/Predicate<",
            "Landroid/net/Uri;",
            ">;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 882
    .local p2, "mAllowedClipData":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<Landroid/content/ClipData;>;"
    .local p4, "mAllowedClipDataUri":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<Landroid/net/Uri;>;"
    .local p5, "penalty":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 884
    .local v0, "clipData":Landroid/content/ClipData;
    if-nez v0, :cond_0

    return-void

    .line 886
    :cond_0
    const/4 v1, 0x0

    .line 887
    .local v1, "newClipData":Landroid/content/ClipData;
    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 888
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    goto/16 :goto_6

    .line 890
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 891
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 892
    .local v3, "item":Landroid/content/ClipData$Item;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_2

    .line 893
    invoke-static {v2, v3, p5}, Landroidx/core/content/IntentSanitizer$Api31Impl;->checkOtherMembers(ILandroid/content/ClipData$Item;Landroidx/core/util/Consumer;)V

    goto :goto_1

    .line 895
    :cond_2
    invoke-static {v2, v3, p5}, Landroidx/core/content/IntentSanitizer;->checkOtherMembers(ILandroid/content/ClipData$Item;Landroidx/core/util/Consumer;)V

    .line 898
    :goto_1
    const/4 v4, 0x0

    .line 899
    .local v4, "itemText":Ljava/lang/CharSequence;
    if-eqz p3, :cond_3

    .line 900
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    .line 902
    :cond_3
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 903
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item text cannot contain value. Item position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Text: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 905
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 903
    invoke-interface {p5, v5}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 909
    :cond_4
    :goto_2
    const/4 v5, 0x0

    .line 910
    .local v5, "itemUri":Landroid/net/Uri;
    const-string v6, ". URI: "

    const-string v7, "Item URI is not allowed. Item position: "

    if-nez p4, :cond_5

    .line 911
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 912
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 914
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 912
    invoke-interface {p5, v6}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_4

    .line 917
    :cond_5
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {p4, v8}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    .line 920
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 922
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 920
    invoke-interface {p5, v6}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_4

    .line 918
    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 926
    :cond_8
    :goto_4
    if-nez v4, :cond_9

    if-eqz v5, :cond_b

    .line 927
    :cond_9
    const/4 v6, 0x0

    if-nez v1, :cond_a

    .line 928
    new-instance v7, Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v8

    new-instance v9, Landroid/content/ClipData$Item;

    invoke-direct {v9, v4, v6, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v7, v8, v9}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    move-object v1, v7

    goto :goto_5

    .line 931
    :cond_a
    new-instance v7, Landroid/content/ClipData$Item;

    invoke-direct {v7, v4, v6, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v1, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 890
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "itemText":Ljava/lang/CharSequence;
    .end local v5    # "itemUri":Landroid/net/Uri;
    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 935
    .end local v2    # "i":I
    :cond_c
    if-eqz v1, :cond_d

    .line 936
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 939
    :cond_d
    :goto_6
    return-void
.end method


# virtual methods
.method public sanitize(Landroid/content/Intent;Landroidx/core/util/Consumer;)Landroid/content/Intent;
    .locals 16
    .param p1, "in"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 123
    .local p2, "penalty":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v8, v1

    .line 125
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 126
    .local v9, "componentName":Landroid/content/ComponentName;
    iget-boolean v1, v0, Landroidx/core/content/IntentSanitizer;->mAllowAnyComponent:Z

    if-eqz v1, :cond_0

    if-eqz v9, :cond_1

    :cond_0
    iget-object v1, v0, Landroidx/core/content/IntentSanitizer;->mAllowedComponents:Landroidx/core/util/Predicate;

    .line 127
    invoke-interface {v1, v9}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    :cond_1
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 130
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 131
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "android"

    const-string v3, "java.lang.Void"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v10, :cond_4

    iget-object v1, v0, Landroidx/core/content/IntentSanitizer;->mAllowedPackages:Landroidx/core/util/Predicate;

    invoke-interface {v1, v10}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 138
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 136
    :cond_4
    :goto_1
    invoke-virtual {v8, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :goto_2
    iget v1, v0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    or-int/2addr v1, v2

    iget v2, v0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    if-ne v1, v2, :cond_5

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_3

    .line 144
    :cond_5
    iget v1, v0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v1, v2

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The intent contains flags that are not allowed: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    iget v3, v0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    not-int v3, v3

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-interface {v7, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 149
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "action":Ljava/lang/String;
    if-eqz v11, :cond_7

    iget-object v1, v0, Landroidx/core/content/IntentSanitizer;->mAllowedActions:Landroidx/core/util/Predicate;

    invoke-interface {v1, v11}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 153
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_5

    .line 151
    :cond_7
    :goto_4
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 157
    .local v12, "data":Landroid/net/Uri;
    if-eqz v12, :cond_9

    iget-object v1, v0, Landroidx/core/content/IntentSanitizer;->mAllowedData:Landroidx/core/util/Predicate;

    invoke-interface {v1, v12}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    .line 160
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_7

    .line 158
    :cond_9
    :goto_6
    invoke-virtual {v8, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 163
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v13

    .line 164
    .local v13, "type":Ljava/lang/String;
    if-eqz v13, :cond_b

    iget-object v1, v0, Landroidx/core/content/IntentSanitizer;->mAllowedTypes:Landroidx/core/util/Predicate;

    invoke-interface {v1, v13}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    .line 167
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_9

    .line 165
    :cond_b
    :goto_8
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v14

    .line 171
    .local v14, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v14, :cond_d

    .line 172
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    .local v2, "category":Ljava/lang/String;
    iget-object v3, v0, Landroidx/core/content/IntentSanitizer;->mAllowedCategories:Landroidx/core/util/Predicate;

    invoke-interface {v3, v2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 174
    invoke-virtual {v8, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 176
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Category is not allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 178
    .end local v2    # "category":Ljava/lang/String;
    :goto_b
    goto :goto_a

    .line 181
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 182
    .local v15, "extras":Landroid/os/Bundle;
    if-eqz v15, :cond_11

    .line 183
    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, "key":Ljava/lang/String;
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, v0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_e

    .line 186
    const-string v3, "Allowing Extra Stream requires also allowing at least  FLAG_GRANT_READ_URI_PERMISSION Flag."

    invoke-interface {v7, v3}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 189
    goto :goto_c

    .line 191
    :cond_e
    const-string v3, "output"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, v0, Landroidx/core/content/IntentSanitizer;->mAllowedFlags:I

    not-int v3, v3

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_f

    .line 195
    const-string v3, "Allowing Extra Output requires also allowing FLAG_GRANT_READ_URI_PERMISSION and FLAG_GRANT_WRITE_URI_PERMISSION Flags."

    invoke-interface {v7, v3}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 198
    goto :goto_c

    .line 200
    :cond_f
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 201
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, v0, Landroidx/core/content/IntentSanitizer;->mAllowedExtras:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/util/Predicate;

    .line 202
    .local v4, "test":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<Ljava/lang/Object;>;"
    if-eqz v4, :cond_10

    invoke-interface {v4, v3}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 203
    invoke-direct {v0, v8, v2, v3}, Landroidx/core/content/IntentSanitizer;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 205
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra is not allowed. Key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 207
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "test":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<Ljava/lang/Object;>;"
    :goto_d
    goto :goto_c

    .line 210
    :cond_11
    iget-object v3, v0, Landroidx/core/content/IntentSanitizer;->mAllowedClipData:Landroidx/core/util/Predicate;

    iget-boolean v4, v0, Landroidx/core/content/IntentSanitizer;->mAllowClipDataText:Z

    iget-object v5, v0, Landroidx/core/content/IntentSanitizer;->mAllowedClipDataUri:Landroidx/core/util/Predicate;

    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroidx/core/content/IntentSanitizer;->sanitizeClipData(Landroid/content/Intent;Landroid/content/Intent;Landroidx/core/util/Predicate;ZLandroidx/core/util/Predicate;Landroidx/core/util/Consumer;)V

    .line 213
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_13

    .line 214
    iget-boolean v1, v0, Landroidx/core/content/IntentSanitizer;->mAllowIdentifier:Z

    if-eqz v1, :cond_12

    .line 215
    invoke-static/range {p1 .. p1}, Landroidx/core/content/IntentSanitizer$Api29Impl;->getIdentifier(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroidx/core/content/IntentSanitizer$Api29Impl;->setIdentifier(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    .line 216
    :cond_12
    invoke-static/range {p1 .. p1}, Landroidx/core/content/IntentSanitizer$Api29Impl;->getIdentifier(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identifier is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroidx/core/content/IntentSanitizer$Api29Impl;->getIdentifier(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 221
    :cond_13
    :goto_e
    iget-boolean v1, v0, Landroidx/core/content/IntentSanitizer;->mAllowSelector:Z

    if-eqz v1, :cond_14

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    goto :goto_f

    .line 223
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selector is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 227
    :cond_15
    :goto_f
    iget-boolean v1, v0, Landroidx/core/content/IntentSanitizer;->mAllowSourceBounds:Z

    if-eqz v1, :cond_16

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto :goto_10

    .line 229
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceBounds is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 233
    :cond_17
    :goto_10
    return-object v8
.end method

.method public sanitizeByFiltering(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "in"    # Landroid/content/Intent;

    .line 93
    new-instance v0, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroidx/core/content/IntentSanitizer;->sanitize(Landroid/content/Intent;Landroidx/core/util/Consumer;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public sanitizeByThrowing(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "in"    # Landroid/content/Intent;

    .line 106
    new-instance v0, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/content/IntentSanitizer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroidx/core/content/IntentSanitizer;->sanitize(Landroid/content/Intent;Landroidx/core/util/Consumer;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
