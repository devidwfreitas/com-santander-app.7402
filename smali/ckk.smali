.class public Lckk;
.super Lckj;
.source "SourceFile"


# instance fields
.field protected q:Landroid/graphics/Path;

.field protected r:Landroid/graphics/Path;

.field protected t:[F


# direct methods
.method public constructor <init>(Lclh;Lcgb;Lcle;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lckj;-><init>(Lclh;Lcgb;Lcle;)V

    .line 186
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lckk;->q:Landroid/graphics/Path;

    .line 214
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lckk;->r:Landroid/graphics/Path;

    .line 215
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lckk;->t:[F

    .line 27
    iget-object v0, p0, Lckk;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 180
    aget v0, p3, p2

    iget-object v1, p0, Lckk;->s:Lclh;

    invoke-virtual {v1}, Lclh;->f()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 181
    aget v0, p3, p2

    iget-object v1, p0, Lckk;->s:Lclh;

    invoke-virtual {v1}, Lclh;->i()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    return-object p1
.end method

.method public a(FFZ)V
    .locals 6

    .prologue
    .line 41
    iget-object v0, p0, Lckk;->s:Lclh;

    invoke-virtual {v0}, Lclh;->k()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lckk;->s:Lclh;

    invoke-virtual {v0}, Lclh;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lckk;->b:Lcle;

    iget-object v1, p0, Lckk;->s:Lclh;

    invoke-virtual {v1}, Lclh;->g()F

    move-result v1

    iget-object v2, p0, Lckk;->s:Lclh;

    .line 44
    invoke-virtual {v2}, Lclh;->f()F

    move-result v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lcle;->a(FF)Lckz;

    move-result-object v2

    .line 45
    iget-object v0, p0, Lckk;->b:Lcle;

    iget-object v1, p0, Lckk;->s:Lclh;

    invoke-virtual {v1}, Lclh;->h()F

    move-result v1

    iget-object v3, p0, Lckk;->s:Lclh;

    .line 46
    invoke-virtual {v3}, Lclh;->f()F

    move-result v3

    .line 45
    invoke-virtual {v0, v1, v3}, Lcle;->a(FF)Lckz;

    move-result-object v3

    .line 48
    if-nez p3, :cond_1

    .line 49
    iget-wide v0, v2, Lckz;->a:D

    double-to-float v1, v0

    .line 50
    iget-wide v4, v3, Lckz;->a:D

    double-to-float v0, v4

    .line 56
    :goto_0
    invoke-static {v2}, Lckz;->a(Lckz;)V

    .line 57
    invoke-static {v3}, Lckz;->a(Lckz;)V

    move p2, v0

    move p1, v1

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2}, Lckk;->a(FF)V

    .line 61
    return-void

    .line 52
    :cond_1
    iget-wide v0, v3, Lckz;->a:D

    double-to-float v1, v0

    .line 53
    iget-wide v4, v2, Lckz;->a:D

    double-to-float v0, v4

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 69
    iget-object v0, p0, Lckk;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckk;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lckk;->f()[F

    move-result-object v1

    .line 74
    iget-object v0, p0, Lckk;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lckk;->g:Lcgb;

    invoke-virtual {v2}, Lcgb;->H()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 75
    iget-object v0, p0, Lckk;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lckk;->g:Lcgb;

    invoke-virtual {v2}, Lcgb;->I()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    iget-object v0, p0, Lckk;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lckk;->g:Lcgb;

    invoke-virtual {v2}, Lcgb;->J()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lckk;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 79
    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Lclg;->a(F)F

    move-result v0

    .line 80
    iget-object v2, p0, Lckk;->d:Landroid/graphics/Paint;

    const-string v3, "Q"

    invoke-static {v2, v3}, Lclg;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    .line 82
    iget-object v3, p0, Lckk;->g:Lcgb;

    invoke-virtual {v3}, Lcgb;->L()Lcgc;

    move-result-object v3

    .line 83
    iget-object v4, p0, Lckk;->g:Lcgb;

    invoke-virtual {v4}, Lcgb;->O()Lcgd;

    move-result-object v4

    .line 87
    sget-object v5, Lcgc;->LEFT:Lcgc;

    if-ne v3, v5, :cond_3

    .line 89
    sget-object v2, Lcgd;->OUTSIDE_CHART:Lcgd;

    if-ne v4, v2, :cond_2

    .line 90
    iget-object v2, p0, Lckk;->s:Lclh;

    invoke-virtual {v2}, Lclh;->f()F

    move-result v2

    sub-float v0, v2, v0

    .line 104
    :goto_1
    iget-object v2, p0, Lckk;->g:Lcgb;

    invoke-virtual {v2}, Lcgb;->G()F

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lckk;->a(Landroid/graphics/Canvas;F[FF)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lckk;->s:Lclh;

    invoke-virtual {v2}, Lclh;->f()F

    move-result v2

    sub-float v0, v2, v0

    goto :goto_1

    .line 97
    :cond_3
    sget-object v3, Lcgd;->OUTSIDE_CHART:Lcgd;

    if-ne v4, v3, :cond_4

    .line 98
    iget-object v3, p0, Lckk;->s:Lclh;

    invoke-virtual {v3}, Lclh;->i()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    goto :goto_1

    .line 100
    :cond_4
    iget-object v3, p0, Lckk;->s:Lclh;

    invoke-virtual {v3}, Lclh;->i()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Canvas;F[FF)V
    .locals 6

    .prologue
    .line 136
    iget-object v0, p0, Lckk;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lckk;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->H()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 137
    iget-object v0, p0, Lckk;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lckk;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->I()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iget-object v0, p0, Lckk;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lckk;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lckk;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 141
    :goto_0
    iget-object v1, p0, Lckk;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lckk;->g:Lcgb;

    iget v1, v1, Lcgb;->d:I

    .line 145
    :goto_1
    if-ge v0, v1, :cond_2

    .line 147
    iget-object v2, p0, Lckk;->g:Lcgb;

    invoke-virtual {v2, v0}, Lcgb;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    mul-int/lit8 v3, v0, 0x2

    aget v3, p3, v3

    sub-float v4, p2, p4

    iget-object v5, p0, Lckk;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lckk;->g:Lcgb;

    iget v1, v1, Lcgb;->d:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 151
    :cond_2
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lckk;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckk;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lckk;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lckk;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lckk;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lckk;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v0, p0, Lckk;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->L()Lcgc;

    move-result-object v0

    sget-object v1, Lcgc;->LEFT:Lcgc;

    if-ne v0, v1, :cond_2

    .line 117
    iget-object v0, p0, Lckk;->s:Lclh;

    invoke-virtual {v0}, Lclh;->g()F

    move-result v1

    iget-object v0, p0, Lckk;->s:Lclh;

    .line 118
    invoke-virtual {v0}, Lclh;->f()F

    move-result v2

    iget-object v0, p0, Lckk;->s:Lclh;

    invoke-virtual {v0}, Lclh;->h()F

    move-result v3

    iget-object v0, p0, Lckk;->s:Lclh;

    .line 119
    invoke-virtual {v0}, Lclh;->f()F

    move-result v4

    iget-object v5, p0, Lckk;->e:Landroid/graphics/Paint;

    move-object v0, p1

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lckk;->s:Lclh;

    invoke-virtual {v0}, Lclh;->g()F

    move-result v1

    iget-object v0, p0, Lckk;->s:Lclh;

    .line 122
    invoke-virtual {v0}, Lclh;->i()F

    move-result v2

    iget-object v0, p0, Lckk;->s:Lclh;

    invoke-virtual {v0}, Lclh;->h()F

    move-result v3

    iget-object v0, p0, Lckk;->s:Lclh;

    .line 123
    invoke-virtual {v0}, Lclh;->i()F

    move-result v4

    iget-object v5, p0, Lckk;->e:Landroid/graphics/Paint;

    move-object v0, p1

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 225
    iget-object v0, p0, Lckk;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->n()Ljava/util/List;

    move-result-object v2

    .line 227
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 309
    :cond_0
    return-void

    .line 230
    :cond_1
    iget-object v3, p0, Lckk;->t:[F

    .line 231
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 232
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 233
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 234
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 235
    iget-object v4, p0, Lckk;->r:Landroid/graphics/Path;

    .line 236
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 238
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 240
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfw;

    .line 242
    invoke-virtual {v0}, Lcfw;->K()Z

    move-result v5

    if-nez v5, :cond_2

    .line 238
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 246
    iget-object v6, p0, Lckk;->p:Landroid/graphics/RectF;

    iget-object v7, p0, Lckk;->s:Lclh;

    invoke-virtual {v7}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 247
    iget-object v6, p0, Lckk;->p:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcfw;->b()F

    move-result v7

    neg-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 248
    iget-object v6, p0, Lckk;->p:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 250
    const/4 v6, 0x0

    invoke-virtual {v0}, Lcfw;->a()F

    move-result v7

    aput v7, v3, v6

    .line 251
    const/4 v6, 0x2

    invoke-virtual {v0}, Lcfw;->a()F

    move-result v7

    aput v7, v3, v6

    .line 253
    iget-object v6, p0, Lckk;->b:Lcle;

    invoke-virtual {v6, v3}, Lcle;->a([F)V

    .line 255
    const/4 v6, 0x1

    iget-object v7, p0, Lckk;->s:Lclh;

    invoke-virtual {v7}, Lclh;->f()F

    move-result v7

    aput v7, v3, v6

    .line 256
    const/4 v6, 0x3

    iget-object v7, p0, Lckk;->s:Lclh;

    invoke-virtual {v7}, Lclh;->i()F

    move-result v7

    aput v7, v3, v6

    .line 258
    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 259
    const/4 v6, 0x2

    aget v6, v3, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    iget-object v6, p0, Lckk;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 262
    iget-object v6, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iget-object v6, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->f()Landroid/graphics/DashPathEffect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 264
    iget-object v6, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->b()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 266
    iget-object v6, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 267
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 269
    invoke-virtual {v0}, Lcfw;->i()Ljava/lang/String;

    move-result-object v6

    .line 272
    if-eqz v6, :cond_3

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 274
    iget-object v7, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->g()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    iget-object v7, p0, Lckk;->f:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 276
    iget-object v7, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->J()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    iget-object v7, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->H()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 278
    iget-object v7, p0, Lckk;->f:Landroid/graphics/Paint;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    iget-object v7, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->I()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 281
    invoke-virtual {v0}, Lcfw;->b()F

    move-result v7

    invoke-virtual {v0}, Lcfw;->F()F

    move-result v8

    add-float/2addr v7, v8

    .line 282
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Lclg;->a(F)F

    move-result v8

    invoke-virtual {v0}, Lcfw;->G()F

    move-result v9

    add-float/2addr v8, v9

    .line 284
    invoke-virtual {v0}, Lcfw;->h()Lcfx;

    move-result-object v0

    .line 286
    sget-object v9, Lcfx;->RIGHT_TOP:Lcfx;

    if-ne v0, v9, :cond_4

    .line 288
    iget-object v0, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-static {v0, v6}, Lclg;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 289
    iget-object v9, p0, Lckk;->f:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 290
    const/4 v9, 0x0

    aget v9, v3, v9

    add-float/2addr v7, v9

    iget-object v9, p0, Lckk;->s:Lclh;

    invoke-virtual {v9}, Lclh;->f()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v0, v8

    iget-object v8, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 307
    :cond_3
    :goto_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    .line 291
    :cond_4
    sget-object v9, Lcfx;->RIGHT_BOTTOM:Lcfx;

    if-ne v0, v9, :cond_5

    .line 293
    iget-object v0, p0, Lckk;->f:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 294
    const/4 v0, 0x0

    aget v0, v3, v0

    add-float/2addr v0, v7

    iget-object v7, p0, Lckk;->s:Lclh;

    invoke-virtual {v7}, Lclh;->i()F

    move-result v7

    sub-float/2addr v7, v8

    iget-object v8, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 295
    :cond_5
    sget-object v9, Lcfx;->LEFT_TOP:Lcfx;

    if-ne v0, v9, :cond_6

    .line 297
    iget-object v0, p0, Lckk;->f:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 298
    iget-object v0, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-static {v0, v6}, Lclg;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    .line 299
    const/4 v9, 0x0

    aget v9, v3, v9

    sub-float v7, v9, v7

    iget-object v9, p0, Lckk;->s:Lclh;

    invoke-virtual {v9}, Lclh;->f()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v0, v8

    iget-object v8, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 302
    :cond_6
    iget-object v0, p0, Lckk;->f:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 303
    const/4 v0, 0x0

    aget v0, v3, v0

    sub-float/2addr v0, v7

    iget-object v7, p0, Lckk;->s:Lclh;

    invoke-virtual {v7}, Lclh;->i()F

    move-result v7

    sub-float/2addr v7, v8

    iget-object v8, p0, Lckk;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public e()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lckk;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lckk;->s:Lclh;

    invoke-virtual {v1}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 173
    iget-object v0, p0, Lckk;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lckk;->a:Lcfj;

    invoke-virtual {v1}, Lcfj;->f()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 174
    iget-object v0, p0, Lckk;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 192
    iget-object v1, p0, Lckk;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lckk;->s:Lclh;

    invoke-virtual {v2}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 193
    iget-object v1, p0, Lckk;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lckk;->g:Lcgb;

    invoke-virtual {v2}, Lcgb;->W()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 194
    iget-object v1, p0, Lckk;->p:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 197
    iget-object v1, p0, Lckk;->b:Lcle;

    invoke-virtual {v1, v3, v3}, Lcle;->b(FF)Lckz;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lckk;->h:Landroid/graphics/Paint;

    iget-object v3, p0, Lckk;->g:Lcgb;

    invoke-virtual {v3}, Lcgb;->V()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v2, p0, Lckk;->h:Landroid/graphics/Paint;

    iget-object v3, p0, Lckk;->g:Lcgb;

    invoke-virtual {v3}, Lcgb;->W()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget-object v2, p0, Lckk;->q:Landroid/graphics/Path;

    .line 203
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 205
    iget-wide v4, v1, Lckz;->a:D

    double-to-float v3, v4

    sub-float/2addr v3, v6

    iget-object v4, p0, Lckk;->s:Lclh;

    invoke-virtual {v4}, Lclh;->f()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 206
    iget-wide v4, v1, Lckz;->a:D

    double-to-float v1, v4

    sub-float/2addr v1, v6

    iget-object v3, p0, Lckk;->s:Lclh;

    invoke-virtual {v3}, Lclh;->i()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    iget-object v1, p0, Lckk;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 212
    return-void
.end method

.method protected f()[F
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lckk;->k:[F

    array-length v0, v0

    iget-object v1, p0, Lckk;->g:Lcgb;

    iget v1, v1, Lcgb;->d:I

    mul-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lckk;->g:Lcgb;

    iget v0, v0, Lcgb;->d:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lckk;->k:[F

    .line 159
    :cond_0
    iget-object v1, p0, Lckk;->k:[F

    .line 161
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 163
    iget-object v2, p0, Lckk;->g:Lcgb;

    iget-object v2, v2, Lcgb;->b:[F

    div-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, v1, v0

    .line 161
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lckk;->b:Lcle;

    invoke-virtual {v0, v1}, Lcle;->a([F)V

    .line 167
    return-object v1
.end method
