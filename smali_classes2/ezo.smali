.class final Lezo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lett;

.field private b:Lfag;

.field private c:Lfad;

.field private d:Z


# direct methods
.method constructor <init>(Lett;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lett;->g()I

    move-result v0

    .line 38
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 39
    :cond_0
    invoke-static {}, Leqb;->a()Leqb;

    move-result-object v0

    throw v0

    .line 41
    :cond_1
    iput-object p1, p0, Lezo;->a:Lett;

    .line 42
    return-void
.end method

.method private a(III)I
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lezo;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lezo;->a:Lett;

    invoke-virtual {v0, p2, p1}, Lett;->a(II)Z

    move-result v0

    .line 142
    :goto_0
    if-eqz v0, :cond_1

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lezo;->a:Lett;

    invoke-virtual {v0, p1, p2}, Lett;->a(II)Z

    move-result v0

    goto :goto_0

    .line 142
    :cond_1
    shl-int/lit8 v0, p3, 0x1

    goto :goto_1
.end method


# virtual methods
.method a()Lfad;
    .locals 6

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x0

    const/16 v5, 0x8

    .line 53
    iget-object v0, p0, Lezo;->c:Lfad;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lezo;->c:Lfad;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    move v2, v1

    .line 59
    :goto_1
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 60
    invoke-direct {p0, v0, v5, v2}, Lezo;->a(III)I

    move-result v2

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_1
    invoke-direct {p0, v4, v5, v2}, Lezo;->a(III)I

    move-result v0

    .line 64
    invoke-direct {p0, v5, v5, v0}, Lezo;->a(III)I

    move-result v0

    .line 65
    invoke-direct {p0, v5, v4, v0}, Lezo;->a(III)I

    move-result v2

    .line 67
    const/4 v0, 0x5

    :goto_2
    if-ltz v0, :cond_2

    .line 68
    invoke-direct {p0, v5, v0, v2}, Lezo;->a(III)I

    move-result v2

    .line 67
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 72
    :cond_2
    iget-object v0, p0, Lezo;->a:Lett;

    invoke-virtual {v0}, Lett;->g()I

    move-result v3

    .line 74
    add-int/lit8 v4, v3, -0x7

    .line 75
    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-lt v0, v4, :cond_3

    .line 76
    invoke-direct {p0, v5, v0, v1}, Lezo;->a(III)I

    move-result v1

    .line 75
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 78
    :cond_3
    add-int/lit8 v0, v3, -0x8

    :goto_4
    if-ge v0, v3, :cond_4

    .line 79
    invoke-direct {p0, v0, v5, v1}, Lezo;->a(III)I

    move-result v1

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 82
    :cond_4
    invoke-static {v2, v1}, Lfad;->b(II)Lfad;

    move-result-object v0

    iput-object v0, p0, Lezo;->c:Lfad;

    .line 83
    iget-object v0, p0, Lezo;->c:Lfad;

    if-eqz v0, :cond_5

    .line 84
    iget-object v0, p0, Lezo;->c:Lfad;

    goto :goto_0

    .line 86
    :cond_5
    invoke-static {}, Leqb;->a()Leqb;

    move-result-object v0

    throw v0
.end method

.method a(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lezo;->b:Lfag;

    .line 229
    iput-object v0, p0, Lezo;->c:Lfad;

    .line 230
    iput-boolean p1, p0, Lezo;->d:Z

    .line 231
    return-void
.end method

.method b()Lfag;
    .locals 8

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lezo;->b:Lfag;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lezo;->b:Lfag;

    .line 135
    :goto_0
    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lezo;->a:Lett;

    invoke-virtual {v0}, Lett;->g()I

    move-result v5

    .line 104
    add-int/lit8 v0, v5, -0x11

    div-int/lit8 v0, v0, 0x4

    .line 105
    const/4 v3, 0x6

    if-gt v0, v3, :cond_1

    .line 106
    invoke-static {v0}, Lfag;->b(I)Lfag;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    add-int/lit8 v6, v5, -0xb

    move v4, v1

    move v3, v2

    .line 112
    :goto_1
    if-ltz v4, :cond_3

    .line 113
    add-int/lit8 v0, v5, -0x9

    :goto_2
    if-lt v0, v6, :cond_2

    .line 114
    invoke-direct {p0, v0, v4, v3}, Lezo;->a(III)I

    move-result v3

    .line 113
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 112
    :cond_2
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    .line 118
    :cond_3
    invoke-static {v3}, Lfag;->c(I)Lfag;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lfag;->d()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 120
    iput-object v0, p0, Lezo;->b:Lfag;

    goto :goto_0

    :cond_4
    move v7, v1

    move v1, v2

    move v2, v7

    .line 126
    :goto_3
    if-ltz v2, :cond_6

    .line 127
    add-int/lit8 v0, v5, -0x9

    :goto_4
    if-lt v0, v6, :cond_5

    .line 128
    invoke-direct {p0, v2, v0, v1}, Lezo;->a(III)I

    move-result v1

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 126
    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_3

    .line 132
    :cond_6
    invoke-static {v1}, Lfag;->c(I)Lfag;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lfag;->d()I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 134
    iput-object v0, p0, Lezo;->b:Lfag;

    goto :goto_0

    .line 137
    :cond_7
    invoke-static {}, Leqb;->a()Leqb;

    move-result-object v0

    throw v0
.end method

.method c()[B
    .locals 15

    .prologue
    const/4 v4, 0x0

    .line 155
    invoke-virtual {p0}, Lezo;->a()Lfad;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lezo;->b()Lfag;

    move-result-object v9

    .line 160
    invoke-virtual {v0}, Lfad;->b()B

    move-result v0

    invoke-static {v0}, Lezq;->a(I)Lezq;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lezo;->a:Lett;

    invoke-virtual {v1}, Lett;->g()I

    move-result v10

    .line 162
    iget-object v1, p0, Lezo;->a:Lett;

    invoke-virtual {v0, v1, v10}, Lezq;->a(Lett;I)V

    .line 164
    invoke-virtual {v9}, Lfag;->e()Lett;

    move-result-object v11

    .line 166
    const/4 v1, 0x1

    .line 167
    invoke-virtual {v9}, Lfag;->c()I

    move-result v0

    new-array v12, v0, [B

    .line 172
    add-int/lit8 v0, v10, -0x1

    move v3, v4

    move v5, v4

    move v6, v4

    move v8, v1

    :goto_0
    if-lez v0, :cond_6

    .line 173
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 176
    add-int/lit8 v0, v0, -0x1

    :cond_0
    move v2, v4

    .line 179
    :goto_1
    if-ge v2, v10, :cond_5

    .line 180
    if-eqz v8, :cond_3

    add-int/lit8 v1, v10, -0x1

    sub-int/2addr v1, v2

    :goto_2
    move v7, v4

    .line 181
    :goto_3
    const/4 v13, 0x2

    if-ge v7, v13, :cond_4

    .line 183
    sub-int v13, v0, v7

    invoke-virtual {v11, v13, v1}, Lett;->a(II)Z

    move-result v13

    if-nez v13, :cond_2

    .line 185
    add-int/lit8 v3, v3, 0x1

    .line 186
    shl-int/lit8 v5, v5, 0x1

    .line 187
    iget-object v13, p0, Lezo;->a:Lett;

    sub-int v14, v0, v7

    invoke-virtual {v13, v14, v1}, Lett;->a(II)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 188
    or-int/lit8 v5, v5, 0x1

    .line 191
    :cond_1
    const/16 v13, 0x8

    if-ne v3, v13, :cond_2

    .line 192
    add-int/lit8 v3, v6, 0x1

    int-to-byte v5, v5

    aput-byte v5, v12, v6

    move v5, v4

    move v6, v3

    move v3, v4

    .line 181
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    move v1, v2

    .line 180
    goto :goto_2

    .line 179
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    :cond_5
    xor-int/lit8 v1, v8, 0x1

    .line 172
    add-int/lit8 v0, v0, -0x2

    move v8, v1

    goto :goto_0

    .line 201
    :cond_6
    invoke-virtual {v9}, Lfag;->c()I

    move-result v0

    if-eq v6, v0, :cond_7

    .line 202
    invoke-static {}, Leqb;->a()Leqb;

    move-result-object v0

    throw v0

    .line 204
    :cond_7
    return-object v12
.end method

.method d()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lezo;->c:Lfad;

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lezo;->c:Lfad;

    invoke-virtual {v0}, Lfad;->b()B

    move-result v0

    invoke-static {v0}, Lezq;->a(I)Lezq;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lezo;->a:Lett;

    invoke-virtual {v1}, Lett;->g()I

    move-result v1

    .line 216
    iget-object v2, p0, Lezo;->a:Lett;

    invoke-virtual {v0, v2, v1}, Lezq;->a(Lett;I)V

    goto :goto_0
.end method

.method e()V
    .locals 4

    .prologue
    .line 235
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lezo;->a:Lett;

    invoke-virtual {v1}, Lett;->f()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 236
    add-int/lit8 v1, v0, 0x1

    :goto_1
    iget-object v2, p0, Lezo;->a:Lett;

    invoke-virtual {v2}, Lett;->g()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 237
    iget-object v2, p0, Lezo;->a:Lett;

    invoke-virtual {v2, v0, v1}, Lett;->a(II)Z

    move-result v2

    iget-object v3, p0, Lezo;->a:Lett;

    invoke-virtual {v3, v1, v0}, Lett;->a(II)Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 238
    iget-object v2, p0, Lezo;->a:Lett;

    invoke-virtual {v2, v1, v0}, Lett;->d(II)V

    .line 239
    iget-object v2, p0, Lezo;->a:Lett;

    invoke-virtual {v2, v0, v1}, Lett;->d(II)V

    .line 236
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_2
    return-void
.end method
