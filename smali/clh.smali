.class public Lclh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/graphics/Matrix;

.field protected b:Landroid/graphics/RectF;

.field protected c:F

.field protected d:F

.field protected e:[F

.field protected f:Landroid/graphics/Matrix;

.field protected final g:[F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    .line 26
    iput v1, p0, Lclh;->c:F

    .line 27
    iput v1, p0, Lclh;->d:F

    .line 32
    iput v2, p0, Lclh;->h:F

    .line 37
    iput v3, p0, Lclh;->i:F

    .line 42
    iput v2, p0, Lclh;->j:F

    .line 47
    iput v3, p0, Lclh;->k:F

    .line 52
    iput v2, p0, Lclh;->l:F

    .line 57
    iput v2, p0, Lclh;->m:F

    .line 62
    iput v1, p0, Lclh;->n:F

    .line 67
    iput v1, p0, Lclh;->o:F

    .line 72
    iput v1, p0, Lclh;->p:F

    .line 77
    iput v1, p0, Lclh;->q:F

    .line 314
    new-array v0, v4, [F

    iput-object v0, p0, Lclh;->e:[F

    .line 380
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lclh;->f:Landroid/graphics/Matrix;

    .line 409
    new-array v0, v4, [F

    iput-object v0, p0, Lclh;->g:[F

    .line 84
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0}, Lclh;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lclh;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()Z
    .locals 2

    .prologue
    .line 679
    iget v0, p0, Lclh;->m:F

    iget v1, p0, Lclh;->h:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lclh;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public C()Z
    .locals 2

    .prologue
    .line 689
    iget v0, p0, Lclh;->l:F

    iget v1, p0, Lclh;->j:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lclh;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 718
    iget v0, p0, Lclh;->p:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lclh;->q:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Z
    .locals 2

    .prologue
    .line 727
    iget v0, p0, Lclh;->l:F

    iget v1, p0, Lclh;->j:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 736
    iget v0, p0, Lclh;->l:F

    iget v1, p0, Lclh;->k:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()Z
    .locals 2

    .prologue
    .line 745
    iget v0, p0, Lclh;->m:F

    iget v1, p0, Lclh;->h:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 754
    iget v0, p0, Lclh;->m:F

    iget v1, p0, Lclh;->i:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 422
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lclh;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 424
    if-eqz p3, :cond_0

    .line 425
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 427
    :cond_0
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 428
    return-object p1
.end method

.method public a([F)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 361
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 362
    invoke-virtual {p0, p1, v0}, Lclh;->a([FLandroid/graphics/Matrix;)V

    .line 363
    return-object v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 482
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 485
    :cond_0
    iput p1, p0, Lclh;->j:F

    .line 487
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lclh;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 488
    return-void
.end method

.method public a(FF)V
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lclh;->b()F

    move-result v0

    .line 96
    invoke-virtual {p0}, Lclh;->d()F

    move-result v1

    .line 97
    invoke-virtual {p0}, Lclh;->c()F

    move-result v2

    .line 98
    invoke-virtual {p0}, Lclh;->e()F

    move-result v3

    .line 100
    iput p2, p0, Lclh;->d:F

    .line 101
    iput p1, p0, Lclh;->c:F

    .line 103
    invoke-virtual {p0, v0, v1, v2, v3}, Lclh;->a(FFFF)V

    .line 104
    return-void
.end method

.method public a(FFFF)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v1, p0, Lclh;->c:F

    sub-float/2addr v1, p3

    iget v2, p0, Lclh;->d:F

    sub-float/2addr v2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 114
    return-void
.end method

.method public a(FFFFLandroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    .line 271
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {p5, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 272
    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 273
    return-void
.end method

.method public a(FFLandroid/graphics/Matrix;)V
    .locals 2

    .prologue
    const v1, 0x3fb33333    # 1.4f

    .line 201
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 202
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 203
    invoke-virtual {p3, v1, v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 204
    return-void
.end method

.method public a(Landroid/graphics/Matrix;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 229
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 230
    invoke-virtual {p1, v2, v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 231
    return-void
.end method

.method public a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 438
    iget-object v1, p0, Lclh;->g:[F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 440
    iget-object v1, p0, Lclh;->g:[F

    aget v2, v1, v8

    .line 441
    iget-object v1, p0, Lclh;->g:[F

    aget v1, v1, v7

    .line 443
    iget-object v3, p0, Lclh;->g:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    .line 444
    iget-object v4, p0, Lclh;->g:[F

    aget v4, v4, v9

    .line 447
    iget v5, p0, Lclh;->j:F

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v5, p0, Lclh;->k:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lclh;->l:F

    .line 450
    iget v1, p0, Lclh;->h:F

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p0, Lclh;->i:F

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lclh;->m:F

    .line 455
    if-eqz p2, :cond_0

    .line 456
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 457
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 460
    :goto_0
    neg-float v1, v1

    iget v4, p0, Lclh;->l:F

    sub-float/2addr v4, v6

    mul-float/2addr v1, v4

    .line 461
    iget v4, p0, Lclh;->p:F

    sub-float/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lclh;->p:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lclh;->n:F

    .line 463
    iget v1, p0, Lclh;->m:F

    sub-float/2addr v1, v6

    mul-float/2addr v0, v1

    .line 464
    iget v1, p0, Lclh;->q:F

    add-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lclh;->q:F

    neg-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lclh;->o:F

    .line 466
    iget-object v0, p0, Lclh;->g:[F

    iget v1, p0, Lclh;->n:F

    aput v1, v0, v8

    .line 467
    iget-object v0, p0, Lclh;->g:[F

    iget v1, p0, Lclh;->l:F

    aput v1, v0, v7

    .line 469
    iget-object v0, p0, Lclh;->g:[F

    const/4 v1, 0x5

    iget v2, p0, Lclh;->o:F

    aput v2, v0, v1

    .line 470
    iget-object v0, p0, Lclh;->g:[F

    iget v1, p0, Lclh;->m:F

    aput v1, v0, v9

    .line 472
    iget-object v0, p0, Lclh;->g:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 473
    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public a([FLandroid/graphics/Matrix;)V
    .locals 3

    .prologue
    .line 373
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 374
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 375
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0}, Lclh;->b()F

    move-result v1

    sub-float/2addr v0, v1

    .line 376
    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p0}, Lclh;->d()F

    move-result v2

    sub-float/2addr v1, v2

    .line 377
    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 378
    return-void
.end method

.method public a([FLandroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 394
    iget-object v0, p0, Lclh;->f:Landroid/graphics/Matrix;

    .line 395
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 396
    iget-object v1, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 398
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {p0}, Lclh;->b()F

    move-result v2

    sub-float/2addr v1, v2

    .line 399
    aget v2, p1, v4

    invoke-virtual {p0}, Lclh;->d()F

    move-result v3

    sub-float/2addr v2, v3

    .line 401
    neg-float v1, v1

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 403
    invoke-virtual {p0, v0, p2, v4}, Lclh;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 404
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget v0, p0, Lclh;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lclh;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public b(FF)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 196
    invoke-virtual {p0, p1, p2, v0}, Lclh;->a(FFLandroid/graphics/Matrix;)V

    .line 197
    return-object v0
.end method

.method public b(FFFF)Landroid/graphics/Matrix;
    .locals 6

    .prologue
    .line 264
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 265
    invoke-virtual/range {v0 .. v5}, Lclh;->a(FFFFLandroid/graphics/Matrix;)V

    .line 266
    return-object v5
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 497
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 498
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 500
    :cond_0
    iput p1, p0, Lclh;->k:F

    .line 502
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lclh;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 503
    return-void
.end method

.method public b(FFLandroid/graphics/Matrix;)V
    .locals 2

    .prologue
    const v1, 0x3f333333    # 0.7f

    .line 218
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 219
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 220
    invoke-virtual {p3, v1, v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 221
    return-void
.end method

.method public b(Landroid/graphics/Matrix;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 332
    iput v4, p0, Lclh;->j:F

    .line 333
    iput v4, p0, Lclh;->h:F

    .line 335
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 337
    iget-object v2, p0, Lclh;->e:[F

    move v0, v1

    .line 338
    :goto_0
    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    .line 339
    aput v5, v2, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 345
    const/4 v0, 0x2

    aput v5, v2, v0

    .line 346
    const/4 v0, 0x5

    aput v5, v2, v0

    .line 347
    aput v4, v2, v1

    .line 348
    const/4 v0, 0x4

    aput v4, v2, v0

    .line 350
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 351
    return-void
.end method

.method public c()F
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lclh;->c:F

    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public c(FF)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 213
    invoke-virtual {p0, p1, p2, v0}, Lclh;->b(FFLandroid/graphics/Matrix;)V

    .line 214
    return-object v0
.end method

.method public c(FFFF)Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 307
    iget-object v1, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 309
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 311
    return-object v0
.end method

.method public c(F)V
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 532
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 535
    :cond_0
    iput p1, p0, Lclh;->h:F

    .line 537
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lclh;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 538
    return-void
.end method

.method public c(FFLandroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 249
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 250
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 251
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public d(FF)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 243
    invoke-virtual {p0, p1, p2, v0}, Lclh;->c(FFLandroid/graphics/Matrix;)V

    .line 244
    return-object v0
.end method

.method public d(F)V
    .locals 2

    .prologue
    .line 547
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 548
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 550
    :cond_0
    iput p1, p0, Lclh;->i:F

    .line 552
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lclh;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 553
    return-void
.end method

.method public d(FFLandroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 291
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 292
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 293
    return-void
.end method

.method public e()F
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lclh;->d:F

    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public e(FF)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 284
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 285
    invoke-virtual {p0, p1, p2, v0}, Lclh;->d(FFLandroid/graphics/Matrix;)V

    .line 286
    return-object v0
.end method

.method public e(F)Z
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lclh;->g(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lclh;->h(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public f(FF)V
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 513
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 516
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 517
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 519
    :cond_1
    iput p1, p0, Lclh;->j:F

    .line 520
    iput p2, p0, Lclh;->k:F

    .line 522
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lclh;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 523
    return-void
.end method

.method public f(F)Z
    .locals 1

    .prologue
    .line 590
    invoke-virtual {p0, p1}, Lclh;->i(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lclh;->j(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public g(FF)V
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 557
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 560
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 561
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 563
    :cond_1
    iput p1, p0, Lclh;->h:F

    .line 564
    iput p2, p0, Lclh;->i:F

    .line 566
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lclh;->a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    .line 567
    return-void
.end method

.method public g(F)Z
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method public h(F)Z
    .locals 3

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 602
    mul-float v0, p1, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 603
    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(FF)Z
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lclh;->e(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lclh;->f(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method public i(F)Z
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()F
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public j(F)Z
    .locals 2

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 611
    mul-float v0, p1, v1

    float-to-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 612
    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()F
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public k(F)V
    .locals 1

    .prologue
    .line 699
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lclh;->p:F

    .line 700
    return-void
.end method

.method public l()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    return-object v0
.end method

.method public l(F)V
    .locals 1

    .prologue
    .line 709
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lclh;->q:F

    .line 710
    return-void
.end method

.method public m()Lcla;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v0, v1}, Lcla;->a(FF)Lcla;

    move-result-object v0

    return-object v0
.end method

.method public n()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lclh;->d:F

    return v0
.end method

.method public o()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lclh;->c:F

    return v0
.end method

.method public p()F
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lclh;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public q()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 322
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 323
    invoke-virtual {p0, v0}, Lclh;->b(Landroid/graphics/Matrix;)V

    .line 324
    return-object v0
.end method

.method public r()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lclh;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public s()F
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lclh;->l:F

    return v0
.end method

.method public t()F
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lclh;->m:F

    return v0
.end method

.method public u()F
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lclh;->j:F

    return v0
.end method

.method public v()F
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lclh;->k:F

    return v0
.end method

.method public w()F
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lclh;->h:F

    return v0
.end method

.method public x()F
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lclh;->i:F

    return v0
.end method

.method public y()F
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lclh;->n:F

    return v0
.end method

.method public z()F
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lclh;->o:F

    return v0
.end method
