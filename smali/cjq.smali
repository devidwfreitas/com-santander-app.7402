.class public Lcjq;
.super Lckb;
.source "SourceFile"


# instance fields
.field protected a:Lcif;

.field private b:[F

.field private c:[F

.field private d:[F

.field private e:[F

.field private l:[F


# direct methods
.method public constructor <init>(Lcif;Lcdq;Lclh;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 33
    invoke-direct {p0, p2, p3}, Lckb;-><init>(Lcdq;Lclh;)V

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcjq;->b:[F

    .line 26
    new-array v0, v1, [F

    iput-object v0, p0, Lcjq;->c:[F

    .line 27
    new-array v0, v1, [F

    iput-object v0, p0, Lcjq;->d:[F

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lcjq;->e:[F

    .line 29
    new-array v0, v1, [F

    iput-object v0, p0, Lcjq;->l:[F

    .line 34
    iput-object p1, p0, Lcjq;->a:Lcif;

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcjq;->a:Lcif;

    invoke-interface {v0}, Lcif;->e_()Lcgm;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcgm;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcin;

    .line 49
    invoke-interface {v0}, Lcin;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {p0, p1, v0}, Lcjq;->a(Landroid/graphics/Canvas;Lcin;)V

    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcin;)V
    .locals 12

    .prologue
    .line 57
    iget-object v0, p0, Lcjq;->a:Lcif;

    invoke-interface {p2}, Lcin;->C()Lcgc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcif;->a(Lcgc;)Lcle;

    move-result-object v7

    .line 59
    iget-object v0, p0, Lcjq;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->a()F

    move-result v8

    .line 60
    invoke-interface {p2}, Lcin;->b()F

    move-result v9

    .line 61
    invoke-interface {p2}, Lcin;->d()Z

    move-result v10

    .line 63
    iget-object v0, p0, Lcjq;->f:Lcjo;

    iget-object v1, p0, Lcjq;->a:Lcif;

    invoke-virtual {v0, v1, p2}, Lcjo;->a(Lcid;Lcil;)V

    .line 65
    iget-object v0, p0, Lcjq;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcin;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    iget-object v0, p0, Lcjq;->f:Lcjo;

    iget v0, v0, Lcjo;->a:I

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcjq;->f:Lcjo;

    iget v0, v0, Lcjo;->c:I

    iget-object v1, p0, Lcjq;->f:Lcjo;

    iget v1, v1, Lcjo;->a:I

    add-int/2addr v0, v1

    if-gt v6, v0, :cond_15

    .line 71
    invoke-interface {p2, v6}, Lcin;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 73
    if-nez v0, :cond_0

    .line 68
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->k()F

    move-result v1

    .line 78
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->h()F

    move-result v2

    .line 79
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->g()F

    move-result v3

    .line 80
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->e()F

    move-result v4

    .line 81
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->f()F

    move-result v0

    .line 83
    if-eqz v10, :cond_f

    .line 86
    iget-object v5, p0, Lcjq;->b:[F

    const/4 v11, 0x0

    aput v1, v5, v11

    .line 87
    iget-object v5, p0, Lcjq;->b:[F

    const/4 v11, 0x2

    aput v1, v5, v11

    .line 88
    iget-object v5, p0, Lcjq;->b:[F

    const/4 v11, 0x4

    aput v1, v5, v11

    .line 89
    iget-object v5, p0, Lcjq;->b:[F

    const/4 v11, 0x6

    aput v1, v5, v11

    .line 91
    cmpl-float v5, v2, v3

    if-lez v5, :cond_1

    .line 92
    iget-object v5, p0, Lcjq;->b:[F

    const/4 v11, 0x1

    mul-float/2addr v4, v8

    aput v4, v5, v11

    .line 93
    iget-object v4, p0, Lcjq;->b:[F

    const/4 v5, 0x3

    mul-float v11, v2, v8

    aput v11, v4, v5

    .line 94
    iget-object v4, p0, Lcjq;->b:[F

    const/4 v5, 0x5

    mul-float/2addr v0, v8

    aput v0, v4, v5

    .line 95
    iget-object v0, p0, Lcjq;->b:[F

    const/4 v4, 0x7

    mul-float v5, v3, v8

    aput v5, v0, v4

    .line 108
    :goto_2
    iget-object v0, p0, Lcjq;->b:[F

    invoke-virtual {v7, v0}, Lcle;->a([F)V

    .line 112
    invoke-interface {p2}, Lcin;->G()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    cmpl-float v0, v2, v3

    if-lez v0, :cond_4

    .line 115
    iget-object v4, p0, Lcjq;->h:Landroid/graphics/Paint;

    .line 116
    invoke-interface {p2}, Lcin;->g()I

    move-result v0

    const v5, 0x112233

    if-ne v0, v5, :cond_3

    .line 117
    invoke-interface {p2, v6}, Lcin;->e(I)I

    move-result v0

    .line 115
    :goto_3
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    :goto_4
    iget-object v0, p0, Lcjq;->h:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v0, p0, Lcjq;->b:[F

    iget-object v4, p0, Lcjq;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 149
    iget-object v0, p0, Lcjq;->c:[F

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v5, v1, v5

    add-float/2addr v5, v9

    aput v5, v0, v4

    .line 150
    iget-object v0, p0, Lcjq;->c:[F

    const/4 v4, 0x1

    mul-float v5, v3, v8

    aput v5, v0, v4

    .line 151
    iget-object v0, p0, Lcjq;->c:[F

    const/4 v4, 0x2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    sub-float/2addr v1, v9

    aput v1, v0, v4

    .line 152
    iget-object v0, p0, Lcjq;->c:[F

    const/4 v1, 0x3

    mul-float v4, v2, v8

    aput v4, v0, v1

    .line 154
    iget-object v0, p0, Lcjq;->c:[F

    invoke-virtual {v7, v0}, Lcle;->a([F)V

    .line 157
    cmpl-float v0, v2, v3

    if-lez v0, :cond_b

    .line 159
    invoke-interface {p2}, Lcin;->g()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_a

    .line 160
    iget-object v0, p0, Lcjq;->h:Landroid/graphics/Paint;

    invoke-interface {p2, v6}, Lcin;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    :goto_5
    iget-object v0, p0, Lcjq;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcin;->i()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object v0, p0, Lcjq;->c:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcjq;->c:[F

    const/4 v2, 0x3

    aget v2, v0, v2

    iget-object v0, p0, Lcjq;->c:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcjq;->c:[F

    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v5, p0, Lcjq;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 96
    :cond_1
    cmpg-float v5, v2, v3

    if-gez v5, :cond_2

    .line 97
    iget-object v5, p0, Lcjq;->b:[F

    const/4 v11, 0x1

    mul-float/2addr v4, v8

    aput v4, v5, v11

    .line 98
    iget-object v4, p0, Lcjq;->b:[F

    const/4 v5, 0x3

    mul-float v11, v3, v8

    aput v11, v4, v5

    .line 99
    iget-object v4, p0, Lcjq;->b:[F

    const/4 v5, 0x5

    mul-float/2addr v0, v8

    aput v0, v4, v5

    .line 100
    iget-object v0, p0, Lcjq;->b:[F

    const/4 v4, 0x7

    mul-float v5, v2, v8

    aput v5, v0, v4

    goto/16 :goto_2

    .line 102
    :cond_2
    iget-object v5, p0, Lcjq;->b:[F

    const/4 v11, 0x1

    mul-float/2addr v4, v8

    aput v4, v5, v11

    .line 103
    iget-object v4, p0, Lcjq;->b:[F

    const/4 v5, 0x3

    mul-float v11, v2, v8

    aput v11, v4, v5

    .line 104
    iget-object v4, p0, Lcjq;->b:[F

    const/4 v5, 0x5

    mul-float/2addr v0, v8

    aput v0, v4, v5

    .line 105
    iget-object v0, p0, Lcjq;->b:[F

    const/4 v4, 0x7

    iget-object v5, p0, Lcjq;->b:[F

    const/4 v11, 0x3

    aget v5, v5, v11

    aput v5, v0, v4

    goto/16 :goto_2

    .line 118
    :cond_3
    invoke-interface {p2}, Lcin;->g()I

    move-result v0

    goto/16 :goto_3

    .line 121
    :cond_4
    cmpg-float v0, v2, v3

    if-gez v0, :cond_6

    .line 122
    iget-object v4, p0, Lcjq;->h:Landroid/graphics/Paint;

    .line 123
    invoke-interface {p2}, Lcin;->f()I

    move-result v0

    const v5, 0x112233

    if-ne v0, v5, :cond_5

    .line 124
    invoke-interface {p2, v6}, Lcin;->e(I)I

    move-result v0

    .line 122
    :goto_6
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 125
    :cond_5
    invoke-interface {p2}, Lcin;->f()I

    move-result v0

    goto :goto_6

    .line 129
    :cond_6
    iget-object v4, p0, Lcjq;->h:Landroid/graphics/Paint;

    .line 130
    invoke-interface {p2}, Lcin;->e()I

    move-result v0

    const v5, 0x112233

    if-ne v0, v5, :cond_7

    .line 131
    invoke-interface {p2, v6}, Lcin;->e(I)I

    move-result v0

    .line 129
    :goto_7
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 132
    :cond_7
    invoke-interface {p2}, Lcin;->e()I

    move-result v0

    goto :goto_7

    .line 136
    :cond_8
    iget-object v4, p0, Lcjq;->h:Landroid/graphics/Paint;

    .line 137
    invoke-interface {p2}, Lcin;->F()I

    move-result v0

    const v5, 0x112233

    if-ne v0, v5, :cond_9

    .line 138
    invoke-interface {p2, v6}, Lcin;->e(I)I

    move-result v0

    .line 136
    :goto_8
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 139
    :cond_9
    invoke-interface {p2}, Lcin;->F()I

    move-result v0

    goto :goto_8

    .line 162
    :cond_a
    iget-object v0, p0, Lcjq;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcin;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    .line 172
    :cond_b
    cmpg-float v0, v2, v3

    if-gez v0, :cond_d

    .line 174
    invoke-interface {p2}, Lcin;->f()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_c

    .line 175
    iget-object v0, p0, Lcjq;->h:Landroid/graphics/Paint;

    invoke-interface {p2, v6}, Lcin;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    :goto_9
    iget-object v0, p0, Lcjq;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcin;->h()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget-object v0, p0, Lcjq;->c:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcjq;->c:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcjq;->c:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcjq;->c:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcjq;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 177
    :cond_c
    iget-object v0, p0, Lcjq;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcin;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 188
    :cond_d
    invoke-interface {p2}, Lcin;->e()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_e

    .line 189
    iget-object v0, p0, Lcjq;->h:Landroid/graphics/Paint;

    invoke-interface {p2, v6}, Lcin;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    :goto_a
    iget-object v0, p0, Lcjq;->c:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcjq;->c:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcjq;->c:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcjq;->c:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcjq;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 191
    :cond_e
    iget-object v0, p0, Lcjq;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcin;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    .line 201
    :cond_f
    iget-object v5, p0, Lcjq;->d:[F

    const/4 v11, 0x0

    aput v1, v5, v11

    .line 202
    iget-object v5, p0, Lcjq;->d:[F

    const/4 v11, 0x1

    mul-float/2addr v4, v8

    aput v4, v5, v11

    .line 203
    iget-object v4, p0, Lcjq;->d:[F

    const/4 v5, 0x2

    aput v1, v4, v5

    .line 204
    iget-object v4, p0, Lcjq;->d:[F

    const/4 v5, 0x3

    mul-float/2addr v0, v8

    aput v0, v4, v5

    .line 206
    iget-object v0, p0, Lcjq;->e:[F

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v5, v1, v5

    add-float/2addr v5, v9

    aput v5, v0, v4

    .line 207
    iget-object v0, p0, Lcjq;->e:[F

    const/4 v4, 0x1

    mul-float v5, v2, v8

    aput v5, v0, v4

    .line 208
    iget-object v0, p0, Lcjq;->e:[F

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 209
    iget-object v0, p0, Lcjq;->e:[F

    const/4 v4, 0x3

    mul-float v5, v2, v8

    aput v5, v0, v4

    .line 211
    iget-object v0, p0, Lcjq;->l:[F

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v5, v1

    sub-float/2addr v5, v9

    aput v5, v0, v4

    .line 212
    iget-object v0, p0, Lcjq;->l:[F

    const/4 v4, 0x1

    mul-float v5, v3, v8

    aput v5, v0, v4

    .line 213
    iget-object v0, p0, Lcjq;->l:[F

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 214
    iget-object v0, p0, Lcjq;->l:[F

    const/4 v1, 0x3

    mul-float v4, v3, v8

    aput v4, v0, v1

    .line 216
    iget-object v0, p0, Lcjq;->d:[F

    invoke-virtual {v7, v0}, Lcle;->a([F)V

    .line 217
    iget-object v0, p0, Lcjq;->e:[F

    invoke-virtual {v7, v0}, Lcle;->a([F)V

    .line 218
    iget-object v0, p0, Lcjq;->l:[F

    invoke-virtual {v7, v0}, Lcle;->a([F)V

    .line 223
    cmpl-float v0, v2, v3

    if-lez v0, :cond_11

    .line 224
    invoke-interface {p2}, Lcin;->g()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_10

    .line 225
    invoke-interface {p2, v6}, Lcin;->e(I)I

    move-result v0

    .line 236
    :goto_b
    iget-object v1, p0, Lcjq;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v0, p0, Lcjq;->d:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcjq;->d:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcjq;->d:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcjq;->d:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcjq;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 241
    iget-object v0, p0, Lcjq;->e:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcjq;->e:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcjq;->e:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcjq;->e:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcjq;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 245
    iget-object v0, p0, Lcjq;->l:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v0, p0, Lcjq;->l:[F

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcjq;->l:[F

    const/4 v3, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcjq;->l:[F

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcjq;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 226
    :cond_10
    invoke-interface {p2}, Lcin;->g()I

    move-result v0

    goto :goto_b

    .line 227
    :cond_11
    cmpg-float v0, v2, v3

    if-gez v0, :cond_13

    .line 228
    invoke-interface {p2}, Lcin;->f()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_12

    .line 229
    invoke-interface {p2, v6}, Lcin;->e(I)I

    move-result v0

    goto :goto_b

    .line 230
    :cond_12
    invoke-interface {p2}, Lcin;->f()I

    move-result v0

    goto :goto_b

    .line 232
    :cond_13
    invoke-interface {p2}, Lcin;->e()I

    move-result v0

    const v1, 0x112233

    if-ne v0, v1, :cond_14

    .line 233
    invoke-interface {p2, v6}, Lcin;->e(I)I

    move-result v0

    goto :goto_b

    .line 234
    :cond_14
    invoke-interface {p2}, Lcin;->e()I

    move-result v0

    goto/16 :goto_b

    .line 251
    :cond_15
    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lchv;)V
    .locals 10

    .prologue
    .line 307
    iget-object v0, p0, Lcjq;->a:Lcif;

    invoke-interface {v0}, Lcif;->e_()Lcgm;

    move-result-object v3

    .line 309
    array-length v4, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, p2, v2

    .line 311
    invoke-virtual {v5}, Lchv;->f()I

    move-result v0

    invoke-virtual {v3, v0}, Lcgm;->a(I)Lcio;

    move-result-object v0

    check-cast v0, Lcin;

    .line 313
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcin;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {v5}, Lchv;->a()F

    move-result v1

    invoke-virtual {v5}, Lchv;->b()F

    move-result v6

    invoke-interface {v0, v1, v6}, Lcin;->b(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 318
    invoke-virtual {p0, v1, v0}, Lcjq;->a(Lcom/github/mikephil/charting/data/Entry;Lcil;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 321
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleEntry;->f()F

    move-result v6

    iget-object v7, p0, Lcjq;->g:Lcdq;

    invoke-virtual {v7}, Lcdq;->a()F

    move-result v7

    mul-float/2addr v6, v7

    .line 322
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleEntry;->e()F

    move-result v7

    iget-object v8, p0, Lcjq;->g:Lcdq;

    invoke-virtual {v8}, Lcdq;->a()F

    move-result v8

    mul-float/2addr v7, v8

    .line 323
    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 325
    iget-object v7, p0, Lcjq;->a:Lcif;

    invoke-interface {v0}, Lcin;->C()Lcgc;

    move-result-object v8

    invoke-interface {v7, v8}, Lcif;->a(Lcgc;)Lcle;

    move-result-object v7

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/CandleEntry;->k()F

    move-result v1

    invoke-virtual {v7, v1, v6}, Lcle;->b(FF)Lckz;

    move-result-object v1

    .line 327
    iget-wide v6, v1, Lckz;->a:D

    double-to-float v6, v6

    iget-wide v8, v1, Lckz;->b:D

    double-to-float v7, v8

    invoke-virtual {v5, v6, v7}, Lchv;->a(FF)V

    .line 330
    iget-wide v6, v1, Lckz;->a:D

    double-to-float v5, v6

    iget-wide v6, v1, Lckz;->b:D

    double-to-float v1, v6

    invoke-virtual {p0, p1, v5, v1, v0}, Lcjq;->a(Landroid/graphics/Canvas;FFLcir;)V

    goto :goto_1

    .line 332
    :cond_2
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 257
    iget-object v0, p0, Lcjq;->a:Lcif;

    invoke-virtual {p0, v0}, Lcjq;->a(Lcig;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    iget-object v0, p0, Lcjq;->a:Lcif;

    invoke-interface {v0}, Lcif;->e_()Lcgm;

    move-result-object v0

    invoke-virtual {v0}, Lcgm;->i()Ljava/util/List;

    move-result-object v11

    .line 261
    const/4 v7, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 263
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcin;

    .line 265
    invoke-virtual {p0, v1}, Lcjq;->a(Lcio;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p0, v1}, Lcjq;->b(Lcio;)V

    .line 271
    iget-object v0, p0, Lcjq;->a:Lcif;

    invoke-interface {v1}, Lcin;->C()Lcgc;

    move-result-object v2

    invoke-interface {v0, v2}, Lcif;->a(Lcgc;)Lcle;

    move-result-object v0

    .line 273
    iget-object v2, p0, Lcjq;->f:Lcjo;

    iget-object v3, p0, Lcjq;->a:Lcif;

    invoke-virtual {v2, v3, v1}, Lcjo;->a(Lcid;Lcil;)V

    .line 275
    iget-object v2, p0, Lcjq;->g:Lcdq;

    .line 276
    invoke-virtual {v2}, Lcdq;->b()F

    move-result v2

    iget-object v3, p0, Lcjq;->g:Lcdq;

    invoke-virtual {v3}, Lcdq;->a()F

    move-result v3

    iget-object v4, p0, Lcjq;->f:Lcjo;

    iget v4, v4, Lcjo;->a:I

    iget-object v5, p0, Lcjq;->f:Lcjo;

    iget v5, v5, Lcjo;->b:I

    .line 275
    invoke-virtual/range {v0 .. v5}, Lcle;->a(Lcin;FFII)[F

    move-result-object v12

    .line 278
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lclg;->a(F)F

    move-result v13

    .line 280
    const/4 v0, 0x0

    :goto_1
    array-length v2, v12

    if-ge v0, v2, :cond_0

    .line 282
    aget v8, v12, v0

    .line 283
    add-int/lit8 v2, v0, 0x1

    aget v2, v12, v2

    .line 285
    iget-object v3, p0, Lcjq;->s:Lclh;

    invoke-virtual {v3, v8}, Lclh;->h(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    iget-object v3, p0, Lcjq;->s:Lclh;

    invoke-virtual {v3, v8}, Lclh;->g(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcjq;->s:Lclh;

    invoke-virtual {v3, v2}, Lclh;->f(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 280
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 291
    :cond_3
    div-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcjq;->f:Lcjo;

    iget v4, v4, Lcjo;->a:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Lcin;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 293
    invoke-interface {v1}, Lcin;->r()Lchn;

    move-result-object v4

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/CandleEntry;->e()F

    move-result v5

    sub-float v9, v2, v13

    div-int/lit8 v2, v0, 0x2

    .line 294
    invoke-interface {v1, v2}, Lcin;->i(I)I

    move-result v10

    move-object v2, p0

    move-object v3, p1

    .line 293
    invoke-virtual/range {v2 .. v10}, Lcjq;->a(Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_2

    .line 298
    :cond_4
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method
