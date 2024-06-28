.class Landroidx/emoji2/text/DefaultGlyphChecker;
.super Ljava/lang/Object;
.source "DefaultGlyphChecker.java"

# interfaces
.implements Landroidx/emoji2/text/EmojiCompat$GlyphChecker;


# static fields
.field private static final PAINT_TEXT_SIZE:I = 0xa

.field private static final sStringBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTextPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/emoji2/text/DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/DefaultGlyphChecker;->mTextPaint:Landroid/text/TextPaint;

    .line 55
    iget-object v0, p0, Landroidx/emoji2/text/DefaultGlyphChecker;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 56
    return-void
.end method

.method private static getStringBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .line 84
    sget-object v0, Landroidx/emoji2/text/DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Landroidx/emoji2/text/DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 87
    :cond_0
    sget-object v0, Landroidx/emoji2/text/DefaultGlyphChecker;->sStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public hasGlyph(Ljava/lang/CharSequence;III)Z
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "sdkAdded"    # I

    .line 68
    nop

    .line 72
    invoke-static {}, Landroidx/emoji2/text/DefaultGlyphChecker;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 75
    :goto_0
    if-ge p2, p3, :cond_0

    .line 76
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Landroidx/emoji2/text/DefaultGlyphChecker;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/graphics/PaintCompat;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
