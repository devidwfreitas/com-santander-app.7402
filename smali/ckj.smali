.class public Lckj;
.super Lcjl;
.source "SourceFile"


# instance fields
.field protected g:Lcgb;

.field protected h:Landroid/graphics/Paint;

.field protected i:Landroid/graphics/Path;

.field protected j:Landroid/graphics/RectF;

.field protected k:[F

.field protected l:Landroid/graphics/Path;

.field protected m:Landroid/graphics/RectF;

.field protected n:Landroid/graphics/Path;

.field protected o:[F

.field protected p:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lclh;Lcgb;Lcle;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 28
    invoke-direct {p0, p1, p3, p2}, Lcjl;-><init>(Lclh;Lcle;Lcfj;)V

    .line 131
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lckj;->i:Landroid/graphics/Path;

    .line 168
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lckj;->j:Landroid/graphics/RectF;

    .line 192
    new-array v0, v1, [F

    iput-object v0, p0, Lckj;->k:[F

    .line 215
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lckj;->l:Landroid/graphics/Path;

    .line 216
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lckj;->m:Landroid/graphics/RectF;

    .line 246
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lckj;->n:Landroid/graphics/Path;

    .line 247
    new-array v0, v1, [F

    iput-object v0, p0, Lckj;->o:[F

    .line 248
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lckj;->p:Landroid/graphics/RectF;

    .line 30
    iput-object p2, p0, Lckj;->g:Lcgb;

    .line 32
    iget-object v0, p0, Lckj;->s:Lclh;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lckj;->d:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lckj;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lclg;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lckj;->h:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lckj;->h:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lckj;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v0, p0, Lckj;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lckj;->s:Lclh;

    invoke-virtual {v0}, Lclh;->b()F

    move-result v0

    add-int/lit8 v1, p2, 0x1

    aget v1, p3, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 187
    iget-object v0, p0, Lckj;->s:Lclh;

    invoke-virtual {v0}, Lclh;->h()F

    move-result v0

    add-int/lit8 v1, p2, 0x1

    aget v1, p3, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    return-object p1
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 50
    iget-object v0, p0, Lckj;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckj;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Lckj;->f()[F

    move-result-object v1

    .line 55
    iget-object v0, p0, Lckj;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lckj;->g:Lcgb;

    invoke-virtual {v2}, Lcgb;->H()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 56
    iget-object v0, p0, Lckj;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lckj;->g:Lcgb;

    invoke-virtual {v2}, Lcgb;->I()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    iget-object v0, p0, Lckj;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lckj;->g:Lcgb;

    invoke-virtual {v2}, Lcgb;->J()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lckj;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->F()F

    move-result v0

    .line 60
    iget-object v2, p0, Lckj;->d:Landroid/graphics/Paint;

    const-string v3, "A"

    invoke-static {v2, v3}, Lclg;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    iget-object v3, p0, Lckj;->g:Lcgb;

    invoke-virtual {v3}, Lcgb;->G()F

    move-result v3

    add-float/2addr v2, v3

    .line 62
    iget-object v3, p0, Lckj;->g:Lcgb;

    invoke-virtual {v3}, Lcgb;->L()Lcgc;

    move-result-object v3

    .line 63
    iget-object v4, p0, Lckj;->g:Lcgb;

    invoke-virtual {v4}, Lcgb;->O()Lcgd;

    move-result-object v4

    .line 67
    sget-object v5, Lcgc;->LEFT:Lcgc;

    if-ne v3, v5, :cond_3

    .line 69
    sget-object v3, Lcgd;->OUTSIDE_CHART:Lcgd;

    if-ne v4, v3, :cond_2

    .line 70
    iget-object v3, p0, Lckj;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    iget-object v3, p0, Lckj;->s:Lclh;

    invoke-virtual {v3}, Lclh;->b()F

    move-result v3

    sub-float v0, v3, v0

    .line 88
    :goto_1
    invoke-virtual {p0, p1, v0, v1, v2}, Lckj;->a(Landroid/graphics/Canvas;F[FF)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v3, p0, Lckj;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    iget-object v3, p0, Lckj;->s:Lclh;

    invoke-virtual {v3}, Lclh;->b()F

    move-result v3

    add-float/2addr v0, v3

    goto :goto_1

    .line 79
    :cond_3
    sget-object v3, Lcgd;->OUTSIDE_CHART:Lcgd;

    if-ne v4, v3, :cond_4

    .line 80
    iget-object v3, p0, Lckj;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 81
    iget-object v3, p0, Lckj;->s:Lclh;

    invoke-virtual {v3}, Lclh;->h()F

    move-result v3

    add-float/2addr v0, v3

    goto :goto_1

    .line 83
    :cond_4
    iget-object v3, p0, Lckj;->d:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 84
    iget-object v3, p0, Lckj;->s:Lclh;

    invoke-virtual {v3}, Lclh;->h()F

    move-result v3

    sub-float v0, v3, v0

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Canvas;F[FF)V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lckj;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 118
    :goto_0
    iget-object v1, p0, Lckj;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lckj;->g:Lcgb;

    iget v1, v1, Lcgb;->d:I

    .line 123
    :goto_1
    if-ge v0, v1, :cond_2

    .line 125
    iget-object v2, p0, Lckj;->g:Lcgb;

    invoke-virtual {v2, v0}, Lcgb;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, p3, v3

    add-float/2addr v3, p4

    iget-object v4, p0, Lckj;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lckj;->g:Lcgb;

    iget v1, v1, Lcgb;->d:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 129
    :cond_2
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 135
    iget-object v0, p0, Lckj;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->K()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lckj;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 141
    invoke-virtual {p0}, Lckj;->e()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 143
    invoke-virtual {p0}, Lckj;->f()[F

    move-result-object v2

    .line 145
    iget-object v0, p0, Lckj;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lckj;->g:Lcgb;

    invoke-virtual {v3}, Lcgb;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lckj;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lckj;->g:Lcgb;

    invoke-virtual {v3}, Lcgb;->f()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    iget-object v0, p0, Lckj;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lckj;->g:Lcgb;

    invoke-virtual {v3}, Lcgb;->t()Landroid/graphics/DashPathEffect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 149
    iget-object v3, p0, Lckj;->i:Landroid/graphics/Path;

    .line 150
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 153
    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 156
    invoke-virtual {p0, v3, v0, v2}, Lckj;->a(Landroid/graphics/Path;I[F)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lckj;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 157
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 153
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 163
    :cond_3
    iget-object v0, p0, Lckj;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lckj;->e(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 94
    iget-object v0, p0, Lckj;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckj;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lckj;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lckj;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lckj;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lckj;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object v0, p0, Lckj;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->L()Lcgc;

    move-result-object v0

    sget-object v1, Lcgc;->LEFT:Lcgc;

    if-ne v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lckj;->s:Lclh;

    invoke-virtual {v0}, Lclh;->g()F

    move-result v1

    iget-object v0, p0, Lckj;->s:Lclh;

    invoke-virtual {v0}, Lclh;->f()F

    move-result v2

    iget-object v0, p0, Lckj;->s:Lclh;

    invoke-virtual {v0}, Lclh;->g()F

    move-result v3

    iget-object v0, p0, Lckj;->s:Lclh;

    .line 102
    invoke-virtual {v0}, Lclh;->i()F

    move-result v4

    iget-object v5, p0, Lckj;->e:Landroid/graphics/Paint;

    move-object v0, p1

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lckj;->s:Lclh;

    invoke-virtual {v0}, Lclh;->h()F

    move-result v1

    iget-object v0, p0, Lckj;->s:Lclh;

    invoke-virtual {v0}, Lclh;->f()F

    move-result v2

    iget-object v0, p0, Lckj;->s:Lclh;

    invoke-virtual {v0}, Lclh;->h()F

    move-result v3

    iget-object v0, p0, Lckj;->s:Lclh;

    .line 105
    invoke-virtual {v0}, Lclh;->i()F

    move-result v4

    iget-object v5, p0, Lckj;->e:Landroid/graphics/Paint;

    move-object v0, p1

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 257
    iget-object v1, p0, Lckj;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->n()Ljava/util/List;

    move-result-object v2

    .line 259
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 346
    :cond_0
    return-void

    .line 262
    :cond_1
    iget-object v3, p0, Lckj;->o:[F

    .line 263
    aput v12, v3, v0

    .line 264
    aput v12, v3, v11

    .line 265
    iget-object v4, p0, Lckj;->n:Landroid/graphics/Path;

    .line 266
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    move v1, v0

    .line 268
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 270
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfw;

    .line 272
    invoke-virtual {v0}, Lcfw;->K()Z

    move-result v5

    if-nez v5, :cond_2

    .line 268
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 276
    iget-object v6, p0, Lckj;->p:Landroid/graphics/RectF;

    iget-object v7, p0, Lckj;->s:Lclh;

    invoke-virtual {v7}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 277
    iget-object v6, p0, Lckj;->p:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcfw;->b()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v6, v12, v7}, Landroid/graphics/RectF;->inset(FF)V

    .line 278
    iget-object v6, p0, Lckj;->p:Landroid/graphics/RectF;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 280
    iget-object v6, p0, Lckj;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 281
    iget-object v6, p0, Lckj;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v6, p0, Lckj;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->b()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 283
    iget-object v6, p0, Lckj;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->f()Landroid/graphics/DashPathEffect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 285
    invoke-virtual {v0}, Lcfw;->a()F

    move-result v6

    aput v6, v3, v11

    .line 287
    iget-object v6, p0, Lckj;->b:Lcle;

    invoke-virtual {v6, v3}, Lcle;->a([F)V

    .line 289
    iget-object v6, p0, Lckj;->s:Lclh;

    invoke-virtual {v6}, Lclh;->g()F

    move-result v6

    aget v7, v3, v11

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 290
    iget-object v6, p0, Lckj;->s:Lclh;

    invoke-virtual {v6}, Lclh;->h()F

    move-result v6

    aget v7, v3, v11

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    iget-object v6, p0, Lckj;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 293
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 296
    invoke-virtual {v0}, Lcfw;->i()Ljava/lang/String;

    move-result-object v6

    .line 299
    if-eqz v6, :cond_3

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 301
    iget-object v7, p0, Lckj;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->g()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget-object v7, p0, Lckj;->f:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 303
    iget-object v7, p0, Lckj;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->J()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    iget-object v7, p0, Lckj;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->H()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 305
    iget-object v7, p0, Lckj;->f:Landroid/graphics/Paint;

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 306
    iget-object v7, p0, Lckj;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->I()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 308
    iget-object v7, p0, Lckj;->f:Landroid/graphics/Paint;

    invoke-static {v7, v6}, Lclg;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    .line 309
    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lclg;->a(F)F

    move-result v8

    invoke-virtual {v0}, Lcfw;->F()F

    move-result v9

    add-float/2addr v8, v9

    .line 310
    invoke-virtual {v0}, Lcfw;->b()F

    move-result v9

    add-float/2addr v9, v7

    invoke-virtual {v0}, Lcfw;->G()F

    move-result v10

    add-float/2addr v9, v10

    .line 312
    invoke-virtual {v0}, Lcfw;->h()Lcfx;

    move-result-object v0

    .line 314
    sget-object v10, Lcfx;->RIGHT_TOP:Lcfx;

    if-ne v0, v10, :cond_4

    .line 316
    iget-object v0, p0, Lckj;->f:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 317
    iget-object v0, p0, Lckj;->s:Lclh;

    .line 318
    invoke-virtual {v0}, Lclh;->h()F

    move-result v0

    sub-float/2addr v0, v8

    aget v8, v3, v11

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lckj;->f:Landroid/graphics/Paint;

    .line 317
    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 344
    :cond_3
    :goto_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    .line 321
    :cond_4
    sget-object v10, Lcfx;->RIGHT_BOTTOM:Lcfx;

    if-ne v0, v10, :cond_5

    .line 323
    iget-object v0, p0, Lckj;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 324
    iget-object v0, p0, Lckj;->s:Lclh;

    .line 325
    invoke-virtual {v0}, Lclh;->h()F

    move-result v0

    sub-float/2addr v0, v8

    aget v7, v3, v11

    add-float/2addr v7, v9

    iget-object v8, p0, Lckj;->f:Landroid/graphics/Paint;

    .line 324
    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 328
    :cond_5
    sget-object v10, Lcfx;->LEFT_TOP:Lcfx;

    if-ne v0, v10, :cond_6

    .line 330
    iget-object v0, p0, Lckj;->f:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 331
    iget-object v0, p0, Lckj;->s:Lclh;

    .line 332
    invoke-virtual {v0}, Lclh;->g()F

    move-result v0

    add-float/2addr v0, v8

    aget v8, v3, v11

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lckj;->f:Landroid/graphics/Paint;

    .line 331
    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 337
    :cond_6
    iget-object v0, p0, Lckj;->f:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 338
    iget-object v0, p0, Lckj;->s:Lclh;

    .line 339
    invoke-virtual {v0}, Lclh;->b()F

    move-result v0

    add-float/2addr v0, v8

    aget v7, v3, v11

    add-float/2addr v7, v9

    iget-object v8, p0, Lckj;->f:Landroid/graphics/Paint;

    .line 338
    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public e()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lckj;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lckj;->s:Lclh;

    invoke-virtual {v1}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 172
    iget-object v0, p0, Lckj;->j:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget-object v2, p0, Lckj;->a:Lcfj;

    invoke-virtual {v2}, Lcfj;->f()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 173
    iget-object v0, p0, Lckj;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 224
    iget-object v1, p0, Lckj;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lckj;->s:Lclh;

    invoke-virtual {v2}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 225
    iget-object v1, p0, Lckj;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lckj;->g:Lcgb;

    invoke-virtual {v2}, Lcgb;->W()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 226
    iget-object v1, p0, Lckj;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 229
    iget-object v1, p0, Lckj;->b:Lcle;

    invoke-virtual {v1, v3, v3}, Lcle;->b(FF)Lckz;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lckj;->h:Landroid/graphics/Paint;

    iget-object v3, p0, Lckj;->g:Lcgb;

    invoke-virtual {v3}, Lcgb;->V()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget-object v2, p0, Lckj;->h:Landroid/graphics/Paint;

    iget-object v3, p0, Lckj;->g:Lcgb;

    invoke-virtual {v3}, Lcgb;->W()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    iget-object v2, p0, Lckj;->l:Landroid/graphics/Path;

    .line 235
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 237
    iget-object v3, p0, Lckj;->s:Lclh;

    invoke-virtual {v3}, Lclh;->g()F

    move-result v3

    iget-wide v4, v1, Lckz;->b:D

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 238
    iget-object v3, p0, Lckj;->s:Lclh;

    invoke-virtual {v3}, Lclh;->h()F

    move-result v3

    iget-wide v4, v1, Lckz;->b:D

    double-to-float v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    iget-object v1, p0, Lckj;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 243
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 244
    return-void
.end method

.method protected f()[F
    .locals 5

    .prologue
    .line 201
    iget-object v0, p0, Lckj;->k:[F

    array-length v0, v0

    iget-object v1, p0, Lckj;->g:Lcgb;

    iget v1, v1, Lcgb;->d:I

    mul-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lckj;->g:Lcgb;

    iget v0, v0, Lcgb;->d:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lckj;->k:[F

    .line 204
    :cond_0
    iget-object v1, p0, Lckj;->k:[F

    .line 206
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 208
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lckj;->g:Lcgb;

    iget-object v3, v3, Lcgb;->b:[F

    div-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    .line 206
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lckj;->b:Lcle;

    invoke-virtual {v0, v1}, Lcle;->a([F)V

    .line 212
    return-object v1
.end method
