.class public Lckd;
.super Lcka;
.source "SourceFile"


# instance fields
.field protected a:Lcom/github/mikephil/charting/charts/RadarChart;

.field protected b:Landroid/graphics/Paint;

.field protected c:Landroid/graphics/Paint;

.field protected d:Landroid/graphics/Path;

.field protected e:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;Lcdq;Lclh;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-direct {p0, p2, p3}, Lcka;-><init>(Lcdq;Lclh;)V

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lckd;->d:Landroid/graphics/Path;

    .line 325
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lckd;->e:Landroid/graphics/Path;

    .line 34
    iput-object p1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lckd;->i:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lckd;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lckd;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object v0, p0, Lckd;->i:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xbb

    const/16 v3, 0x73

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lckd;->b:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lckd;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lckd;->c:Landroid/graphics/Paint;

    .line 45
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->aC()Lcgo;

    move-result-object v0

    check-cast v0, Lchb;

    .line 62
    invoke-virtual {v0}, Lchb;->o()Lcio;

    move-result-object v1

    check-cast v1, Lcit;

    invoke-interface {v1}, Lcit;->I()I

    move-result v1

    .line 64
    invoke-virtual {v0}, Lchb;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcit;

    .line 66
    invoke-interface {v0}, Lcit;->B()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {p0, p1, v0, v1}, Lckd;->a(Landroid/graphics/Canvas;Lcit;I)V

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcit;I)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 82
    iget-object v1, p0, Lckd;->g:Lcdq;

    invoke-virtual {v1}, Lcdq;->b()F

    move-result v3

    .line 83
    iget-object v1, p0, Lckd;->g:Lcdq;

    invoke-virtual {v1}, Lcdq;->a()F

    move-result v4

    .line 85
    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->d()F

    move-result v5

    .line 89
    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->c()F

    move-result v6

    .line 91
    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->am()Lcla;

    move-result-object v7

    .line 92
    invoke-static {v2, v2}, Lcla;->a(FF)Lcla;

    move-result-object v8

    .line 93
    iget-object v9, p0, Lckd;->d:Landroid/graphics/Path;

    .line 94
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    move v1, v0

    move v2, v0

    .line 98
    :goto_0
    invoke-interface {p2}, Lcit;->I()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 100
    iget-object v0, p0, Lckd;->h:Landroid/graphics/Paint;

    invoke-interface {p2, v1}, Lcit;->e(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    invoke-interface {p2, v1}, Lcit;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/RadarEntry;

    .line 106
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/RadarEntry;->c()F

    move-result v0

    iget-object v10, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->O()F

    move-result v10

    sub-float/2addr v0, v10

    mul-float/2addr v0, v6

    mul-float/2addr v0, v4

    int-to-float v10, v1

    mul-float/2addr v10, v5

    mul-float/2addr v10, v3

    iget-object v11, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 107
    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->z()F

    move-result v11

    add-float/2addr v10, v11

    .line 104
    invoke-static {v7, v0, v10, v8}, Lclg;->a(Lcla;FFLcla;)V

    .line 109
    iget v0, v8, Lcla;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 112
    :cond_0
    if-nez v2, :cond_1

    .line 113
    iget v0, v8, Lcla;->a:F

    iget v2, v8, Lcla;->b:F

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 114
    const/4 v2, 0x1

    goto :goto_1

    .line 116
    :cond_1
    iget v0, v8, Lcla;->a:F

    iget v10, v8, Lcla;->b:F

    invoke-virtual {v9, v0, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 119
    :cond_2
    invoke-interface {p2}, Lcit;->I()I

    move-result v0

    if-le v0, p3, :cond_3

    .line 121
    iget v0, v7, Lcla;->a:F

    iget v1, v7, Lcla;->b:F

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 124
    :cond_3
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    .line 126
    invoke-interface {p2}, Lcit;->ab()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    invoke-interface {p2}, Lcit;->Y()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_7

    .line 131
    invoke-virtual {p0, p1, v9, v0}, Lckd;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_4
    :goto_2
    iget-object v0, p0, Lckd;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcit;->aa()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v0, p0, Lckd;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    invoke-interface {p2}, Lcit;->ab()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcit;->Z()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_6

    .line 143
    :cond_5
    iget-object v0, p0, Lckd;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    :cond_6
    invoke-static {v7}, Lcla;->a(Lcla;)V

    .line 146
    invoke-static {v8}, Lcla;->a(Lcla;)V

    .line 147
    return-void

    .line 134
    :cond_7
    invoke-interface {p2}, Lcit;->X()I

    move-result v0

    invoke-interface {p2}, Lcit;->Z()I

    move-result v1

    invoke-virtual {p0, p1, v9, v0, v1}, Lckd;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    goto :goto_2
.end method

.method public a(Landroid/graphics/Canvas;Lcla;FFIIF)V
    .locals 7

    .prologue
    const v6, 0x112233

    .line 333
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 335
    invoke-static {p4}, Lclg;->a(F)F

    move-result v0

    .line 336
    invoke-static {p3}, Lclg;->a(F)F

    move-result v1

    .line 338
    if-eq p5, v6, :cond_1

    .line 339
    iget-object v2, p0, Lckd;->e:Landroid/graphics/Path;

    .line 340
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 341
    iget v3, p2, Lcla;->a:F

    iget v4, p2, Lcla;->b:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 342
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 343
    iget v3, p2, Lcla;->a:F

    iget v4, p2, Lcla;->b:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 345
    :cond_0
    iget-object v1, p0, Lckd;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    iget-object v1, p0, Lckd;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 347
    iget-object v1, p0, Lckd;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 350
    :cond_1
    if-eq p6, v6, :cond_2

    .line 351
    iget-object v1, p0, Lckd;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object v1, p0, Lckd;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 353
    iget-object v1, p0, Lckd;->c:Landroid/graphics/Paint;

    invoke-static {p7}, Lclg;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 354
    iget v1, p2, Lcla;->a:F

    iget v2, p2, Lcla;->b:F

    iget-object v3, p0, Lckd;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 357
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 358
    return-void
.end method

.method public a(Landroid/graphics/Canvas;[Lchv;)V
    .locals 15

    .prologue
    .line 262
    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->d()F

    move-result v11

    .line 266
    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->c()F

    move-result v12

    .line 268
    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->am()Lcla;

    move-result-object v13

    .line 269
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcla;->a(FF)Lcla;

    move-result-object v3

    .line 271
    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->aC()Lcgo;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lchb;

    .line 273
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v14, :cond_3

    aget-object v4, p2, v10

    .line 275
    invoke-virtual {v4}, Lchv;->f()I

    move-result v1

    invoke-virtual {v9, v1}, Lchb;->a(I)Lcio;

    move-result-object v1

    check-cast v1, Lcit;

    .line 277
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcit;->q()Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    :cond_0
    :goto_1
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v4}, Lchv;->a()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v1, v2}, Lcit;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/RadarEntry;

    .line 282
    invoke-virtual {p0, v2, v1}, Lckd;->a(Lcom/github/mikephil/charting/data/Entry;Lcil;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 285
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/RadarEntry;->c()F

    move-result v2

    iget-object v5, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/RadarChart;->O()F

    move-result v5

    sub-float/2addr v2, v5

    .line 287
    mul-float/2addr v2, v12

    iget-object v5, p0, Lckd;->g:Lcdq;

    .line 288
    invoke-virtual {v5}, Lcdq;->a()F

    move-result v5

    mul-float/2addr v2, v5

    .line 289
    invoke-virtual {v4}, Lchv;->a()F

    move-result v5

    mul-float/2addr v5, v11

    iget-object v6, p0, Lckd;->g:Lcdq;

    invoke-virtual {v6}, Lcdq;->b()F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->z()F

    move-result v6

    add-float/2addr v5, v6

    .line 287
    invoke-static {v13, v2, v5, v3}, Lclg;->a(Lcla;FFLcla;)V

    .line 292
    iget v2, v3, Lcla;->a:F

    iget v5, v3, Lcla;->b:F

    invoke-virtual {v4, v2, v5}, Lchv;->a(FF)V

    .line 295
    iget v2, v3, Lcla;->a:F

    iget v4, v3, Lcla;->b:F

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2, v4, v1}, Lckd;->a(Landroid/graphics/Canvas;FFLcir;)V

    .line 297
    invoke-interface {v1}, Lcit;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget v2, v3, Lcla;->a:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v3, Lcla;->b:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    invoke-interface {v1}, Lcit;->d()I

    move-result v2

    .line 302
    const v4, 0x112233

    if-ne v2, v4, :cond_2

    .line 303
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcit;->e(I)I

    move-result v2

    .line 306
    :cond_2
    invoke-interface {v1}, Lcit;->e()I

    move-result v4

    const/16 v5, 0xff

    if-ge v4, v5, :cond_4

    .line 307
    invoke-interface {v1}, Lcit;->e()I

    move-result v4

    invoke-static {v2, v4}, Lcku;->a(II)I

    move-result v7

    .line 312
    :goto_2
    invoke-interface {v1}, Lcit;->f()F

    move-result v4

    .line 313
    invoke-interface {v1}, Lcit;->g()F

    move-result v5

    .line 314
    invoke-interface {v1}, Lcit;->c()I

    move-result v6

    .line 316
    invoke-interface {v1}, Lcit;->h()F

    move-result v8

    move-object v1, p0

    move-object/from16 v2, p1

    .line 310
    invoke-virtual/range {v1 .. v8}, Lckd;->a(Landroid/graphics/Canvas;Lcla;FFIIF)V

    goto/16 :goto_1

    .line 321
    :cond_3
    invoke-static {v13}, Lcla;->a(Lcla;)V

    .line 322
    invoke-static {v3}, Lcla;->a(Lcla;)V

    .line 323
    return-void

    :cond_4
    move v7, v2

    goto :goto_2
.end method

.method public b()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lckd;->b:Landroid/graphics/Paint;

    return-object v0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 20

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lckd;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->b()F

    move-result v13

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lckd;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->a()F

    move-result v14

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->d()F

    move-result v15

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->c()F

    move-result v16

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->am()Lcla;

    move-result-object v17

    .line 162
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcla;->a(FF)Lcla;

    move-result-object v18

    .line 164
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lclg;->a(F)F

    move-result v19

    .line 166
    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->aC()Lcgo;

    move-result-object v2

    check-cast v2, Lchb;

    invoke-virtual {v2}, Lchb;->d()I

    move-result v2

    if-ge v7, v2, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->aC()Lcgo;

    move-result-object v2

    check-cast v2, Lchb;

    invoke-virtual {v2, v7}, Lchb;->a(I)Lcio;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcit;

    .line 170
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lckd;->a(Lcio;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 174
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lckd;->b(Lcio;)V

    .line 176
    const/4 v2, 0x0

    move v12, v2

    :goto_1
    invoke-interface {v11}, Lcit;->I()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 178
    invoke-interface {v11, v12}, Lcit;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/RadarEntry;

    .line 182
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/RadarEntry;->c()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->O()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v16

    mul-float/2addr v2, v14

    int-to-float v3, v12

    mul-float/2addr v3, v15

    mul-float/2addr v3, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 183
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/RadarChart;->z()F

    move-result v4

    add-float/2addr v3, v4

    .line 180
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v2, v3, v1}, Lclg;->a(Lcla;FFLcla;)V

    .line 186
    invoke-interface {v11}, Lcit;->r()Lchn;

    move-result-object v4

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/RadarEntry;->c()F

    move-result v5

    move-object/from16 v0, v18

    iget v8, v0, Lcla;->a:F

    move-object/from16 v0, v18

    iget v2, v0, Lcla;->b:F

    sub-float v9, v2, v19

    .line 187
    invoke-interface {v11, v12}, Lcit;->i(I)I

    move-result v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 186
    invoke-virtual/range {v2 .. v10}, Lckd;->a(Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 176
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1

    .line 191
    :cond_2
    invoke-static/range {v17 .. v17}, Lcla;->a(Lcla;)V

    .line 192
    invoke-static/range {v18 .. v18}, Lcla;->a(Lcla;)V

    .line 193
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lckd;->d(Landroid/graphics/Canvas;)V

    .line 198
    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 202
    iget-object v0, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->d()F

    move-result v8

    .line 206
    iget-object v0, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->c()F

    move-result v9

    .line 207
    iget-object v0, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->z()F

    move-result v10

    .line 209
    iget-object v0, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->am()Lcla;

    move-result-object v11

    .line 212
    iget-object v0, p0, Lckd;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    iget-object v0, p0, Lckd;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iget-object v0, p0, Lckd;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    iget-object v0, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->p()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 217
    iget-object v0, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->aC()Lcgo;

    move-result-object v0

    check-cast v0, Lchb;

    invoke-virtual {v0}, Lchb;->o()Lcio;

    move-result-object v0

    check-cast v0, Lcit;

    invoke-interface {v0}, Lcit;->I()I

    move-result v12

    .line 219
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcla;->a(FF)Lcla;

    move-result-object v13

    .line 220
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v12, :cond_0

    .line 222
    iget-object v0, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 224
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->q()F

    move-result v0

    mul-float/2addr v0, v9

    int-to-float v1, v6

    mul-float/2addr v1, v8

    add-float/2addr v1, v10

    .line 222
    invoke-static {v11, v0, v1, v13}, Lclg;->a(Lcla;FFLcla;)V

    .line 228
    iget v1, v11, Lcla;->a:F

    iget v2, v11, Lcla;->b:F

    iget v3, v13, Lcla;->a:F

    iget v4, v13, Lcla;->b:F

    iget-object v5, p0, Lckd;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 220
    add-int v0, v6, v7

    move v6, v0

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {v13}, Lcla;->a(Lcla;)V

    .line 233
    iget-object v0, p0, Lckd;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    iget-object v0, p0, Lckd;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object v0, p0, Lckd;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 237
    iget-object v0, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->e()Lcgb;

    move-result-object v0

    iget v12, v0, Lcgb;->d:I

    .line 239
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcla;->a(FF)Lcla;

    move-result-object v13

    .line 240
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcla;->a(FF)Lcla;

    move-result-object v14

    .line 241
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v12, :cond_2

    .line 243
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    iget-object v0, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->aC()Lcgo;

    move-result-object v0

    check-cast v0, Lchb;

    invoke-virtual {v0}, Lchb;->n()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 245
    iget-object v0, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->e()Lcgb;

    move-result-object v0

    iget-object v0, v0, Lcgb;->b:[F

    aget v0, v0, v7

    iget-object v1, p0, Lckd;->a:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->O()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v9

    .line 247
    int-to-float v1, v6

    mul-float/2addr v1, v8

    add-float/2addr v1, v10

    invoke-static {v11, v0, v1, v13}, Lclg;->a(Lcla;FFLcla;)V

    .line 248
    add-int/lit8 v1, v6, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v10

    invoke-static {v11, v0, v1, v14}, Lclg;->a(Lcla;FFLcla;)V

    .line 250
    iget v1, v13, Lcla;->a:F

    iget v2, v13, Lcla;->b:F

    iget v3, v14, Lcla;->a:F

    iget v4, v14, Lcla;->b:F

    iget-object v5, p0, Lckd;->b:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 243
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 241
    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 255
    :cond_2
    invoke-static {v13}, Lcla;->a(Lcla;)V

    .line 256
    invoke-static {v14}, Lcla;->a(Lcla;)V

    .line 257
    return-void
.end method
