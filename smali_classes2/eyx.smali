.class final Leyx;
.super Leyw;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Leyq;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Leyw;-><init>(Leyq;)V

    .line 32
    iput-boolean p2, p0, Leyx;->a:Z

    .line 33
    return-void
.end method

.method private a([Leyr;Leyo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 224
    aget-object v1, p1, v0

    .line 225
    aget-object v2, p1, v0

    if-nez v2, :cond_1

    .line 223
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v1}, Leyr;->g()I

    move-result v2

    rem-int/lit8 v2, v2, 0x1e

    .line 229
    invoke-virtual {v1}, Leyr;->h()I

    move-result v1

    .line 230
    invoke-virtual {p2}, Leyo;->c()I

    move-result v3

    if-le v1, v3, :cond_2

    .line 231
    aput-object v4, p1, v0

    goto :goto_1

    .line 234
    :cond_2
    iget-boolean v3, p0, Leyx;->a:Z

    if-nez v3, :cond_3

    .line 235
    add-int/lit8 v1, v1, 0x2

    .line 237
    :cond_3
    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 239
    :pswitch_0
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Leyo;->d()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 240
    aput-object v4, p1, v0

    goto :goto_1

    .line 244
    :pswitch_1
    div-int/lit8 v1, v2, 0x3

    invoke-virtual {p2}, Leyo;->b()I

    move-result v3

    if-ne v1, v3, :cond_4

    rem-int/lit8 v1, v2, 0x3

    .line 245
    invoke-virtual {p2}, Leyo;->e()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 246
    :cond_4
    aput-object v4, p1, v0

    goto :goto_1

    .line 250
    :pswitch_2
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2}, Leyo;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 251
    aput-object v4, p1, v0

    goto :goto_1

    .line 256
    :cond_5
    return-void

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a(Leyo;)I
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 48
    invoke-virtual {p0}, Leyx;->b()[Leyr;

    move-result-object v9

    .line 49
    invoke-virtual {p0}, Leyx;->c()V

    .line 50
    invoke-direct {p0, v9, p1}, Leyx;->a([Leyr;Leyo;)V

    .line 51
    invoke-virtual {p0}, Leyx;->a()Leyq;

    move-result-object v1

    .line 52
    iget-boolean v0, p0, Leyx;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Leyq;->e()Leqo;

    move-result-object v0

    .line 53
    :goto_0
    iget-boolean v4, p0, Leyx;->a:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Leyq;->g()Leqo;

    move-result-object v1

    .line 54
    :goto_1
    invoke-virtual {v0}, Leqo;->b()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Leyx;->b(I)I

    move-result v0

    .line 55
    invoke-virtual {v1}, Leqo;->b()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Leyx;->b(I)I

    move-result v10

    .line 58
    sub-int v1, v10, v0

    int-to-float v1, v1

    invoke-virtual {p1}, Leyo;->c()I

    move-result v4

    int-to-float v4, v4

    div-float v11, v1, v4

    .line 59
    const/4 v5, -0x1

    move v8, v0

    move v1, v3

    move v4, v2

    .line 62
    :goto_2
    if-ge v8, v10, :cond_c

    .line 63
    aget-object v0, v9, v8

    if-nez v0, :cond_2

    move v0, v1

    move v1, v4

    move v4, v5

    .line 62
    :goto_3
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v4

    move v4, v1

    move v1, v0

    goto :goto_2

    .line 52
    :cond_0
    invoke-virtual {v1}, Leyq;->f()Leqo;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v1}, Leyq;->h()Leqo;

    move-result-object v1

    goto :goto_1

    .line 66
    :cond_2
    aget-object v12, v9, v8

    .line 76
    invoke-virtual {v12}, Leyr;->h()I

    move-result v0

    sub-int/2addr v0, v5

    .line 80
    if-nez v0, :cond_3

    .line 81
    add-int/lit8 v0, v1, 0x1

    move v1, v4

    move v4, v5

    goto :goto_3

    .line 82
    :cond_3
    if-ne v0, v2, :cond_4

    .line 83
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 85
    invoke-virtual {v12}, Leyr;->h()I

    move-result v1

    move v4, v1

    move v1, v0

    move v0, v2

    goto :goto_3

    .line 86
    :cond_4
    if-ltz v0, :cond_5

    .line 87
    invoke-virtual {v12}, Leyr;->h()I

    move-result v6

    invoke-virtual {p1}, Leyo;->c()I

    move-result v7

    if-ge v6, v7, :cond_5

    if-le v0, v8, :cond_6

    .line 89
    :cond_5
    aput-object v13, v9, v8

    move v0, v1

    move v1, v4

    move v4, v5

    goto :goto_3

    .line 92
    :cond_6
    const/4 v6, 0x2

    if-le v4, v6, :cond_7

    .line 93
    add-int/lit8 v6, v4, -0x2

    mul-int/2addr v0, v6

    move v7, v0

    .line 97
    :goto_4
    if-lt v7, v8, :cond_8

    move v0, v2

    :goto_5
    move v6, v2

    .line 98
    :goto_6
    if-gt v6, v7, :cond_a

    if-nez v0, :cond_a

    .line 101
    sub-int v0, v8, v6

    aget-object v0, v9, v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 98
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    move v7, v0

    .line 95
    goto :goto_4

    :cond_8
    move v0, v3

    .line 97
    goto :goto_5

    :cond_9
    move v0, v3

    .line 101
    goto :goto_7

    .line 103
    :cond_a
    if-eqz v0, :cond_b

    .line 104
    aput-object v13, v9, v8

    move v0, v1

    move v1, v4

    move v4, v5

    goto :goto_3

    .line 106
    :cond_b
    invoke-virtual {v12}, Leyr;->h()I

    move-result v0

    move v1, v4

    move v4, v0

    move v0, v2

    .line 107
    goto :goto_3

    .line 111
    :cond_c
    float-to-double v0, v11

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method b(Leyo;)I
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 137
    invoke-virtual {p0}, Leyx;->a()Leyq;

    move-result-object v1

    .line 138
    iget-boolean v0, p0, Leyx;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Leyq;->e()Leqo;

    move-result-object v0

    .line 139
    :goto_0
    iget-boolean v3, p0, Leyx;->a:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Leyq;->g()Leqo;

    move-result-object v1

    .line 140
    :goto_1
    invoke-virtual {v0}, Leqo;->b()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Leyx;->b(I)I

    move-result v0

    .line 141
    invoke-virtual {v1}, Leqo;->b()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Leyx;->b(I)I

    move-result v5

    .line 142
    sub-int v1, v5, v0

    int-to-float v1, v1

    invoke-virtual {p1}, Leyo;->c()I

    move-result v3

    int-to-float v3, v3

    div-float v6, v1, v3

    .line 143
    invoke-virtual {p0}, Leyx;->b()[Leyr;

    move-result-object v7

    .line 144
    const/4 v3, -0x1

    .line 146
    const/4 v1, 0x0

    move v4, v0

    move v0, v1

    move v1, v2

    .line 147
    :goto_2
    if-ge v4, v5, :cond_6

    .line 148
    aget-object v8, v7, v4

    if-nez v8, :cond_2

    .line 147
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 138
    :cond_0
    invoke-virtual {v1}, Leyq;->f()Leqo;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v1}, Leyq;->h()Leqo;

    move-result-object v1

    goto :goto_1

    .line 151
    :cond_2
    aget-object v8, v7, v4

    .line 153
    invoke-virtual {v8}, Leyr;->b()V

    .line 155
    invoke-virtual {v8}, Leyr;->h()I

    move-result v9

    sub-int/2addr v9, v3

    .line 159
    if-nez v9, :cond_3

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 161
    :cond_3
    if-ne v9, v2, :cond_4

    .line 162
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 164
    invoke-virtual {v8}, Leyr;->h()I

    move-result v1

    move v3, v1

    move v1, v0

    move v0, v2

    goto :goto_3

    .line 165
    :cond_4
    invoke-virtual {v8}, Leyr;->h()I

    move-result v9

    invoke-virtual {p1}, Leyo;->c()I

    move-result v10

    if-lt v9, v10, :cond_5

    .line 166
    const/4 v8, 0x0

    aput-object v8, v7, v4

    goto :goto_3

    .line 168
    :cond_5
    invoke-virtual {v8}, Leyr;->h()I

    move-result v0

    move v3, v0

    move v0, v2

    .line 169
    goto :goto_3

    .line 172
    :cond_6
    float-to-double v0, v6

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method c()V
    .locals 4

    .prologue
    .line 36
    invoke-virtual {p0}, Leyx;->b()[Leyr;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 37
    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v3}, Leyr;->b()V

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method d()[I
    .locals 6

    .prologue
    .line 115
    invoke-virtual {p0}, Leyx;->e()Leyo;

    move-result-object v0

    .line 116
    if-nez v0, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 130
    :cond_0
    return-object v0

    .line 119
    :cond_1
    invoke-virtual {p0, v0}, Leyx;->b(Leyo;)I

    .line 120
    invoke-virtual {v0}, Leyo;->c()I

    move-result v0

    new-array v0, v0, [I

    .line 121
    invoke-virtual {p0}, Leyx;->b()[Leyr;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 122
    if-eqz v4, :cond_3

    .line 123
    invoke-virtual {v4}, Leyr;->h()I

    move-result v4

    .line 124
    array-length v5, v0

    if-lt v4, v5, :cond_2

    .line 125
    invoke-static {}, Leqb;->a()Leqb;

    move-result-object v0

    throw v0

    .line 127
    :cond_2
    aget v5, v0, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v4

    .line 121
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method e()Leyo;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0}, Leyx;->b()[Leyr;

    move-result-object v3

    .line 177
    new-instance v4, Leyp;

    invoke-direct {v4}, Leyp;-><init>()V

    .line 178
    new-instance v5, Leyp;

    invoke-direct {v5}, Leyp;-><init>()V

    .line 179
    new-instance v6, Leyp;

    invoke-direct {v6}, Leyp;-><init>()V

    .line 180
    new-instance v7, Leyp;

    invoke-direct {v7}, Leyp;-><init>()V

    .line 181
    array-length v8, v3

    move v1, v2

    :goto_0
    if-ge v1, v8, :cond_2

    aget-object v0, v3, v1

    .line 182
    if-nez v0, :cond_0

    .line 181
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0}, Leyr;->b()V

    .line 186
    invoke-virtual {v0}, Leyr;->g()I

    move-result v9

    rem-int/lit8 v9, v9, 0x1e

    .line 187
    invoke-virtual {v0}, Leyr;->h()I

    move-result v0

    .line 188
    iget-boolean v10, p0, Leyx;->a:Z

    if-nez v10, :cond_1

    .line 189
    add-int/lit8 v0, v0, 0x2

    .line 191
    :cond_1
    rem-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 193
    :pswitch_0
    mul-int/lit8 v0, v9, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Leyp;->a(I)V

    goto :goto_1

    .line 196
    :pswitch_1
    div-int/lit8 v0, v9, 0x3

    invoke-virtual {v7, v0}, Leyp;->a(I)V

    .line 197
    rem-int/lit8 v0, v9, 0x3

    invoke-virtual {v6, v0}, Leyp;->a(I)V

    goto :goto_1

    .line 200
    :pswitch_2
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v4, v0}, Leyp;->a(I)V

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {v4}, Leyp;->a()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_3

    .line 206
    invoke-virtual {v5}, Leyp;->a()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {v6}, Leyp;->a()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_3

    .line 208
    invoke-virtual {v7}, Leyp;->a()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {v4}, Leyp;->a()[I

    move-result-object v0

    aget v0, v0, v2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 210
    invoke-virtual {v5}, Leyp;->a()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {v6}, Leyp;->a()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 211
    invoke-virtual {v5}, Leyp;->a()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {v6}, Leyp;->a()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_4

    .line 212
    :cond_3
    const/4 v0, 0x0

    .line 217
    :goto_2
    return-object v0

    .line 214
    :cond_4
    new-instance v0, Leyo;

    invoke-virtual {v4}, Leyp;->a()[I

    move-result-object v1

    aget v1, v1, v2

    .line 215
    invoke-virtual {v5}, Leyp;->a()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v6}, Leyp;->a()[I

    move-result-object v5

    aget v5, v5, v2

    invoke-virtual {v7}, Leyp;->a()[I

    move-result-object v6

    aget v2, v6, v2

    invoke-direct {v0, v1, v4, v5, v2}, Leyo;-><init>(IIII)V

    .line 216
    invoke-direct {p0, v3, v0}, Leyx;->a([Leyr;Leyo;)V

    goto :goto_2

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method f()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Leyx;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Leyx;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Leyw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
