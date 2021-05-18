.class public Lcju;
.super Lcjm;
.source "SourceFile"


# instance fields
.field private l:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcic;Lcdq;Lclh;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcjm;-><init>(Lcic;Lcdq;Lclh;)V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcju;->l:Landroid/graphics/RectF;

    .line 35
    iget-object v0, p0, Lcju;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 41
    iget-object v0, p0, Lcju;->a:Lcic;

    invoke-interface {v0}, Lcic;->f()Lcge;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcge;->d()I

    move-result v0

    new-array v0, v0, [Lcfa;

    iput-object v0, p0, Lcju;->c:[Lcez;

    .line 44
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcju;->c:[Lcez;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 45
    invoke-virtual {v3, v1}, Lcge;->a(I)Lcio;

    move-result-object v0

    check-cast v0, Lcik;

    .line 46
    iget-object v4, p0, Lcju;->c:[Lcez;

    new-instance v5, Lcfa;

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

    .line 47
    invoke-virtual {v3}, Lcge;->d()I

    move-result v6

    invoke-interface {v0}, Lcik;->c()Z

    move-result v0

    invoke-direct {v5, v2, v6, v0}, Lcfa;-><init>(IIZ)V

    aput-object v5, v4, v1

    .line 44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 49
    :cond_1
    return-void
.end method

.method protected a(FFFFLcle;)V
    .locals 3

    .prologue
    .line 335
    sub-float v0, p1, p4

    .line 336
    add-float v1, p1, p4

    .line 340
    iget-object v2, p0, Lcju;->b:Landroid/graphics/RectF;

    invoke-virtual {v2, p2, v0, p3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 342
    iget-object v0, p0, Lcju;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcju;->g:Lcdq;

    invoke-virtual {v1}, Lcdq;->a()F

    move-result v1

    invoke-virtual {p5, v0, v1}, Lcle;->b(Landroid/graphics/RectF;F)V

    .line 343
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcik;I)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcju;->a:Lcic;

    invoke-interface {p2}, Lcik;->C()Lcgc;

    move-result-object v3

    invoke-interface {v0, v3}, Lcic;->a(Lcgc;)Lcle;

    move-result-object v4

    .line 58
    iget-object v0, p0, Lcju;->e:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcik;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcju;->e:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcik;->f()F

    move-result v3

    invoke-static {v3}, Lclg;->a(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    invoke-interface {p2}, Lcik;->f()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v6, v1

    .line 63
    :goto_0
    iget-object v0, p0, Lcju;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->b()F

    move-result v5

    .line 64
    iget-object v0, p0, Lcju;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->a()F

    move-result v7

    .line 67
    iget-object v0, p0, Lcju;->a:Lcic;

    invoke-interface {v0}, Lcic;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcju;->d:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcik;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcju;->a:Lcic;

    invoke-interface {v0}, Lcic;->f()Lcge;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcge;->a()F

    move-result v0

    .line 73
    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v0, v3

    .line 76
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

    .line 77
    :goto_1
    if-ge v3, v9, :cond_2

    .line 80
    invoke-interface {p2, v3}, Lcik;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 82
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->k()F

    move-result v0

    .line 84
    iget-object v10, p0, Lcju;->l:Landroid/graphics/RectF;

    sub-float v11, v0, v8

    iput v11, v10, Landroid/graphics/RectF;->top:F

    .line 85
    iget-object v10, p0, Lcju;->l:Landroid/graphics/RectF;

    add-float/2addr v0, v8

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 87
    iget-object v0, p0, Lcju;->l:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Lcle;->a(Landroid/graphics/RectF;)V

    .line 89
    iget-object v0, p0, Lcju;->s:Lclh;

    iget-object v10, p0, Lcju;->l:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v10}, Lclh;->i(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v6, v2

    .line 61
    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcju;->s:Lclh;

    iget-object v10, p0, Lcju;->l:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v10}, Lclh;->j(F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 103
    :cond_2
    iget-object v0, p0, Lcju;->c:[Lcez;

    aget-object v9, v0, p3

    .line 104
    invoke-virtual {v9, v5, v7}, Lcez;->a(FF)V

    .line 105
    invoke-virtual {v9, p3}, Lcez;->c(I)V

    .line 106
    iget-object v0, p0, Lcju;->a:Lcic;

    invoke-interface {p2}, Lcik;->C()Lcgc;

    move-result-object v3

    invoke-interface {v0, v3}, Lcic;->d(Lcgc;)Z

    move-result v0

    invoke-virtual {v9, v0}, Lcez;->a(Z)V

    .line 107
    iget-object v0, p0, Lcju;->a:Lcic;

    invoke-interface {v0}, Lcic;->f()Lcge;

    move-result-object v0

    invoke-virtual {v0}, Lcge;->a()F

    move-result v0

    invoke-virtual {v9, v0}, Lcez;->a(F)V

    .line 109
    invoke-virtual {v9, p2}, Lcez;->a(Lcik;)V

    .line 111
    iget-object v0, v9, Lcez;->b:[F

    invoke-virtual {v4, v0}, Lcle;->a([F)V

    .line 113
    invoke-interface {p2}, Lcik;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v8, v1

    .line 115
    :goto_3
    if-eqz v8, :cond_3

    .line 116
    iget-object v0, p0, Lcju;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcik;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    move v7, v2

    .line 119
    :goto_4
    invoke-virtual {v9}, Lcez;->b()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 121
    iget-object v0, p0, Lcju;->s:Lclh;

    iget-object v1, v9, Lcez;->b:[F

    add-int/lit8 v2, v7, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lclh;->i(F)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    :cond_4
    return-void

    .line 95
    :cond_5
    iget-object v0, p0, Lcju;->l:Landroid/graphics/RectF;

    iget-object v10, p0, Lcju;->s:Lclh;

    invoke-virtual {v10}, Lclh;->g()F

    move-result v10

    iput v10, v0, Landroid/graphics/RectF;->left:F

    .line 96
    iget-object v0, p0, Lcju;->l:Landroid/graphics/RectF;

    iget-object v10, p0, Lcju;->s:Lclh;

    invoke-virtual {v10}, Lclh;->h()F

    move-result v10

    iput v10, v0, Landroid/graphics/RectF;->right:F

    .line 98
    iget-object v0, p0, Lcju;->l:Landroid/graphics/RectF;

    iget-object v10, p0, Lcju;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_6
    move v8, v2

    .line 113
    goto :goto_3

    .line 124
    :cond_7
    iget-object v0, p0, Lcju;->s:Lclh;

    iget-object v1, v9, Lcez;->b:[F

    add-int/lit8 v2, v7, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lclh;->j(F)Z

    move-result v0

    if-nez v0, :cond_9

    .line 119
    :cond_8
    :goto_5
    add-int/lit8 v2, v7, 0x4

    move v7, v2

    goto :goto_4

    .line 127
    :cond_9
    if-nez v8, :cond_a

    .line 130
    iget-object v0, p0, Lcju;->h:Landroid/graphics/Paint;

    div-int/lit8 v1, v7, 0x4

    invoke-interface {p2, v1}, Lcik;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
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

    iget-object v5, p0, Lcju;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 136
    if-eqz v6, :cond_8

    .line 137
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

    iget-object v5, p0, Lcju;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method protected a(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcju;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v0, p0, Lcju;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 330
    return-void
.end method

.method protected a(Lchv;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v1}, Lchv;->a(FF)V

    .line 348
    return-void
.end method

.method protected a(Lcig;)Z
    .locals 3

    .prologue
    .line 352
    invoke-interface {p1}, Lcig;->aC()Lcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcgo;->n()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lcig;->s()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcju;->s:Lclh;

    .line 353
    invoke-virtual {v2}, Lclh;->t()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 352
    :goto_0
    return v0

    .line 353
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 28

    .prologue
    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->a:Lcic;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcju;->a(Lcig;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->a:Lcic;

    invoke-interface {v2}, Lcic;->f()Lcge;

    move-result-object v2

    invoke-virtual {v2}, Lcge;->i()Ljava/util/List;

    move-result-object v17

    .line 150
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lclg;->a(F)F

    move-result v16

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->a:Lcic;

    invoke-interface {v2}, Lcic;->f_()Z

    move-result v18

    .line 155
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->a:Lcic;

    invoke-interface {v2}, Lcic;->f()Lcge;

    move-result-object v2

    invoke-virtual {v2}, Lcge;->d()I

    move-result v2

    if-ge v10, v2, :cond_1e

    .line 157
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcik;

    .line 159
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcju;->a(Lcio;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    :cond_0
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    .line 162
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->a:Lcic;

    invoke-interface {v8}, Lcik;->C()Lcgc;

    move-result-object v3

    invoke-interface {v2, v3}, Lcic;->d(Lcgc;)Z

    move-result v19

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcju;->b(Lcio;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->k:Landroid/graphics/Paint;

    const-string v3, "10"

    invoke-static {v2, v3}, Lclg;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v20, v2, v3

    .line 168
    invoke-interface {v8}, Lcik;->r()Lchn;

    move-result-object v21

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->c:[Lcez;

    aget-object v22, v2, v10

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->a()F

    move-result v23

    .line 176
    invoke-interface {v8}, Lcik;->c()Z

    move-result v2

    if-nez v2, :cond_8

    .line 178
    const/4 v2, 0x0

    move v9, v2

    :goto_1
    int-to-float v2, v9

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    array-length v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcju;->g:Lcdq;

    invoke-virtual {v4}, Lcdq;->b()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 180
    move-object/from16 v0, v22

    iget-object v2, v0, Lcez;->b:[F

    add-int/lit8 v3, v9, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    add-int/lit8 v4, v9, 0x3

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v2, v3

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->s:Lclh;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    add-int/lit8 v4, v9, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lclh;->i(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->s:Lclh;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Lclh;->e(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 178
    :cond_2
    :goto_2
    add-int/lit8 v2, v9, 0x4

    move v9, v2

    goto :goto_1

    .line 188
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->s:Lclh;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    add-int/lit8 v4, v9, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lclh;->j(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    div-int/lit8 v2, v9, 0x4

    invoke-interface {v8, v2}, Lcik;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarEntry;

    .line 192
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v5

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcju;->s:Lclh;

    move-object/from16 v0, v21

    invoke-interface {v0, v5, v2, v10, v3}, Lchn;->a(FLcom/github/mikephil/charting/data/Entry;ILclh;)Ljava/lang/String;

    move-result-object v4

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->k:Landroid/graphics/Paint;

    invoke-static {v2, v4}, Lclg;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v7, v2

    .line 197
    if-eqz v18, :cond_5

    move/from16 v3, v16

    .line 198
    :goto_3
    if-eqz v18, :cond_6

    add-float v2, v7, v16

    neg-float v2, v2

    .line 200
    :goto_4
    if-eqz v19, :cond_4

    .line 201
    neg-float v3, v3

    sub-float/2addr v3, v7

    .line 202
    neg-float v2, v2

    sub-float/2addr v2, v7

    .line 205
    :cond_4
    move-object/from16 v0, v22

    iget-object v7, v0, Lcez;->b:[F

    add-int/lit8 v11, v9, 0x2

    aget v7, v7, v11

    const/4 v11, 0x0

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_7

    :goto_5
    add-float v5, v7, v3

    add-float v6, v6, v20

    div-int/lit8 v2, v9, 0x2

    .line 206
    invoke-interface {v8, v2}, Lcik;->i(I)I

    move-result v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 205
    invoke-virtual/range {v2 .. v7}, Lcju;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_2

    .line 197
    :cond_5
    add-float v2, v7, v16

    neg-float v3, v2

    goto :goto_3

    :cond_6
    move/from16 v2, v16

    .line 198
    goto :goto_4

    :cond_7
    move v3, v2

    .line 205
    goto :goto_5

    .line 212
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->a:Lcic;

    invoke-interface {v8}, Lcik;->C()Lcgc;

    move-result-object v3

    invoke-interface {v2, v3}, Lcic;->a(Lcgc;)Lcle;

    move-result-object v24

    .line 214
    const/4 v3, 0x0

    .line 215
    const/4 v2, 0x0

    move v11, v2

    move v12, v3

    .line 217
    :cond_9
    :goto_6
    int-to-float v2, v11

    invoke-interface {v8}, Lcik;->I()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcju;->g:Lcdq;

    invoke-virtual {v4}, Lcdq;->b()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 219
    invoke-interface {v8, v11}, Lcik;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/github/mikephil/charting/data/BarEntry;

    .line 221
    invoke-interface {v8, v11}, Lcik;->i(I)I

    move-result v7

    .line 222
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BarEntry;->b()[F

    move-result-object v25

    .line 227
    if-nez v25, :cond_f

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->s:Lclh;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    add-int/lit8 v4, v12, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lclh;->i(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->s:Lclh;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    aget v3, v3, v12

    invoke-virtual {v2, v3}, Lclh;->e(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->s:Lclh;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    add-int/lit8 v4, v12, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lclh;->j(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 238
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v2

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcju;->s:Lclh;

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v9, v10, v3}, Lchn;->a(FLcom/github/mikephil/charting/data/Entry;ILclh;)Ljava/lang/String;

    move-result-object v4

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcju;->k:Landroid/graphics/Paint;

    invoke-static {v2, v4}, Lclg;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v5, v2

    .line 243
    if-eqz v18, :cond_c

    move/from16 v3, v16

    .line 244
    :goto_7
    if-eqz v18, :cond_d

    add-float v2, v5, v16

    neg-float v2, v2

    .line 246
    :goto_8
    if-eqz v19, :cond_a

    .line 247
    neg-float v3, v3

    sub-float/2addr v3, v5

    .line 248
    neg-float v2, v2

    sub-float/2addr v2, v5

    .line 251
    :cond_a
    move-object/from16 v0, v22

    iget-object v5, v0, Lcez;->b:[F

    add-int/lit8 v6, v12, 0x2

    aget v5, v5, v6

    .line 252
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v6

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_e

    :goto_9
    add-float/2addr v5, v3

    move-object/from16 v0, v22

    iget-object v2, v0, Lcez;->b:[F

    add-int/lit8 v3, v12, 0x1

    aget v2, v2, v3

    add-float v6, v2, v20

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 251
    invoke-virtual/range {v2 .. v7}, Lcju;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 319
    :cond_b
    if-nez v25, :cond_1d

    add-int/lit8 v3, v12, 0x4

    .line 320
    :goto_a
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v12, v3

    .line 321
    goto/16 :goto_6

    .line 243
    :cond_c
    add-float v2, v5, v16

    neg-float v3, v2

    goto :goto_7

    :cond_d
    move/from16 v2, v16

    .line 244
    goto :goto_8

    :cond_e
    move v3, v2

    .line 252
    goto :goto_9

    .line 257
    :cond_f
    move-object/from16 v0, v25

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v26, v0

    .line 259
    const/4 v5, 0x0

    .line 260
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/BarEntry;->g()F

    move-result v2

    neg-float v4, v2

    .line 262
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v13, v4

    move v14, v5

    :goto_b
    move-object/from16 v0, v26

    array-length v4, v0

    if-ge v3, v4, :cond_13

    .line 264
    aget v4, v25, v2

    .line 267
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_11

    const/4 v5, 0x0

    cmpl-float v5, v14, v5

    if-eqz v5, :cond_10

    const/4 v5, 0x0

    cmpl-float v5, v13, v5

    if-nez v5, :cond_11

    :cond_10
    move v5, v14

    move/from16 v27, v13

    move v13, v4

    move/from16 v4, v27

    .line 278
    :goto_c
    mul-float v6, v13, v23

    aput v6, v26, v3

    .line 262
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    move v13, v4

    move v14, v5

    goto :goto_b

    .line 270
    :cond_11
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_12

    .line 271
    add-float/2addr v4, v14

    move v5, v4

    move/from16 v27, v13

    move v13, v4

    move/from16 v4, v27

    .line 272
    goto :goto_c

    .line 275
    :cond_12
    sub-float v4, v13, v4

    move v5, v14

    goto :goto_c

    .line 281
    :cond_13
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcle;->a([F)V

    .line 283
    const/4 v2, 0x0

    move v15, v2

    :goto_d
    move-object/from16 v0, v26

    array-length v2, v0

    if-ge v15, v2, :cond_b

    .line 285
    div-int/lit8 v2, v15, 0x2

    aget v2, v25, v2

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcju;->s:Lclh;

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v9, v10, v3}, Lchn;->a(FLcom/github/mikephil/charting/data/Entry;ILclh;)Ljava/lang/String;

    move-result-object v4

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcju;->k:Landroid/graphics/Paint;

    invoke-static {v3, v4}, Lclg;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v6, v3

    .line 290
    if-eqz v18, :cond_18

    move/from16 v5, v16

    .line 291
    :goto_e
    if-eqz v18, :cond_19

    add-float v3, v6, v16

    neg-float v3, v3

    .line 293
    :goto_f
    if-eqz v19, :cond_14

    .line 294
    neg-float v5, v5

    sub-float/2addr v5, v6

    .line 295
    neg-float v3, v3

    sub-float/2addr v3, v6

    .line 298
    :cond_14
    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-nez v6, :cond_15

    const/4 v6, 0x0

    cmpl-float v6, v13, v6

    if-nez v6, :cond_15

    const/4 v6, 0x0

    cmpl-float v6, v14, v6

    if-gtz v6, :cond_16

    :cond_15
    const/4 v6, 0x0

    cmpg-float v2, v2, v6

    if-gez v2, :cond_1a

    :cond_16
    const/4 v2, 0x1

    .line 302
    :goto_10
    aget v6, v26, v15

    if-eqz v2, :cond_1b

    move v2, v3

    :goto_11
    add-float v5, v6, v2

    .line 304
    move-object/from16 v0, v22

    iget-object v2, v0, Lcez;->b:[F

    add-int/lit8 v3, v12, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v22

    iget-object v3, v0, Lcez;->b:[F

    add-int/lit8 v6, v12, 0x3

    aget v3, v3, v6

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcju;->s:Lclh;

    invoke-virtual {v3, v2}, Lclh;->i(F)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcju;->s:Lclh;

    invoke-virtual {v3, v5}, Lclh;->e(F)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 283
    :cond_17
    :goto_12
    add-int/lit8 v2, v15, 0x2

    move v15, v2

    goto :goto_d

    .line 290
    :cond_18
    add-float v3, v6, v16

    neg-float v5, v3

    goto :goto_e

    :cond_19
    move/from16 v3, v16

    .line 291
    goto :goto_f

    .line 298
    :cond_1a
    const/4 v2, 0x0

    goto :goto_10

    :cond_1b
    move v2, v5

    .line 302
    goto :goto_11

    .line 312
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcju;->s:Lclh;

    invoke-virtual {v3, v2}, Lclh;->j(F)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 315
    add-float v6, v2, v20

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcju;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_12

    .line 319
    :cond_1d
    move-object/from16 v0, v25

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    add-int v3, v12, v2

    goto/16 :goto_a

    .line 325
    :cond_1e
    return-void
.end method
