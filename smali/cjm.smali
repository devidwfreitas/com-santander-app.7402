.class public Lcjm;
.super Lcjn;
.source "SourceFile"


# instance fields
.field protected a:Lcic;

.field protected b:Landroid/graphics/RectF;

.field protected c:[Lcez;

.field protected d:Landroid/graphics/Paint;

.field protected e:Landroid/graphics/Paint;

.field private l:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcic;Lcdq;Lclh;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p2, p3}, Lcjn;-><init>(Lcdq;Lclh;)V

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcjm;->b:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcjm;->l:Landroid/graphics/RectF;

    .line 40
    iput-object p1, p0, Lcjm;->a:Lcic;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcjm;->i:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcjm;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcjm;->i:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcjm;->i:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcjm;->d:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcjm;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcjm;->e:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcjm;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 58
    iget-object v0, p0, Lcjm;->a:Lcic;

    invoke-interface {v0}, Lcic;->f()Lcge;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcge;->d()I

    move-result v0

    new-array v0, v0, [Lcez;

    iput-object v0, p0, Lcjm;->c:[Lcez;

    .line 61
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcjm;->c:[Lcez;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 62
    invoke-virtual {v3, v1}, Lcge;->a(I)Lcio;

    move-result-object v0

    check-cast v0, Lcik;

    .line 63
    iget-object v4, p0, Lcjm;->c:[Lcez;

    new-instance v5, Lcez;

    invoke-interface {v0}, Lcik;->I()I

    move-result v2

    mul-int/lit8 v6, v2, 0x4

    invoke-interface {v0}, Lcik;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcik;->b()I

    move-result v2

    :goto_1
    mul-int/2addr v2, v6

    .line 64
    invoke-virtual {v3}, Lcge;->d()I

    move-result v6

    invoke-interface {v0}, Lcik;->c()Z

    move-result v0

    invoke-direct {v5, v2, v6, v0}, Lcez;-><init>(IIZ)V

    aput-object v5, v4, v1

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 63
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 66
    :cond_1
    return-void
.end method

.method protected a(FFFFLcle;)V
    .locals 3

    .prologue
    .line 176
    sub-float v0, p1, p4

    .line 177
    add-float v1, p1, p4

    .line 181
    iget-object v2, p0, Lcjm;->b:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, p2, v1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 183
    iget-object v0, p0, Lcjm;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcjm;->g:Lcdq;

    invoke-virtual {v1}, Lcdq;->a()F

    move-result v1

    invoke-virtual {p5, v0, v1}, Lcle;->a(Landroid/graphics/RectF;F)V

    .line 184
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcjm;->a:Lcic;

    invoke-interface {v0}, Lcic;->f()Lcge;

    move-result-object v2

    .line 73
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lcge;->d()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 75
    invoke-virtual {v2, v1}, Lcge;->a(I)Lcio;

    move-result-object v0

    check-cast v0, Lcik;

    .line 77
    invoke-interface {v0}, Lcik;->B()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {p0, p1, v0, v1}, Lcjm;->a(Landroid/graphics/Canvas;Lcik;I)V

    .line 73
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcik;I)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcjm;->a:Lcic;

    invoke-interface {p2}, Lcik;->C()Lcgc;

    move-result-object v3

    invoke-interface {v0, v3}, Lcic;->a(Lcgc;)Lcle;

    move-result-object v4

    .line 89
    iget-object v0, p0, Lcjm;->e:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcik;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcjm;->e:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcik;->f()F

    move-result v3

    invoke-static {v3}, Lclg;->a(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    invoke-interface {p2}, Lcik;->f()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v6, v1

    .line 94
    :goto_0
    iget-object v0, p0, Lcjm;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->b()F

    move-result v5

    .line 95
    iget-object v0, p0, Lcjm;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->a()F

    move-result v7

    .line 98
    iget-object v0, p0, Lcjm;->a:Lcic;

    invoke-interface {v0}, Lcic;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcjm;->d:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcik;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcjm;->a:Lcic;

    invoke-interface {v0}, Lcic;->f()Lcge;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcge;->a()F

    move-result v0

    .line 104
    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v0, v3

    .line 107
    invoke-interface {p2}, Lcik;->I()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    invoke-interface {p2}, Lcik;->I()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v3, v2

    .line 108
    :goto_1
    if-ge v3, v9, :cond_2

    .line 111
    invoke-interface {p2, v3}, Lcik;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 113
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->k()F

    move-result v0

    .line 115
    iget-object v10, p0, Lcjm;->l:Landroid/graphics/RectF;

    sub-float v11, v0, v8

    iput v11, v10, Landroid/graphics/RectF;->left:F

    .line 116
    iget-object v10, p0, Lcjm;->l:Landroid/graphics/RectF;

    add-float/2addr v0, v8

    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 118
    iget-object v0, p0, Lcjm;->l:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Lcle;->a(Landroid/graphics/RectF;)V

    .line 120
    iget-object v0, p0, Lcjm;->s:Lclh;

    iget-object v10, p0, Lcjm;->l:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v10}, Lclh;->g(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v6, v2

    .line 92
    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcjm;->s:Lclh;

    iget-object v10, p0, Lcjm;->l:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v10}, Lclh;->h(F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 134
    :cond_2
    iget-object v0, p0, Lcjm;->c:[Lcez;

    aget-object v9, v0, p3

    .line 135
    invoke-virtual {v9, v5, v7}, Lcez;->a(FF)V

    .line 136
    invoke-virtual {v9, p3}, Lcez;->c(I)V

    .line 137
    iget-object v0, p0, Lcjm;->a:Lcic;

    invoke-interface {p2}, Lcik;->C()Lcgc;

    move-result-object v3

    invoke-interface {v0, v3}, Lcic;->d(Lcgc;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcez;->a(Z)V

    .line 138
    iget-object v0, p0, Lcjm;->a:Lcic;

    invoke-interface {v0}, Lcic;->f()Lcge;

    move-result-object v0

    invoke-virtual {v0}, Lcge;->a()F

    move-result v0

    invoke-virtual {v9, v0}, Lcez;->a(F)V

    .line 140
    invoke-virtual {v9, p2}, Lcez;->a(Lcik;)V

    .line 142
    iget-object v0, v9, Lcez;->b:[F

    invoke-virtual {v4, v0}, Lcle;->a([F)V

    .line 144
    invoke-interface {p2}, Lcik;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v8, v1

    .line 146
    :goto_3
    if-eqz v8, :cond_3

    .line 147
    iget-object v0, p0, Lcjm;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcik;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    move v7, v2

    .line 150
    :goto_4
    invoke-virtual {v9}, Lcez;->b()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 152
    iget-object v0, p0, Lcjm;->s:Lclh;

    iget-object v1, v9, Lcez;->b:[F

    add-int/lit8 v2, v7, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lclh;->g(F)Z

    move-result v0

    if-nez v0, :cond_7

    .line 150
    :cond_4
    :goto_5
    add-int/lit8 v2, v7, 0x4

    move v7, v2

    goto :goto_4

    .line 126
    :cond_5
    iget-object v0, p0, Lcjm;->l:Landroid/graphics/RectF;

    iget-object v10, p0, Lcjm;->s:Lclh;

    invoke-virtual {v10}, Lclh;->f()F

    move-result v10

    iput v10, v0, Landroid/graphics/RectF;->top:F

    .line 127
    iget-object v0, p0, Lcjm;->l:Landroid/graphics/RectF;

    iget-object v10, p0, Lcjm;->s:Lclh;

    invoke-virtual {v10}, Lclh;->i()F

    move-result v10

    iput v10, v0, Landroid/graphics/RectF;->bottom:F

    .line 129
    iget-object v0, p0, Lcjm;->l:Landroid/graphics/RectF;

    iget-object v10, p0, Lcjm;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_6
    move v8, v2

    .line 144
    goto :goto_3

    .line 155
    :cond_7
    iget-object v0, p0, Lcjm;->s:Lclh;

    iget-object v1, v9, Lcez;->b:[F

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Lclh;->h(F)Z

    move-result v0

    if-nez v0, :cond_9

    .line 172
    :cond_8
    return-void

    .line 158
    :cond_9
    if-nez v8, :cond_a

    .line 161
    iget-object v0, p0, Lcjm;->h:Landroid/graphics/Paint;

    div-int/lit8 v1, v7, 0x4

    invoke-interface {p2, v1}, Lcik;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    :cond_a
    iget-object v0, v9, Lcez;->b:[F

    aget v1, v0, v7

    iget-object v0, v9, Lcez;->b:[F

    add-int/lit8 v2, v7, 0x1

    aget v2, v0, v2

    iget-object v0, v9, Lcez;->b:[F

    add-int/lit8 v3, v7, 0x2

    aget v3, v0, v3

    iget-object v0, v9, Lcez;->b:[F

    add-int/lit8 v4, v7, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcjm;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
    if-eqz v6, :cond_4

    .line 168
    iget-object v0, v9, Lcez;->b:[F

    aget v1, v0, v7

    iget-object v0, v9, Lcez;->b:[F

    add-int/lit8 v2, v7, 0x1

    aget v2, v0, v2

    iget-object v0, v9, Lcez;->b:[F

    add-int/lit8 v3, v7, 0x2

    aget v3, v0, v3

    iget-object v0, v9, Lcez;->b:[F

    add-int/lit8 v4, v7, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcjm;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method public a(Landroid/graphics/Canvas;[Lchv;)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 342
    iget-object v0, p0, Lcjm;->a:Lcic;

    invoke-interface {v0}, Lcic;->f()Lcge;

    move-result-object v8

    .line 344
    array-length v9, p2

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_5

    aget-object v10, p2, v7

    .line 346
    invoke-virtual {v10}, Lchv;->f()I

    move-result v0

    invoke-virtual {v8, v0}, Lcge;->a(I)Lcio;

    move-result-object v0

    check-cast v0, Lcik;

    .line 348
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcik;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    :cond_0
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v10}, Lchv;->a()F

    move-result v1

    invoke-virtual {v10}, Lchv;->b()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcik;->b(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    .line 353
    invoke-virtual {p0, v1, v0}, Lcjm;->a(Lcom/github/mikephil/charting/data/Entry;Lcil;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, p0, Lcjm;->a:Lcic;

    invoke-interface {v0}, Lcik;->C()Lcgc;

    move-result-object v3

    invoke-interface {v2, v3}, Lcic;->a(Lcgc;)Lcle;

    move-result-object v5

    .line 358
    iget-object v2, p0, Lcjm;->i:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcik;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-object v2, p0, Lcjm;->i:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcik;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 361
    invoke-virtual {v10}, Lchv;->g()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 366
    :goto_2
    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcjm;->a:Lcic;

    invoke-interface {v0}, Lcic;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->f()F

    move-result v2

    .line 371
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->g()F

    move-result v0

    neg-float v3, v0

    .line 386
    :goto_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->k()F

    move-result v1

    invoke-virtual {v8}, Lcge;->a()F

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcjm;->a(FFFFLcle;)V

    .line 388
    iget-object v0, p0, Lcjm;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v10, v0}, Lcjm;->a(Lchv;Landroid/graphics/RectF;)V

    .line 390
    iget-object v0, p0, Lcjm;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcjm;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    move v0, v6

    .line 361
    goto :goto_2

    .line 375
    :cond_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->d()[Lcib;

    move-result-object v0

    invoke-virtual {v10}, Lchv;->g()I

    move-result v2

    aget-object v0, v0, v2

    .line 377
    iget v2, v0, Lcib;->a:F

    .line 378
    iget v3, v0, Lcib;->b:F

    goto :goto_3

    .line 382
    :cond_4
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v2

    .line 383
    const/4 v3, 0x0

    goto :goto_3

    .line 392
    :cond_5
    return-void
.end method

.method protected a(Lchv;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Lchv;->a(FF)V

    .line 400
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 28

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->a:Lcic;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcjm;->a(Lcig;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->a:Lcic;

    invoke-interface {v2}, Lcic;->f()Lcge;

    move-result-object v2

    invoke-virtual {v2}, Lcge;->i()Ljava/util/List;

    move-result-object v19

    .line 194
    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Lclg;->a(F)F

    move-result v20

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->a:Lcic;

    invoke-interface {v2}, Lcic;->f_()Z

    move-result v21

    .line 199
    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->a:Lcic;

    invoke-interface {v2}, Lcic;->f()Lcge;

    move-result-object v2

    invoke-virtual {v2}, Lcge;->d()I

    move-result v2

    if-ge v7, v2, :cond_17

    .line 201
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcik;

    .line 203
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcjm;->a(Lcio;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 207
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcjm;->b(Lcio;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->a:Lcic;

    invoke-interface {v11}, Lcik;->C()Lcgc;

    move-result-object v3

    invoke-interface {v2, v3}, Lcic;->d(Lcgc;)Z

    move-result v4

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->k:Landroid/graphics/Paint;

    const-string v3, "8"

    invoke-static {v2, v3}, Lclg;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v5, v2

    .line 214
    if-eqz v21, :cond_3

    move/from16 v0, v20

    neg-float v3, v0

    .line 215
    :goto_1
    if-eqz v21, :cond_4

    add-float v2, v5, v20

    .line 217
    :goto_2
    if-eqz v4, :cond_18

    .line 218
    neg-float v3, v3

    sub-float/2addr v3, v5

    .line 219
    neg-float v2, v2

    sub-float/2addr v2, v5

    move v12, v2

    move v13, v3

    .line 223
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->c:[Lcez;

    aget-object v22, v2, v7

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->a()F

    move-result v23

    .line 228
    invoke-interface {v11}, Lcik;->c()Z

    move-result v2

    if-nez v2, :cond_7

    .line 230
    const/4 v2, 0x0

    move v14, v2

    :goto_4
    int-to-float v2, v14

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    array-length v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcjm;->g:Lcdq;

    invoke-virtual {v4}, Lcdq;->b()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 232
    move-object/from16 v0, v22

    iget-object v2, v0, Lcez;->b:[F

    aget v2, v2, v14

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    add-int/lit8 v4, v14, 0x2

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->s:Lclh;

    invoke-virtual {v2, v8}, Lclh;->h(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->s:Lclh;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    add-int/lit8 v4, v14, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lclh;->f(F)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->s:Lclh;

    .line 238
    invoke-virtual {v2, v8}, Lclh;->g(F)Z

    move-result v2

    if-nez v2, :cond_5

    .line 230
    :cond_2
    :goto_5
    add-int/lit8 v2, v14, 0x4

    move v14, v2

    goto :goto_4

    .line 214
    :cond_3
    add-float v3, v5, v20

    goto :goto_1

    .line 215
    :cond_4
    move/from16 v0, v20

    neg-float v2, v0

    goto :goto_2

    .line 241
    :cond_5
    div-int/lit8 v2, v14, 0x4

    invoke-interface {v11, v2}, Lcik;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    .line 242
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v5

    .line 244
    invoke-interface {v11}, Lcik;->r()Lchn;

    move-result-object v4

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_6

    move-object/from16 v0, v22

    iget-object v2, v0, Lcez;->b:[F

    add-int/lit8 v3, v14, 0x1

    aget v2, v2, v3

    add-float v9, v2, v13

    :goto_6
    div-int/lit8 v2, v14, 0x4

    .line 246
    invoke-interface {v11, v2}, Lcik;->i(I)I

    move-result v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 244
    invoke-virtual/range {v2 .. v10}, Lcjm;->a(Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_5

    :cond_6
    move-object/from16 v0, v22

    iget-object v2, v0, Lcez;->b:[F

    add-int/lit8 v3, v14, 0x3

    aget v2, v2, v3

    add-float v9, v2, v12

    goto :goto_6

    .line 252
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->a:Lcic;

    invoke-interface {v11}, Lcik;->C()Lcgc;

    move-result-object v3

    invoke-interface {v2, v3}, Lcic;->a(Lcgc;)Lcle;

    move-result-object v24

    .line 254
    const/4 v3, 0x0

    .line 255
    const/4 v2, 0x0

    move v14, v2

    move v15, v3

    .line 257
    :cond_8
    :goto_7
    int-to-float v2, v14

    invoke-interface {v11}, Lcik;->I()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcjm;->g:Lcdq;

    invoke-virtual {v4}, Lcdq;->b()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 259
    invoke-interface {v11, v14}, Lcik;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    .line 261
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->b()[F

    move-result-object v25

    .line 262
    move-object/from16 v0, v22

    iget-object v2, v0, Lcez;->b:[F

    aget v2, v2, v15

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    add-int/lit8 v4, v15, 0x2

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 264
    invoke-interface {v11, v14}, Lcik;->i(I)I

    move-result v10

    .line 269
    if-nez v25, :cond_b

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->s:Lclh;

    invoke-virtual {v2, v8}, Lclh;->h(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->s:Lclh;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    add-int/lit8 v4, v15, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lclh;->f(F)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->s:Lclh;

    .line 275
    invoke-virtual {v2, v8}, Lclh;->g(F)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 278
    invoke-interface {v11}, Lcik;->r()Lchn;

    move-result-object v4

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v5

    move-object/from16 v0, v22

    iget-object v2, v0, Lcez;->b:[F

    add-int/lit8 v3, v15, 0x1

    aget v3, v2, v3

    .line 279
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v2

    const/4 v9, 0x0

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_a

    move v2, v13

    :goto_8
    add-float v9, v3, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 278
    invoke-virtual/range {v2 .. v10}, Lcjm;->a(Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 331
    :cond_9
    if-nez v25, :cond_16

    add-int/lit8 v3, v15, 0x4

    .line 332
    :goto_9
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v15, v3

    .line 333
    goto/16 :goto_7

    :cond_a
    move v2, v12

    .line 279
    goto :goto_8

    .line 285
    :cond_b
    move-object/from16 v0, v25

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v26, v0

    .line 287
    const/4 v5, 0x0

    .line 288
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->g()F

    move-result v2

    neg-float v4, v2

    .line 290
    const/4 v3, 0x0

    const/4 v2, 0x0

    move/from16 v16, v4

    move/from16 v17, v5

    :goto_a
    move-object/from16 v0, v26

    array-length v4, v0

    if-ge v3, v4, :cond_f

    .line 292
    aget v4, v25, v2

    .line 295
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_d

    const/4 v5, 0x0

    cmpl-float v5, v17, v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    cmpl-float v5, v16, v5

    if-nez v5, :cond_d

    :cond_c
    move/from16 v5, v17

    move/from16 v27, v16

    move/from16 v16, v4

    move/from16 v4, v27

    .line 306
    :goto_b
    add-int/lit8 v9, v3, 0x1

    mul-float v16, v16, v23

    aput v16, v26, v9

    .line 290
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v4

    move/from16 v17, v5

    goto :goto_a

    .line 298
    :cond_d
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_e

    .line 299
    add-float v4, v4, v17

    move v5, v4

    move/from16 v27, v16

    move/from16 v16, v4

    move/from16 v4, v27

    .line 300
    goto :goto_b

    .line 303
    :cond_e
    sub-float v4, v16, v4

    move/from16 v5, v17

    goto :goto_b

    .line 309
    :cond_f
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcle;->a([F)V

    .line 311
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_c
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    .line 313
    div-int/lit8 v2, v18, 0x2

    aget v2, v25, v2

    .line 314
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_10

    const/4 v3, 0x0

    cmpl-float v3, v16, v3

    if-nez v3, :cond_10

    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-gtz v3, :cond_11

    :cond_10
    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_13

    :cond_11
    const/4 v2, 0x1

    .line 317
    :goto_d
    add-int/lit8 v3, v18, 0x1

    aget v3, v26, v3

    if-eqz v2, :cond_14

    move v2, v12

    :goto_e
    add-float v9, v3, v2

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->s:Lclh;

    invoke-virtual {v2, v8}, Lclh;->h(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->s:Lclh;

    invoke-virtual {v2, v9}, Lclh;->f(F)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcjm;->s:Lclh;

    .line 324
    invoke-virtual {v2, v8}, Lclh;->g(F)Z

    move-result v2

    if-nez v2, :cond_15

    .line 311
    :cond_12
    :goto_f
    add-int/lit8 v2, v18, 0x2

    move/from16 v18, v2

    goto :goto_c

    .line 314
    :cond_13
    const/4 v2, 0x0

    goto :goto_d

    :cond_14
    move v2, v13

    .line 317
    goto :goto_e

    .line 327
    :cond_15
    invoke-interface {v11}, Lcik;->r()Lchn;

    move-result-object v4

    div-int/lit8 v2, v18, 0x2

    aget v5, v25, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcjm;->a(Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_f

    .line 331
    :cond_16
    move-object/from16 v0, v25

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    add-int v3, v15, v2

    goto/16 :goto_9

    .line 337
    :cond_17
    return-void

    :cond_18
    move v12, v2

    move v13, v3

    goto/16 :goto_3
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 404
    return-void
.end method
