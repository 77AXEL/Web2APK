.class public Lkotlin/io/encoding/Base64;
.super Ljava/lang/Object;
.source "Base64.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/encoding/Base64$Default;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0017\u0018\u0000 22\u00020\u0001:\u00012B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008\rJ%\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008\u0013J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0011H\u0002J%\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008\u001bJ\"\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011J\"\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011J0\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J4\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011J4\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011J \u0010 \u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\"\u0010!\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011J4\u0010\"\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011J5\u0010#\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008$J\u0010\u0010%\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0011H\u0002J=\u0010&\u001a\u0002H\'\"\u000c\u0008\u0000\u0010\'*\u00060(j\u0002`)2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u0002H\'2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0002\u0010*J\"\u0010+\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011J%\u0010,\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008-J(\u0010.\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u0011H\u0002J \u00101\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002R\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u00063"
    }
    d2 = {
        "Lkotlin/io/encoding/Base64;",
        "",
        "isUrlSafe",
        "",
        "isMimeScheme",
        "(ZZ)V",
        "isMimeScheme$kotlin_stdlib",
        "()Z",
        "isUrlSafe$kotlin_stdlib",
        "bytesToStringImpl",
        "",
        "source",
        "",
        "bytesToStringImpl$kotlin_stdlib",
        "charsToBytesImpl",
        "",
        "startIndex",
        "",
        "endIndex",
        "charsToBytesImpl$kotlin_stdlib",
        "checkDestinationBounds",
        "",
        "destinationSize",
        "destinationOffset",
        "capacityNeeded",
        "checkSourceBounds",
        "sourceSize",
        "checkSourceBounds$kotlin_stdlib",
        "decode",
        "decodeImpl",
        "destination",
        "decodeIntoByteArray",
        "decodeSize",
        "encode",
        "encodeIntoByteArray",
        "encodeIntoByteArrayImpl",
        "encodeIntoByteArrayImpl$kotlin_stdlib",
        "encodeSize",
        "encodeToAppendable",
        "A",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "([BLjava/lang/Appendable;II)Ljava/lang/Appendable;",
        "encodeToByteArray",
        "encodeToByteArrayImpl",
        "encodeToByteArrayImpl$kotlin_stdlib",
        "handlePaddingSymbol",
        "padIndex",
        "byteStart",
        "skipIllegalSymbolsIfMime",
        "Default",
        "kotlin-stdlib"
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
.field public static final Default:Lkotlin/io/encoding/Base64$Default;

.field private static final Mime:Lkotlin/io/encoding/Base64;

.field private static final UrlSafe:Lkotlin/io/encoding/Base64;

.field private static final bitsPerByte:I = 0x8

.field private static final bitsPerSymbol:I = 0x6

.field public static final bytesPerGroup:I = 0x3

.field private static final mimeGroupsPerLine:I = 0x13

.field public static final mimeLineLength:I = 0x4c

.field private static final mimeLineSeparatorSymbols:[B

.field public static final padSymbol:B = 0x3dt

.field public static final symbolsPerGroup:I = 0x4


# instance fields
.field private final isMimeScheme:Z

.field private final isUrlSafe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/io/encoding/Base64$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/io/encoding/Base64$Default;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 539
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lkotlin/io/encoding/Base64;->mimeLineSeparatorSymbols:[B

    .line 551
    new-instance v0, Lkotlin/io/encoding/Base64;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/io/encoding/Base64;-><init>(ZZ)V

    sput-object v0, Lkotlin/io/encoding/Base64;->UrlSafe:Lkotlin/io/encoding/Base64;

    .line 563
    new-instance v0, Lkotlin/io/encoding/Base64;

    invoke-direct {v0, v2, v1}, Lkotlin/io/encoding/Base64;-><init>(ZZ)V

    sput-object v0, Lkotlin/io/encoding/Base64;->Mime:Lkotlin/io/encoding/Base64;

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(ZZ)V
    .locals 2
    .param p1, "isUrlSafe"    # Z
    .param p2, "isMimeScheme"    # Z

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean p1, p0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    .line 22
    iput-boolean p2, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    .line 24
    nop

    .line 25
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 26
    nop

    .line 20
    return-void

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/io/encoding/Base64;-><init>(ZZ)V

    return-void
.end method

.method public static final synthetic access$getMime$cp()Lkotlin/io/encoding/Base64;
    .locals 1

    .line 18
    sget-object v0, Lkotlin/io/encoding/Base64;->Mime:Lkotlin/io/encoding/Base64;

    return-object v0
.end method

.method public static final synthetic access$getMimeLineSeparatorSymbols$cp()[B
    .locals 1

    .line 18
    sget-object v0, Lkotlin/io/encoding/Base64;->mimeLineSeparatorSymbols:[B

    return-object v0
.end method

.method public static final synthetic access$getUrlSafe$cp()Lkotlin/io/encoding/Base64;
    .locals 1

    .line 18
    sget-object v0, Lkotlin/io/encoding/Base64;->UrlSafe:Lkotlin/io/encoding/Base64;

    return-object v0
.end method

.method private final checkDestinationBounds(III)V
    .locals 5
    .param p1, "destinationSize"    # I
    .param p2, "destinationOffset"    # I
    .param p3, "capacityNeeded"    # I

    .line 502
    const-string v0, ", destination size: "

    if-ltz p2, :cond_1

    if-gt p2, p1, :cond_1

    .line 506
    add-int v1, p2, p3

    .line 507
    .local v1, "destinationEndIndex":I
    if-ltz v1, :cond_0

    if-gt v1, p1, :cond_0

    .line 513
    return-void

    .line 508
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The destination array does not have enough capacity, destination offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 510
    nop

    .line 509
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 510
    nop

    .line 509
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    nop

    .line 509
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    nop

    .line 509
    const-string v3, ", capacity needed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    nop

    .line 509
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    .end local v1    # "destinationEndIndex":I
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destination offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;IIILjava/lang/Object;)[B
    .locals 0

    .line 216
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decode(Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic decode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B
    .locals 0

    .line 150
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decode([BII)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final decodeImpl([B[BIII)I
    .locals 19
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    .line 341
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget-boolean v3, v0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64UrlDecodeMap$p()[I

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    move-result-object v3

    .line 342
    .local v3, "decodeMap":[I
    :goto_0
    const/4 v4, 0x0

    .line 343
    .local v4, "payload":I
    const/4 v5, -0x8

    .line 344
    .local v5, "byteStart":I
    move/from16 v6, p4

    .line 345
    .local v6, "sourceIndex":I
    move/from16 v7, p3

    .line 347
    .local v7, "destinationIndex":I
    :cond_1
    :goto_1
    const-string v8, ") at index "

    const-string/jumbo v9, "toString(this, checkRadix(radix))"

    const-string v10, "\'("

    const/4 v11, -0x2

    if-ge v6, v2, :cond_7

    .line 348
    const/4 v13, -0x8

    if-ne v5, v13, :cond_3

    add-int/lit8 v13, v6, 0x3

    if-ge v13, v2, :cond_3

    .line 349
    add-int/lit8 v13, v6, 0x1

    .end local v6    # "sourceIndex":I
    .local v13, "sourceIndex":I
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    aget v6, v3, v6

    .line 350
    .local v6, "symbol1":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "sourceIndex":I
    .local v14, "sourceIndex":I
    aget-byte v13, v1, v13

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    .line 351
    .local v13, "symbol2":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sourceIndex":I
    .local v15, "sourceIndex":I
    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    aget v14, v3, v14

    .line 352
    .local v14, "symbol3":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "sourceIndex":I
    .local v16, "sourceIndex":I
    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v3, v15

    .line 353
    .local v15, "symbol4":I
    shl-int/lit8 v17, v6, 0x12

    shl-int/lit8 v18, v13, 0xc

    or-int v17, v17, v18

    shl-int/lit8 v18, v14, 0x6

    or-int v17, v17, v18

    or-int v12, v17, v15

    .line 354
    .local v12, "bits":I
    if-ltz v12, :cond_2

    .line 355
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "destinationIndex":I
    .local v8, "destinationIndex":I
    shr-int/lit8 v9, v12, 0x10

    int-to-byte v9, v9

    aput-byte v9, p2, v7

    .line 356
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "destinationIndex":I
    .restart local v7    # "destinationIndex":I
    shr-int/lit8 v9, v12, 0x8

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    .line 357
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    int-to-byte v9, v12

    aput-byte v9, p2, v7

    .line 358
    move v7, v8

    move/from16 v6, v16

    goto :goto_1

    .end local v8    # "destinationIndex":I
    .restart local v7    # "destinationIndex":I
    :cond_2
    add-int/lit8 v16, v16, -0x4

    .line 360
    move/from16 v6, v16

    .line 363
    .end local v12    # "bits":I
    .end local v13    # "symbol2":I
    .end local v14    # "symbol3":I
    .end local v15    # "symbol4":I
    .end local v16    # "sourceIndex":I
    .local v6, "sourceIndex":I
    :cond_3
    aget-byte v12, v1, v6

    and-int/lit16 v12, v12, 0xff

    .line 364
    .local v12, "symbol":I
    aget v13, v3, v12

    .line 365
    .local v13, "symbolBits":I
    if-gez v13, :cond_6

    .line 366
    if-ne v13, v11, :cond_4

    .line 367
    invoke-direct {v0, v1, v6, v2, v5}, Lkotlin/io/encoding/Base64;->handlePaddingSymbol([BIII)I

    move-result v6

    .line 368
    goto :goto_2

    .line 369
    :cond_4
    iget-boolean v11, v0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-eqz v11, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 370
    nop

    .line 371
    goto :goto_1

    .line 373
    :cond_5
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid symbol \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    int-to-char v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v14, 0x8

    invoke-static {v14}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 376
    nop

    .line 379
    shl-int/lit8 v8, v4, 0x6

    or-int v4, v8, v13

    add-int/lit8 v5, v5, 0x6

    .line 380
    nop

    .line 382
    if-ltz v5, :cond_1

    .line 383
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    ushr-int v9, v4, v5

    int-to-byte v9, v9

    aput-byte v9, p2, v7

    .line 385
    const/4 v7, 0x1

    shl-int v9, v7, v5

    sub-int/2addr v9, v7

    and-int/2addr v4, v9

    add-int/lit8 v5, v5, -0x8

    .line 386
    move v7, v8

    .end local v12    # "symbol":I
    .end local v13    # "symbolBits":I
    goto/16 :goto_1

    .line 392
    .end local v8    # "destinationIndex":I
    .restart local v7    # "destinationIndex":I
    :cond_7
    :goto_2
    if-eq v5, v11, :cond_9

    .line 398
    invoke-direct {v0, v1, v6, v2}, Lkotlin/io/encoding/Base64;->skipIllegalSymbolsIfMime([BII)I

    move-result v6

    .line 399
    if-lt v6, v2, :cond_8

    .line 404
    sub-int v8, v7, p3

    return v8

    .line 400
    :cond_8
    aget-byte v11, v1, v6

    and-int/lit16 v11, v11, 0xff

    .line 401
    .local v11, "symbol":I
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Symbol \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    int-to-char v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v13, 0x8

    invoke-static {v13}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is prohibited after the pad character"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 393
    .end local v11    # "symbol":I
    :cond_9
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The last unit of input does not have enough bits"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static synthetic decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;[BIIIILjava/lang/Object;)I
    .locals 7

    .line 243
    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 246
    move v4, v0

    goto :goto_0

    .line 243
    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 247
    move v5, v0

    goto :goto_1

    .line 243
    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 248
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p5

    move v6, p5

    goto :goto_2

    .line 243
    :cond_2
    move v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray(Ljava/lang/CharSequence;[BIII)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decodeIntoByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I
    .locals 7

    .line 185
    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 188
    move v4, v0

    goto :goto_0

    .line 185
    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 189
    move v5, v0

    goto :goto_1

    .line 185
    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 190
    array-length p5, p1

    move v6, p5

    goto :goto_2

    .line 185
    :cond_2
    move v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray([B[BIII)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decodeIntoByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final decodeSize([BII)I
    .locals 5
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 408
    sub-int v0, p3, p2

    .line 409
    .local v0, "symbols":I
    if-nez v0, :cond_0

    .line 410
    const/4 v1, 0x0

    return v1

    .line 412
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 415
    iget-boolean v1, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-eqz v1, :cond_3

    .line 416
    move v1, p2

    .local v1, "index":I
    :goto_0
    if-ge v1, p3, :cond_4

    .line 417
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 418
    .local v2, "symbol":I
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    move-result-object v3

    aget v3, v3, v2

    .line 419
    .local v3, "symbolBits":I
    if-gez v3, :cond_2

    .line 420
    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 421
    sub-int v4, p3, v1

    sub-int/2addr v0, v4

    .line 422
    goto :goto_1

    .line 424
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 416
    .end local v2    # "symbol":I
    .end local v3    # "symbolBits":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "index":I
    :cond_3
    add-int/lit8 v1, p3, -0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_4

    .line 428
    add-int/lit8 v0, v0, -0x1

    .line 429
    add-int/lit8 v1, p3, -0x2

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_4

    .line 430
    add-int/lit8 v0, v0, -0x1

    .line 433
    :cond_4
    :goto_1
    int-to-long v1, v0

    const/4 v3, 0x6

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const/16 v3, 0x8

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    return v1

    .line 413
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input should have at list 2 symbols for Base64 decoding, startIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", endIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic encode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 100
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encode([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic encodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I
    .locals 7

    .line 72
    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 75
    move v4, v0

    goto :goto_0

    .line 72
    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 76
    move v5, v0

    goto :goto_1

    .line 72
    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 77
    array-length p5, p1

    move v6, p5

    goto :goto_2

    .line 72
    :cond_2
    move v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->encodeIntoByteArray([B[BIII)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encodeIntoByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final encodeSize(I)I
    .locals 5
    .param p1, "sourceSize"    # I

    .line 325
    add-int/lit8 v0, p1, 0x3

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    .line 326
    .local v0, "groups":I
    iget-boolean v1, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x13

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 327
    .local v1, "lineSeparators":I
    :goto_0
    mul-int/lit8 v2, v0, 0x4

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    .line 328
    .local v2, "size":I
    if-ltz v2, :cond_1

    .line 331
    return v2

    .line 329
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input is too big"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic encodeToAppendable$default(Lkotlin/io/encoding/Base64;[BLjava/lang/Appendable;IIILjava/lang/Object;)Ljava/lang/Appendable;
    .locals 0

    .line 121
    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 124
    const/4 p3, 0x0

    .line 121
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 125
    array-length p4, p1

    .line 121
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/io/encoding/Base64;->encodeToAppendable([BLjava/lang/Appendable;II)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encodeToAppendable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic encodeToByteArray$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B
    .locals 0

    .line 48
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArray([BII)[B

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encodeToByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final handlePaddingSymbol([BIII)I
    .locals 4
    .param p1, "source"    # [B
    .param p2, "padIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "byteStart"    # I

    .line 463
    packed-switch p4, :pswitch_data_0

    .line 476
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 478
    const-string v1, "Unreachable"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :pswitch_1
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    .line 469
    :pswitch_2
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0, p3}, Lkotlin/io/encoding/Base64;->skipIllegalSymbolsIfMime([BII)I

    move-result v0

    .line 470
    .local v0, "secondPadIndex":I
    if-eq v0, p3, :cond_0

    aget-byte v1, p1, v0

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    .line 473
    add-int/lit8 v0, v0, 0x1

    .end local v0    # "secondPadIndex":I
    goto :goto_0

    .line 471
    .restart local v0    # "secondPadIndex":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing one pad character at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    .end local v0    # "secondPadIndex":I
    :pswitch_3
    add-int/lit8 v0, p2, 0x1

    .line 463
    :goto_0
    return v0

    .line 465
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redundant pad character at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final skipIllegalSymbolsIfMime([BII)I
    .locals 4
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 483
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-nez v0, :cond_0

    .line 484
    return p2

    .line 486
    :cond_0
    move v0, p2

    .line 487
    .local v0, "sourceIndex":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 488
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 489
    .local v1, "symbol":I
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64DecodeMap$p()[I

    move-result-object v2

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 490
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 492
    nop

    .end local v1    # "symbol":I
    goto :goto_0

    .line 494
    :cond_2
    return v0
.end method


# virtual methods
.method public final bytesToStringImpl$kotlin_stdlib([B)Ljava/lang/String;
    .locals 5
    .param p1, "source"    # [B

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 456
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 457
    .local v3, "byte":B
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    .end local v3    # "byte":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stringBuilder.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 439
    sub-int v0, p3, p2

    new-array v0, v0, [B

    .line 440
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    .line 441
    .local v1, "length":I
    move v2, p2

    .local v2, "index":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 442
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 443
    .local v3, "symbol":I
    const/16 v4, 0xff

    if-gt v3, v4, :cond_0

    .line 444
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "length":I
    .local v4, "length":I
    int-to-byte v5, v3

    aput-byte v5, v0, v1

    move v1, v4

    goto :goto_1

    .line 448
    .end local v4    # "length":I
    .restart local v1    # "length":I
    :cond_0
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "length":I
    .restart local v4    # "length":I
    const/16 v5, 0x3f

    aput-byte v5, v0, v1

    move v1, v4

    .line 441
    .end local v3    # "symbol":I
    .end local v4    # "length":I
    .restart local v1    # "length":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    .end local v2    # "index":I
    :cond_1
    return-object v0
.end method

.method public final checkSourceBounds$kotlin_stdlib(III)V
    .locals 1
    .param p1, "sourceSize"    # I
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 498
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {v0, p2, p3, p1}, Lkotlin/collections/AbstractList$Companion;->checkBoundsIndexes$kotlin_stdlib(III)V

    .line 499
    return-void
.end method

.method public final decode(Ljava/lang/CharSequence;II)[B
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 218
    .local v2, "byteSource":[B
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final decode([BII)[B
    .locals 8
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    array-length v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->decodeSize([BII)I

    move-result v0

    .line 154
    .local v0, "decodeSize":I
    new-array v7, v0, [B

    .line 156
    .local v7, "destination":[B
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->decodeImpl([B[BIII)I

    move-result v1

    .line 158
    .local v1, "bytesWritten":I
    array-length v2, v7

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 160
    return-object v7

    .line 158
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Check failed."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final decodeIntoByteArray(Ljava/lang/CharSequence;[BIII)I
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0, p4, p5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lkotlin/io/encoding/Base64;->charsToBytesImpl$kotlin_stdlib(Ljava/lang/CharSequence;II)[B

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 251
    .local v2, "byteSource":[B
    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v8}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray$default(Lkotlin/io/encoding/Base64;[B[BIIIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final decodeIntoByteArray([B[BIII)I
    .locals 2
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    array-length v0, p1

    invoke-virtual {p0, v0, p4, p5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 193
    array-length v0, p2

    invoke-direct {p0, p1, p4, p5}, Lkotlin/io/encoding/Base64;->decodeSize([BII)I

    move-result v1

    invoke-direct {p0, v0, p3, v1}, Lkotlin/io/encoding/Base64;->checkDestinationBounds(III)V

    .line 195
    invoke-direct/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->decodeImpl([B[BIII)I

    move-result v0

    return v0
.end method

.method public final encode([BII)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final encodeIntoByteArray([B[BIII)I
    .locals 1
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p0 .. p5}, Lkotlin/io/encoding/Base64;->encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I

    move-result v0

    return v0
.end method

.method public final encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I
    .locals 20
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const-string/jumbo v6, "source"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "destination"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    array-length v6, v1

    invoke-virtual {v0, v6, v4, v5}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 273
    array-length v6, v2

    sub-int v7, v5, v4

    invoke-direct {v0, v7}, Lkotlin/io/encoding/Base64;->encodeSize(I)I

    move-result v7

    invoke-direct {v0, v6, v3, v7}, Lkotlin/io/encoding/Base64;->checkDestinationBounds(III)V

    .line 275
    iget-boolean v6, v0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64UrlEncodeMap$p()[B

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/io/encoding/Base64Kt;->access$getBase64EncodeMap$p()[B

    move-result-object v6

    .line 276
    .local v6, "encodeMap":[B
    :goto_0
    move/from16 v7, p4

    .line 277
    .local v7, "sourceIndex":I
    move/from16 v8, p3

    .line 278
    .local v8, "destinationIndex":I
    iget-boolean v9, v0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    if-eqz v9, :cond_1

    const/16 v9, 0x13

    goto :goto_1

    :cond_1
    const v9, 0x7fffffff

    .line 280
    .local v9, "groupsPerLine":I
    :cond_2
    :goto_1
    add-int/lit8 v10, v7, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v10, v5, :cond_4

    .line 281
    sub-int v10, v5, v7

    div-int/lit8 v10, v10, 0x3

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 282
    .local v10, "groups":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v10, :cond_3

    .line 283
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "sourceIndex":I
    .local v14, "sourceIndex":I
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    .line 284
    .local v7, "byte1":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sourceIndex":I
    .local v15, "sourceIndex":I
    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    .line 285
    .local v14, "byte2":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "sourceIndex":I
    .local v16, "sourceIndex":I
    aget-byte v15, v1, v15

    and-int/lit16 v15, v15, 0xff

    .line 286
    .local v15, "byte3":I
    shl-int/lit8 v17, v7, 0x10

    shl-int/lit8 v18, v14, 0x8

    or-int v17, v17, v18

    or-int v17, v17, v15

    .line 287
    .local v17, "bits":I
    add-int/lit8 v18, v8, 0x1

    .end local v8    # "destinationIndex":I
    .local v18, "destinationIndex":I
    ushr-int/lit8 v19, v17, 0x12

    aget-byte v19, v6, v19

    aput-byte v19, v2, v8

    .line 288
    add-int/lit8 v8, v18, 0x1

    .end local v18    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    ushr-int/lit8 v19, v17, 0xc

    and-int/lit8 v19, v19, 0x3f

    aget-byte v19, v6, v19

    aput-byte v19, v2, v18

    .line 289
    add-int/lit8 v18, v8, 0x1

    .end local v8    # "destinationIndex":I
    .restart local v18    # "destinationIndex":I
    ushr-int/lit8 v19, v17, 0x6

    and-int/lit8 v19, v19, 0x3f

    aget-byte v19, v6, v19

    aput-byte v19, v2, v8

    .line 290
    add-int/lit8 v8, v18, 0x1

    .end local v18    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    and-int/lit8 v19, v17, 0x3f

    aget-byte v19, v6, v19

    aput-byte v19, v2, v18

    .line 282
    .end local v7    # "byte1":I
    .end local v14    # "byte2":I
    .end local v15    # "byte3":I
    .end local v17    # "bits":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    goto :goto_2

    .line 292
    .end local v13    # "i":I
    .end local v16    # "sourceIndex":I
    .local v7, "sourceIndex":I
    :cond_3
    if-ne v10, v9, :cond_2

    if-eq v7, v5, :cond_2

    .line 293
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "destinationIndex":I
    .local v13, "destinationIndex":I
    sget-object v14, Lkotlin/io/encoding/Base64;->mimeLineSeparatorSymbols:[B

    aget-byte v11, v14, v11

    aput-byte v11, v2, v8

    .line 294
    add-int/lit8 v8, v13, 0x1

    .end local v13    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    sget-object v11, Lkotlin/io/encoding/Base64;->mimeLineSeparatorSymbols:[B

    aget-byte v11, v11, v12

    aput-byte v11, v2, v13

    .end local v10    # "groups":I
    goto :goto_1

    .line 298
    :cond_4
    sub-int v10, v5, v7

    const/16 v13, 0x3d

    packed-switch v10, :pswitch_data_0

    goto :goto_3

    .line 308
    :pswitch_0
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "sourceIndex":I
    .local v10, "sourceIndex":I
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    .line 309
    .local v7, "byte1":I
    add-int/lit8 v14, v10, 0x1

    .end local v10    # "sourceIndex":I
    .local v14, "sourceIndex":I
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    .line 310
    .local v10, "byte2":I
    shl-int/lit8 v15, v7, 0xa

    shl-int/lit8 v16, v10, 0x2

    or-int v15, v15, v16

    .line 311
    .local v15, "bits":I
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "destinationIndex":I
    .local v16, "destinationIndex":I
    ushr-int/lit8 v17, v15, 0xc

    aget-byte v17, v6, v17

    aput-byte v17, v2, v8

    .line 312
    add-int/lit8 v8, v16, 0x1

    .end local v16    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    ushr-int/lit8 v17, v15, 0x6

    and-int/lit8 v17, v17, 0x3f

    aget-byte v17, v6, v17

    aput-byte v17, v2, v16

    .line 313
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "destinationIndex":I
    .restart local v16    # "destinationIndex":I
    and-int/lit8 v17, v15, 0x3f

    aget-byte v17, v6, v17

    aput-byte v17, v2, v8

    .line 314
    add-int/lit8 v8, v16, 0x1

    .end local v16    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    aput-byte v13, v2, v16

    move v7, v14

    goto :goto_3

    .line 300
    .end local v10    # "byte2":I
    .end local v14    # "sourceIndex":I
    .end local v15    # "bits":I
    .local v7, "sourceIndex":I
    :pswitch_1
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "sourceIndex":I
    .local v10, "sourceIndex":I
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    .line 301
    .local v7, "byte1":I
    shl-int/lit8 v14, v7, 0x4

    .line 302
    .local v14, "bits":I
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "destinationIndex":I
    .local v15, "destinationIndex":I
    ushr-int/lit8 v16, v14, 0x6

    aget-byte v16, v6, v16

    aput-byte v16, v2, v8

    .line 303
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    and-int/lit8 v16, v14, 0x3f

    aget-byte v16, v6, v16

    aput-byte v16, v2, v15

    .line 304
    add-int/lit8 v15, v8, 0x1

    .end local v8    # "destinationIndex":I
    .restart local v15    # "destinationIndex":I
    aput-byte v13, v2, v8

    .line 305
    add-int/lit8 v8, v15, 0x1

    .end local v15    # "destinationIndex":I
    .restart local v8    # "destinationIndex":I
    aput-byte v13, v2, v15

    move v7, v10

    .line 318
    .end local v10    # "sourceIndex":I
    .end local v14    # "bits":I
    .local v7, "sourceIndex":I
    :goto_3
    if-ne v7, v5, :cond_5

    move v11, v12

    :cond_5
    if-eqz v11, :cond_6

    .line 320
    sub-int v10, v8, v3

    return v10

    .line 318
    :cond_6
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Check failed."

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final encodeToAppendable([BLjava/lang/Appendable;II)Ljava/lang/Appendable;
    .locals 3
    .param p1, "source"    # [B
    .param p2, "destination"    # Ljava/lang/Appendable;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">([BTA;II)TA;"
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1, p3, p4}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    .line 128
    .local v0, "stringResult":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 129
    return-object p2
.end method

.method public final encodeToByteArray([BII)[B
    .locals 1
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/encoding/Base64;->encodeToByteArrayImpl$kotlin_stdlib([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final encodeToByteArrayImpl$kotlin_stdlib([BII)[B
    .locals 8
    .param p1, "source"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    array-length v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lkotlin/io/encoding/Base64;->checkSourceBounds$kotlin_stdlib(III)V

    .line 259
    sub-int v0, p3, p2

    invoke-direct {p0, v0}, Lkotlin/io/encoding/Base64;->encodeSize(I)I

    move-result v0

    .line 260
    .local v0, "encodeSize":I
    new-array v7, v0, [B

    .line 261
    .local v7, "destination":[B
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->encodeIntoByteArrayImpl$kotlin_stdlib([B[BIII)I

    .line 262
    return-object v7
.end method

.method public final isMimeScheme$kotlin_stdlib()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isMimeScheme:Z

    return v0
.end method

.method public final isUrlSafe$kotlin_stdlib()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lkotlin/io/encoding/Base64;->isUrlSafe:Z

    return v0
.end method
