.class Landroidx/core/graphics/TypefaceCompatApi21Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String; = "addFontWeightStyle"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"

.field private static sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field private static sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static sFontFamily:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sFontFamilyCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static sHasInitBeenCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    .locals 4
    .param p0, "family"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "style"    # Z

    .line 135
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    .line 137
    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 138
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 137
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 139
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 140
    .end local v0    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "family"    # Ljava/lang/Object;

    .line 122
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    .line 124
    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "familyArray":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 126
    sget-object v1, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 128
    .end local v0    # "familyArray":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .locals 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 100
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/self/fd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 105
    :cond_0
    return-object v0

    .line 107
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Landroid/system/ErrnoException;
    return-object v0
.end method

.method private static init()V
    .locals 9

    .line 67
    sget-boolean v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sHasInitBeenCalled:Z

    .line 77
    :try_start_0
    const-string v1, "android.graphics.FontFamily"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 78
    .local v1, "fontFamilyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 79
    .local v3, "fontFamilyCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v4, "addFontWeightStyle"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 81
    .local v4, "addFontMethod":Ljava/lang/reflect/Method;
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 82
    .local v5, "familyArray":Ljava/lang/Object;
    const-class v6, Landroid/graphics/Typeface;

    const-string v7, "createFromFamiliesWithDefault"

    new-array v0, v0, [Ljava/lang/Class;

    .line 84
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v0, v2

    .line 83
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v5    # "familyArray":Ljava/lang/Object;
    .local v0, "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 85
    .end local v0    # "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    .end local v1    # "fontFamilyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "addFontMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TypefaceCompatApi21Impl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const/4 v1, 0x0

    .line 88
    .restart local v1    # "fontFamilyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 89
    .restart local v3    # "fontFamilyCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    .line 90
    .restart local v4    # "addFontMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    move-object v0, v2

    .line 92
    .local v0, "createFromFamiliesWithDefaultMethod":Ljava/lang/reflect/Method;
    :goto_1
    sput-object v3, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    .line 93
    sput-object v1, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamily:Ljava/lang/Class;

    .line 94
    sput-object v4, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    .line 95
    sput-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    .line 96
    return-void
.end method

.method private static newFamily()Ljava/lang/Object;
    .locals 2

    .line 113
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->init()V

    .line 115
    :try_start_0
    sget-object v0, Landroidx/core/graphics/TypefaceCompatApi21Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "style"    # I

    .line 175
    invoke-static {}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->newFamily()Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "family":Ljava/lang/Object;
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 177
    .local v4, "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    invoke-static {p1}, Landroidx/core/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 178
    .local v5, "tmpFile":Ljava/io/File;
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 179
    return-object v6

    .line 182
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v7

    invoke-static {v5, p3, v7}, Landroidx/core/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 183
    nop

    .line 195
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 183
    return-object v6

    .line 186
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v9

    invoke-static {v0, v7, v8, v9}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/lang/String;IZ)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_2

    .line 187
    nop

    .line 195
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 187
    return-object v6

    .line 195
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 196
    nop

    .line 176
    .end local v4    # "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .end local v5    # "tmpFile":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .restart local v4    # "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .restart local v5    # "tmpFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 196
    throw v1

    .line 189
    :catch_0
    move-exception v1

    .line 193
    .local v1, "exception":Ljava/lang/RuntimeException;
    nop

    .line 195
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 193
    return-object v6

    .line 198
    .end local v1    # "exception":Ljava/lang/RuntimeException;
    .end local v4    # "e":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .end local v5    # "tmpFile":Ljava/io/File;
    :cond_3
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
    .param p4, "style"    # I

    .line 148
    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 149
    return-object v2

    .line 151
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 152
    .local v0, "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 153
    .local v1, "resolver":Landroid/content/ContentResolver;
    nop

    .line 154
    :try_start_0
    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v1, v3, v4, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 155
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v3, :cond_2

    .line 156
    nop

    .line 167
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    return-object v2

    .line 158
    :cond_2
    :try_start_1
    invoke-direct {p0, v3}, Landroidx/core/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v4

    .line 159
    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 166
    :cond_3
    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 167
    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    :cond_4
    return-object v5

    .line 162
    :cond_5
    :goto_0
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 163
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_4
    invoke-super {p0, p1, v5}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 167
    if-eqz v3, :cond_6

    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 163
    :cond_6
    return-object v6

    .line 162
    :catchall_0
    move-exception v6

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_8
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :goto_1
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 153
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catchall_2
    move-exception v4

    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v5

    :try_start_a
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :cond_7
    :goto_2
    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 167
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "bestFont":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Ljava/io/IOException;
    return-object v2
.end method

.method createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "base"    # Landroid/graphics/Typeface;
    .param p3, "weight"    # I
    .param p4, "italic"    # Z

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "out":Landroid/graphics/Typeface;
    :try_start_0
    invoke-static {p2, p3, p4}, Landroidx/core/graphics/WeightTypefaceApi21;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 211
    :goto_0
    if-nez v0, :cond_0

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createWeightStyle(Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    .line 214
    :cond_0
    return-object v0
.end method
