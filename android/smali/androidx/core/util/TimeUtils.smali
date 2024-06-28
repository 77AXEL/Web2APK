.class public final Landroidx/core/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 39
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 1
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    .line 42
    const/16 v0, 0x63

    if-gt p0, v0, :cond_5

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-lt p3, v0, :cond_0

    goto :goto_2

    .line 45
    :cond_0
    const/16 v0, 0x9

    if-gt p0, v0, :cond_4

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-lt p3, v0, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    if-nez p2, :cond_3

    if-lez p0, :cond_2

    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_3
    :goto_0
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 46
    :cond_4
    :goto_1
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 43
    :cond_5
    :goto_2
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 3
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .line 172
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 173
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    return-void

    .line 176
    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 177
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 1
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 167
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/core/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 168
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 5
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    .line 159
    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    invoke-static {p0, p1, p3}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    .line 161
    .local v1, "len":I
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    .end local v1    # "len":I
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 151
    sget-object v0, Landroidx/core/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroidx/core/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    .line 153
    .local v2, "len":I
    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, v3, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 154
    nop

    .end local v2    # "len":I
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 27
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    .line 79
    move-wide/from16 v0, p0

    move/from16 v2, p2

    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_0

    .line 80
    new-array v3, v2, [C

    sput-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    .line 83
    :cond_0
    sget-object v3, Landroidx/core/util/TimeUtils;->sFormatStr:[C

    .line 85
    .local v3, "formatStr":[C
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/16 v7, 0x20

    if-nez v6, :cond_2

    .line 86
    const/4 v4, 0x0

    .line 87
    .local v4, "pos":I
    add-int/lit8 v2, v2, -0x1

    .line 88
    .end local p2    # "fieldLen":I
    .local v2, "fieldLen":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 89
    aput-char v7, v3, v4

    goto :goto_0

    .line 91
    :cond_1
    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 92
    add-int/lit8 v5, v4, 0x1

    return v5

    .line 96
    .end local v2    # "fieldLen":I
    .end local v4    # "pos":I
    .restart local p2    # "fieldLen":I
    :cond_2
    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 97
    const/16 v4, 0x2b

    move v10, v4

    .local v4, "prefix":C
    goto :goto_1

    .line 99
    .end local v4    # "prefix":C
    :cond_3
    const/16 v4, 0x2d

    .line 100
    .restart local v4    # "prefix":C
    neg-long v0, v0

    move v10, v4

    .line 103
    .end local v4    # "prefix":C
    .end local p0    # "duration":J
    .local v0, "duration":J
    .local v10, "prefix":C
    :goto_1
    const-wide/16 v4, 0x3e8

    rem-long v8, v0, v4

    long-to-int v11, v8

    .line 104
    .local v11, "millis":I
    div-long v4, v0, v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 105
    .local v4, "seconds":I
    const/4 v5, 0x0

    .local v5, "days":I
    const/4 v6, 0x0

    .local v6, "hours":I
    const/4 v8, 0x0

    .line 107
    .local v8, "minutes":I
    const v9, 0x15180

    if-le v4, v9, :cond_4

    .line 108
    div-int v5, v4, v9

    .line 109
    mul-int/2addr v9, v5

    sub-int/2addr v4, v9

    move v12, v5

    goto :goto_2

    .line 107
    :cond_4
    move v12, v5

    .line 111
    .end local v5    # "days":I
    .local v12, "days":I
    :goto_2
    const/16 v5, 0xe10

    if-le v4, v5, :cond_5

    .line 112
    div-int/lit16 v6, v4, 0xe10

    .line 113
    mul-int/lit16 v5, v6, 0xe10

    sub-int/2addr v4, v5

    move v13, v6

    goto :goto_3

    .line 111
    :cond_5
    move v13, v6

    .line 115
    .end local v6    # "hours":I
    .local v13, "hours":I
    :goto_3
    const/16 v5, 0x3c

    if-le v4, v5, :cond_6

    .line 116
    div-int/lit8 v8, v4, 0x3c

    .line 117
    mul-int/lit8 v5, v8, 0x3c

    sub-int/2addr v4, v5

    move v14, v4

    move v15, v8

    goto :goto_4

    .line 115
    :cond_6
    move v14, v4

    move v15, v8

    .line 120
    .end local v4    # "seconds":I
    .end local v8    # "minutes":I
    .local v14, "seconds":I
    .local v15, "minutes":I
    :goto_4
    const/4 v4, 0x0

    .line 122
    .local v4, "pos":I
    const/16 v16, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_b

    .line 123
    invoke-static {v12, v6, v8, v8}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v5

    .line 124
    .local v5, "myLen":I
    if-lez v5, :cond_7

    move v8, v6

    :cond_7
    invoke-static {v13, v6, v8, v9}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    .line 125
    if-lez v5, :cond_8

    move v8, v6

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    invoke-static {v15, v6, v8, v9}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    .line 126
    if-lez v5, :cond_9

    move v8, v6

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    invoke-static {v14, v6, v8, v9}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v5, v8

    .line 127
    if-lez v5, :cond_a

    move/from16 v8, v16

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    :goto_7
    invoke-static {v11, v9, v6, v8}, Landroidx/core/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v5, v8

    .line 128
    :goto_8
    if-ge v5, v2, :cond_b

    .line 129
    aput-char v7, v3, v4

    .line 130
    add-int/lit8 v4, v4, 0x1

    .line 131
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 135
    .end local v5    # "myLen":I
    :cond_b
    aput-char v10, v3, v4

    .line 136
    add-int/lit8 v17, v4, 0x1

    .line 138
    .end local v4    # "pos":I
    .local v17, "pos":I
    move/from16 v8, v17

    .line 139
    .local v8, "start":I
    if-eqz v2, :cond_c

    move v4, v6

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    move/from16 v18, v4

    .line 140
    .local v18, "zeropad":Z
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v7, 0x64

    move-object v4, v3

    move v5, v12

    move/from16 v21, v6

    move v6, v7

    move/from16 v7, v17

    move/from16 v22, v8

    const/16 v23, 0x0

    .end local v8    # "start":I
    .local v22, "start":I
    move/from16 v8, v19

    move/from16 v19, v9

    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 141
    .end local v17    # "pos":I
    .local v9, "pos":I
    move/from16 v8, v22

    .end local v22    # "start":I
    .restart local v8    # "start":I
    if-eq v9, v8, :cond_d

    move/from16 v17, v21

    goto :goto_a

    :cond_d
    move/from16 v17, v23

    :goto_a
    if-eqz v18, :cond_e

    move/from16 v20, v19

    goto :goto_b

    :cond_e
    move/from16 v20, v23

    :goto_b
    const/16 v6, 0x68

    move-object v4, v3

    move v5, v13

    move v7, v9

    move/from16 v24, v8

    .end local v8    # "start":I
    .local v24, "start":I
    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "pos":I
    .restart local v17    # "pos":I
    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 142
    .end local v17    # "pos":I
    .restart local v9    # "pos":I
    move/from16 v8, v24

    .end local v24    # "start":I
    .restart local v8    # "start":I
    if-eq v9, v8, :cond_f

    move/from16 v17, v21

    goto :goto_c

    :cond_f
    move/from16 v17, v23

    :goto_c
    if-eqz v18, :cond_10

    move/from16 v20, v19

    goto :goto_d

    :cond_10
    move/from16 v20, v23

    :goto_d
    const/16 v6, 0x6d

    move-object v4, v3

    move v5, v15

    move v7, v9

    move/from16 v25, v8

    .end local v8    # "start":I
    .local v25, "start":I
    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "pos":I
    .restart local v17    # "pos":I
    move/from16 v9, v20

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 143
    .end local v17    # "pos":I
    .restart local v9    # "pos":I
    move/from16 v8, v25

    .end local v25    # "start":I
    .restart local v8    # "start":I
    if-eq v9, v8, :cond_11

    goto :goto_e

    :cond_11
    move/from16 v21, v23

    :goto_e
    if-eqz v18, :cond_12

    goto :goto_f

    :cond_12
    move/from16 v19, v23

    :goto_f
    const/16 v6, 0x73

    move-object v4, v3

    move v5, v14

    move v7, v9

    move/from16 v26, v8

    .end local v8    # "start":I
    .local v26, "start":I
    move/from16 v8, v21

    move/from16 v17, v9

    .end local v9    # "pos":I
    .restart local v17    # "pos":I
    move/from16 v9, v19

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v9

    .line 144
    .end local v17    # "pos":I
    .restart local v9    # "pos":I
    if-eqz v18, :cond_13

    move/from16 v8, v26

    .end local v26    # "start":I
    .restart local v8    # "start":I
    if-eq v9, v8, :cond_14

    goto :goto_10

    .end local v8    # "start":I
    .restart local v26    # "start":I
    :cond_13
    move/from16 v8, v26

    .end local v26    # "start":I
    .restart local v8    # "start":I
    :cond_14
    move/from16 v16, v23

    :goto_10
    const/16 v6, 0x6d

    const/16 v17, 0x1

    move-object v4, v3

    move v5, v11

    move v7, v9

    move/from16 v19, v8

    .end local v8    # "start":I
    .local v19, "start":I
    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "pos":I
    .restart local v17    # "pos":I
    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Landroidx/core/util/TimeUtils;->printField([CICIZI)I

    move-result v4

    .line 145
    .end local v17    # "pos":I
    .restart local v4    # "pos":I
    const/16 v5, 0x73

    aput-char v5, v3, v4

    .line 146
    add-int/lit8 v5, v4, 0x1

    return v5
.end method

.method private static printField([CICIZI)I
    .locals 3
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    .line 56
    if-nez p4, :cond_0

    if-lez p1, :cond_7

    .line 57
    :cond_0
    move v0, p3

    .line 58
    .local v0, "startPos":I
    if-eqz p4, :cond_1

    const/4 v1, 0x3

    if-ge p5, v1, :cond_2

    :cond_1
    const/16 v1, 0x63

    if-le p1, v1, :cond_3

    .line 59
    :cond_2
    div-int/lit8 v1, p1, 0x64

    .line 60
    .local v1, "dig":I
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 61
    add-int/lit8 p3, p3, 0x1

    .line 62
    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p1, v2

    .line 64
    .end local v1    # "dig":I
    :cond_3
    if-eqz p4, :cond_4

    const/4 v1, 0x2

    if-ge p5, v1, :cond_5

    :cond_4
    const/16 v1, 0x9

    if-gt p1, v1, :cond_5

    if-eq v0, p3, :cond_6

    .line 65
    :cond_5
    div-int/lit8 v1, p1, 0xa

    .line 66
    .restart local v1    # "dig":I
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 67
    add-int/lit8 p3, p3, 0x1

    .line 68
    mul-int/lit8 v2, v1, 0xa

    sub-int/2addr p1, v2

    .line 70
    .end local v1    # "dig":I
    :cond_6
    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, p3

    .line 71
    add-int/lit8 p3, p3, 0x1

    .line 72
    aput-char p2, p0, p3

    .line 73
    add-int/lit8 p3, p3, 0x1

    .line 75
    .end local v0    # "startPos":I
    :cond_7
    return p3
.end method
