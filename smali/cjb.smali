.class public Lcjb;
.super Lcjc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcjc",
        "<",
        "Lcom/github/mikephil/charting/charts/BarLineChartBase",
        "<+",
        "Lcgg",
        "<+",
        "Lcil",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field private m:Landroid/graphics/Matrix;

.field private n:Landroid/graphics/Matrix;

.field private o:Lcla;

.field private p:Lcla;

.field private q:F

.field private r:F

.field private s:F

.field private t:Lcio;

.field private u:Landroid/view/VelocityTracker;

.field private v:J

.field private w:Lcla;

.field private x:Lcla;

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/BarLineChartBase",
            "<+",
            "Lcgg",
            "<+",
            "Lcil",
            "<+",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;>;>;",
            "Landroid/graphics/Matrix;",
            "F)V"
        }
    .end annotation

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcjc;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcjb;->m:Landroid/graphics/Matrix;

    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcjb;->n:Landroid/graphics/Matrix;

    .line 44
    invoke-static {v2, v2}, Lcla;->a(FF)Lcla;

    move-result-object v0

    iput-object v0, p0, Lcjb;->o:Lcla;

    .line 49
    invoke-static {v2, v2}, Lcla;->a(FF)Lcla;

    move-result-object v0

    iput-object v0, p0, Lcjb;->p:Lcla;

    .line 51
    iput v1, p0, Lcjb;->q:F

    .line 52
    iput v1, p0, Lcjb;->r:F

    .line 53
    iput v1, p0, Lcjb;->s:F

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcjb;->v:J

    .line 63
    invoke-static {v2, v2}, Lcla;->a(FF)Lcla;

    move-result-object v0

    iput-object v0, p0, Lcjb;->w:Lcla;

    .line 64
    invoke-static {v2, v2}, Lcla;->a(FF)Lcla;

    move-result-object v0

    iput-object v0, p0, Lcjb;->x:Lcla;

    .line 87
    iput-object p2, p0, Lcjb;->m:Landroid/graphics/Matrix;

    .line 89
    invoke-static {p3}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcjb;->y:F

    .line 91
    const/high16 v0, 0x40600000    # 3.5f

    invoke-static {v0}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcjb;->z:F

    .line 92
    return-void
.end method

.method private static a(Lcla;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 451
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 452
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 453
    div-float/2addr v0, v3

    iput v0, p0, Lcla;->a:F

    .line 454
    div-float v0, v1, v3

    iput v0, p0, Lcla;->b:F

    .line 455
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcjb;->n:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcjb;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 283
    iget-object v0, p0, Lcjb;->o:Lcla;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcla;->a:F

    .line 284
    iget-object v0, p0, Lcjb;->o:Lcla;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcla;->b:F

    .line 286
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d(FF)Lcil;

    move-result-object v0

    iput-object v0, p0, Lcjb;->t:Lcio;

    .line 287
    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 296
    sget-object v0, Lcjd;->DRAG:Lcjd;

    iput-object v0, p0, Lcjb;->a:Lcjd;

    .line 298
    iget-object v0, p0, Lcjb;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcjb;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 300
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af()Lcje;

    move-result-object v2

    .line 305
    invoke-direct {p0}, Lcjb;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    instance-of v0, v0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcjb;->o:Lcla;

    iget v1, v1, Lcla;->a:F

    sub-float/2addr v0, v1

    neg-float v1, v0

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcjb;->o:Lcla;

    iget v3, v3, Lcla;->b:F

    sub-float/2addr v0, v3

    .line 320
    :goto_0
    iget-object v3, p0, Lcjb;->m:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 322
    if-eqz v2, :cond_0

    .line 323
    invoke-interface {v2, p1, v1, v0}, Lcje;->b(Landroid/view/MotionEvent;FF)V

    .line 324
    :cond_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcjb;->o:Lcla;

    iget v1, v1, Lcla;->a:F

    sub-float v1, v0, v1

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcjb;->o:Lcla;

    iget v3, v3, Lcla;->b:F

    sub-float/2addr v0, v3

    neg-float v0, v0

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcjb;->o:Lcla;

    iget v1, v1, Lcla;->a:F

    sub-float v1, v0, v1

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcjb;->o:Lcla;

    iget v3, v3, Lcla;->b:F

    sub-float/2addr v0, v3

    goto :goto_0
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v9, :cond_2

    .line 335
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af()Lcje;

    move-result-object v6

    .line 338
    invoke-static {p1}, Lcjb;->g(Landroid/view/MotionEvent;)F

    move-result v3

    .line 340
    iget v0, p0, Lcjb;->z:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    .line 343
    iget-object v0, p0, Lcjb;->p:Lcla;

    iget v0, v0, Lcla;->a:F

    iget-object v5, p0, Lcjb;->p:Lcla;

    iget v5, v5, Lcla;->b:F

    invoke-virtual {p0, v0, v5}, Lcjb;->a(FF)Lcla;

    move-result-object v7

    .line 344
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aD()Lclh;

    move-result-object v8

    .line 347
    iget v0, p0, Lcjb;->i:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_8

    .line 349
    sget-object v0, Lcjd;->PINCH_ZOOM:Lcjd;

    iput-object v0, p0, Lcjb;->a:Lcjd;

    .line 351
    iget v0, p0, Lcjb;->s:F

    div-float/2addr v3, v0

    .line 353
    cmpg-float v0, v3, v4

    if-gez v0, :cond_3

    .line 355
    :goto_0
    if-eqz v1, :cond_4

    .line 356
    invoke-virtual {v8}, Lclh;->E()Z

    move-result v0

    move v5, v0

    .line 359
    :goto_1
    if-eqz v1, :cond_5

    .line 360
    invoke-virtual {v8}, Lclh;->G()Z

    move-result v0

    move v1, v0

    .line 363
    :goto_2
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v3

    .line 364
    :goto_3
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 366
    :goto_4
    if-nez v1, :cond_0

    if-eqz v5, :cond_1

    .line 368
    :cond_0
    iget-object v0, p0, Lcjb;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcjb;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 369
    iget-object v0, p0, Lcjb;->m:Landroid/graphics/Matrix;

    iget v1, v7, Lcla;->a:F

    iget v4, v7, Lcla;->b:F

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 371
    if-eqz v6, :cond_1

    .line 372
    invoke-interface {v6, p1, v2, v3}, Lcje;->a(Landroid/view/MotionEvent;FF)V

    .line 418
    :cond_1
    :goto_5
    invoke-static {v7}, Lcla;->a(Lcla;)V

    .line 421
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 353
    goto :goto_0

    .line 357
    :cond_4
    invoke-virtual {v8}, Lclh;->F()Z

    move-result v0

    move v5, v0

    goto :goto_1

    .line 361
    :cond_5
    invoke-virtual {v8}, Lclh;->H()Z

    move-result v0

    move v1, v0

    goto :goto_2

    :cond_6
    move v2, v4

    .line 363
    goto :goto_3

    :cond_7
    move v3, v4

    .line 364
    goto :goto_4

    .line 375
    :cond_8
    iget v0, p0, Lcjb;->i:I

    if-ne v0, v9, :cond_b

    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 377
    sget-object v0, Lcjd;->X_ZOOM:Lcjd;

    iput-object v0, p0, Lcjb;->a:Lcjd;

    .line 379
    invoke-static {p1}, Lcjb;->h(Landroid/view/MotionEvent;)F

    move-result v0

    .line 380
    iget v3, p0, Lcjb;->q:F

    div-float v3, v0, v3

    .line 382
    cmpg-float v0, v3, v4

    if-gez v0, :cond_9

    .line 383
    :goto_6
    if-eqz v1, :cond_a

    .line 384
    invoke-virtual {v8}, Lclh;->E()Z

    move-result v0

    .line 387
    :goto_7
    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcjb;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcjb;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 390
    iget-object v0, p0, Lcjb;->m:Landroid/graphics/Matrix;

    iget v1, v7, Lcla;->a:F

    iget v2, v7, Lcla;->b:F

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 392
    if-eqz v6, :cond_1

    .line 393
    invoke-interface {v6, p1, v3, v4}, Lcje;->a(Landroid/view/MotionEvent;FF)V

    goto :goto_5

    :cond_9
    move v1, v2

    .line 382
    goto :goto_6

    .line 385
    :cond_a
    invoke-virtual {v8}, Lclh;->F()Z

    move-result v0

    goto :goto_7

    .line 396
    :cond_b
    iget v0, p0, Lcjb;->i:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    sget-object v0, Lcjd;->Y_ZOOM:Lcjd;

    iput-object v0, p0, Lcjb;->a:Lcjd;

    .line 400
    invoke-static {p1}, Lcjb;->i(Landroid/view/MotionEvent;)F

    move-result v0

    .line 401
    iget v3, p0, Lcjb;->r:F

    div-float v3, v0, v3

    .line 403
    cmpg-float v0, v3, v4

    if-gez v0, :cond_c

    move v0, v1

    .line 404
    :goto_8
    if-eqz v0, :cond_d

    .line 405
    invoke-virtual {v8}, Lclh;->G()Z

    move-result v0

    .line 408
    :goto_9
    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcjb;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcjb;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 411
    iget-object v0, p0, Lcjb;->m:Landroid/graphics/Matrix;

    iget v1, v7, Lcla;->a:F

    iget v2, v7, Lcla;->b:F

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 413
    if-eqz v6, :cond_1

    .line 414
    invoke-interface {v6, p1, v4, v3}, Lcje;->a(Landroid/view/MotionEvent;FF)V

    goto/16 :goto_5

    :cond_c
    move v0, v2

    .line 403
    goto :goto_8

    .line 406
    :cond_d
    invoke-virtual {v8}, Lclh;->H()Z

    move-result v0

    goto :goto_9
.end method

.method private f(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(FF)Lchv;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcjb;->j:Lchv;

    invoke-virtual {v1, v0}, Lchv;->a(Lchv;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iput-object v1, p0, Lcjb;->j:Lchv;

    .line 434
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lchv;Z)V

    .line 436
    :cond_0
    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcjb;->t:Lcio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcjb;->t:Lcio;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v1, p0, Lcjb;->t:Lcio;

    .line 526
    invoke-interface {v1}, Lcio;->C()Lcgc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d(Lcgc;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    .line 526
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Landroid/view/MotionEvent;)F
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 464
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 465
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 466
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static h(Landroid/view/MotionEvent;)F
    .locals 2

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 478
    return v0
.end method

.method private static i(Landroid/view/MotionEvent;)F
    .locals 2

    .prologue
    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 490
    return v0
.end method


# virtual methods
.method public a()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcjb;->m:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public a(FF)Lcla;
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aD()Lclh;

    move-result-object v1

    .line 506
    invoke-virtual {v1}, Lclh;->b()F

    move-result v0

    sub-float v2, p1, v0

    .line 510
    invoke-direct {p0}, Lcjb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v1}, Lclh;->d()F

    move-result v0

    sub-float v0, p2, v0

    neg-float v0, v0

    .line 516
    :goto_0
    invoke-static {v2, v0}, Lcla;->a(FF)Lcla;

    move-result-object v0

    return-object v0

    .line 513
    :cond_0
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {v1}, Lclh;->e()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 550
    invoke-static {p1}, Lclg;->a(F)F

    move-result v0

    iput v0, p0, Lcjb;->y:F

    .line 551
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 630
    iget-object v0, p0, Lcjb;->x:Lcla;

    iput v1, v0, Lcla;->a:F

    .line 631
    iget-object v0, p0, Lcjb;->x:Lcla;

    iput v1, v0, Lcla;->b:F

    .line 632
    return-void
.end method

.method public c()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    .line 636
    iget-object v0, p0, Lcjb;->x:Lcla;

    iget v0, v0, Lcla;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcjb;->x:Lcla;

    iget v0, v0, Lcla;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 671
    :goto_0
    return-void

    .line 639
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 641
    iget-object v3, p0, Lcjb;->x:Lcla;

    iget v4, v3, Lcla;->a:F

    iget-object v2, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ac()F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, v3, Lcla;->a:F

    .line 642
    iget-object v3, p0, Lcjb;->x:Lcla;

    iget v4, v3, Lcla;->b:F

    iget-object v2, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ac()F

    move-result v2

    mul-float/2addr v2, v4

    iput v2, v3, Lcla;->b:F

    .line 644
    iget-wide v2, p0, Lcjb;->v:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 646
    iget-object v3, p0, Lcjb;->x:Lcla;

    iget v3, v3, Lcla;->a:F

    mul-float/2addr v3, v2

    .line 647
    iget-object v4, p0, Lcjb;->x:Lcla;

    iget v4, v4, Lcla;->b:F

    mul-float/2addr v2, v4

    .line 649
    iget-object v4, p0, Lcjb;->w:Lcla;

    iget v5, v4, Lcla;->a:F

    add-float/2addr v3, v5

    iput v3, v4, Lcla;->a:F

    .line 650
    iget-object v3, p0, Lcjb;->w:Lcla;

    iget v4, v3, Lcla;->b:F

    add-float/2addr v2, v4

    iput v2, v3, Lcla;->b:F

    .line 652
    const/4 v4, 0x2

    iget-object v2, p0, Lcjb;->w:Lcla;

    iget v5, v2, Lcla;->a:F

    iget-object v2, p0, Lcjb;->w:Lcla;

    iget v6, v2, Lcla;->b:F

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 654
    invoke-direct {p0, v2}, Lcjb;->d(Landroid/view/MotionEvent;)V

    .line 655
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 656
    iget-object v2, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aD()Lclh;

    move-result-object v2

    iget-object v3, p0, Lcjb;->m:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v2, v3, v4, v7}, Lclh;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcjb;->m:Landroid/graphics/Matrix;

    .line 658
    iput-wide v0, p0, Lcjb;->v:J

    .line 660
    iget-object v0, p0, Lcjb;->x:Lcla;

    iget v0, v0, Lcla;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-gez v0, :cond_1

    iget-object v0, p0, Lcjb;->x:Lcla;

    iget v0, v0, Lcla;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v8

    if-ltz v0, :cond_2

    .line 661
    :cond_1
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v0}, Lclg;->a(Landroid/view/View;)V

    goto/16 :goto_0

    .line 666
    :cond_2
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()V

    .line 667
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 669
    invoke-virtual {p0}, Lcjb;->b()V

    goto/16 :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const v3, 0x3fb33333    # 1.4f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 556
    sget-object v0, Lcjd;->DOUBLE_TAP:Lcjd;

    iput-object v0, p0, Lcjb;->a:Lcjd;

    .line 558
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af()Lcje;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_0

    .line 561
    invoke-interface {v0, p1}, Lcje;->b(Landroid/view/MotionEvent;)V

    .line 565
    :cond_0
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aC()Lcgo;

    move-result-object v0

    check-cast v0, Lcgg;

    invoke-virtual {v0}, Lcgg;->n()I

    move-result v0

    if-lez v0, :cond_2

    .line 567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcjb;->a(FF)Lcla;

    move-result-object v5

    .line 569
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v1, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    :goto_0
    iget-object v1, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget v1, v5, Lcla;->a:F

    iget v4, v5, Lcla;->b:F

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(FFFF)V

    .line 571
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    const-string v0, "BarlineChartTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Double-Tap, Zooming In, x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Lcla;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Lcla;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_1
    invoke-static {v5}, Lcla;->a(Lcla;)V

    .line 578
    :cond_2
    invoke-super {p0, p1}, Lcjc;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_3
    move v2, v4

    .line 569
    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lcjd;->FLING:Lcjd;

    iput-object v0, p0, Lcjb;->a:Lcjd;

    .line 620
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af()Lcje;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_0

    .line 623
    invoke-interface {v0, p1, p2, p3, p4}, Lcje;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 626
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcjc;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcjd;->LONG_PRESS:Lcjd;

    iput-object v0, p0, Lcjb;->a:Lcjd;

    .line 586
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af()Lcje;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_0

    .line 590
    invoke-interface {v0, p1}, Lcje;->a(Landroid/view/MotionEvent;)V

    .line 592
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 597
    sget-object v0, Lcjd;->SINGLE_TAP:Lcjd;

    iput-object v0, p0, Lcjb;->a:Lcjd;

    .line 599
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->af()Lcje;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0, p1}, Lcje;->c(Landroid/view/MotionEvent;)V

    .line 605
    :cond_0
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->X()Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0

    .line 609
    :cond_1
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(FF)Lchv;

    move-result-object v0

    .line 610
    invoke-virtual {p0, v0, p1}, Lcjb;->a(Lchv;Landroid/view/MotionEvent;)V

    .line 612
    invoke-super {p0, p1}, Lcjc;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v8, 0x1

    .line 98
    iget-object v0, p0, Lcjb;->u:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcjb;->u:Landroid/view/VelocityTracker;

    .line 101
    :cond_0
    iget-object v0, p0, Lcjb;->u:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 104
    iget-object v0, p0, Lcjb;->u:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcjb;->u:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcjb;->u:Landroid/view/VelocityTracker;

    .line 110
    :cond_1
    iget v0, p0, Lcjb;->i:I

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcjb;->k:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 114
    :cond_2
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w()Z

    move-result v0

    if-nez v0, :cond_3

    .line 267
    :goto_0
    return v8

    .line 118
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 265
    :cond_4
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aD()Lclh;

    move-result-object v0

    iget-object v1, p0, Lcjb;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0, v1, v2, v8}, Lclh;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcjb;->m:Landroid/graphics/Matrix;

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p0, p2}, Lcjb;->a(Landroid/view/MotionEvent;)V

    .line 124
    invoke-virtual {p0}, Lcjb;->b()V

    .line 126
    invoke-direct {p0, p2}, Lcjb;->c(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 131
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 133
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ay()V

    .line 135
    invoke-direct {p0, p2}, Lcjb;->c(Landroid/view/MotionEvent;)V

    .line 138
    invoke-static {p2}, Lcjb;->h(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcjb;->q:F

    .line 141
    invoke-static {p2}, Lcjb;->i(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcjb;->r:F

    .line 144
    invoke-static {p2}, Lcjb;->g(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcjb;->s:F

    .line 146
    iget v0, p0, Lcjb;->s:F

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 148
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    iput v10, p0, Lcjb;->i:I

    .line 160
    :cond_5
    :goto_2
    iget-object v0, p0, Lcjb;->p:Lcla;

    invoke-static {v0, p2}, Lcjb;->a(Lcla;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 151
    :cond_6
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v()Z

    move-result v3

    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w()Z

    move-result v0

    if-eq v3, v0, :cond_8

    .line 152
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    iput v0, p0, Lcjb;->i:I

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    .line 154
    :cond_8
    iget v0, p0, Lcjb;->q:F

    iget v3, p0, Lcjb;->r:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    :goto_4
    iput v1, p0, Lcjb;->i:I

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_4

    .line 165
    :pswitch_3
    iget v0, p0, Lcjb;->i:I

    if-ne v0, v8, :cond_a

    .line 167
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ay()V

    .line 168
    invoke-direct {p0, p2}, Lcjb;->d(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 170
    :cond_a
    iget v0, p0, Lcjb;->i:I

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcjb;->i:I

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcjb;->i:I

    if-ne v0, v10, :cond_d

    .line 172
    :cond_b
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ay()V

    .line 174
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    :cond_c
    invoke-direct {p0, p2}, Lcjb;->e(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 177
    :cond_d
    iget v0, p0, Lcjb;->i:I

    if-nez v0, :cond_4

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcjb;->o:Lcla;

    iget v1, v1, Lcla;->a:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcjb;->o:Lcla;

    iget v3, v3, Lcla;->b:F

    invoke-static {v0, v1, v2, v3}, Lcjb;->a(FFFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcjb;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 181
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 183
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->F()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 184
    iput v8, p0, Lcjb;->i:I

    goto/16 :goto_1

    .line 187
    :cond_e
    sget-object v0, Lcjd;->DRAG:Lcjd;

    iput-object v0, p0, Lcjb;->a:Lcjd;

    .line 189
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    invoke-direct {p0, p2}, Lcjb;->f(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 193
    :cond_f
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    sget-object v0, Lcjd;->DRAG:Lcjd;

    iput-object v0, p0, Lcjb;->a:Lcjd;

    .line 195
    iput v8, p0, Lcjb;->i:I

    goto/16 :goto_1

    .line 202
    :pswitch_4
    iget-object v0, p0, Lcjb;->u:Landroid/view/VelocityTracker;

    .line 203
    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 204
    const/16 v4, 0x3e8

    invoke-static {}, Lclg;->c()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 205
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    .line 206
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 208
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {}, Lclg;->b()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_10

    .line 209
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {}, Lclg;->b()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_11

    .line 211
    :cond_10
    iget v0, p0, Lcjb;->i:I

    if-ne v0, v8, :cond_11

    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ab()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 213
    invoke-virtual {p0}, Lcjb;->b()V

    .line 215
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcjb;->v:J

    .line 217
    iget-object v0, p0, Lcjb;->w:Lcla;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Lcla;->a:F

    .line 218
    iget-object v0, p0, Lcjb;->w:Lcla;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Lcla;->b:F

    .line 220
    iget-object v0, p0, Lcjb;->x:Lcla;

    iput v3, v0, Lcla;->a:F

    .line 221
    iget-object v0, p0, Lcjb;->x:Lcla;

    iput v4, v0, Lcla;->b:F

    .line 223
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    invoke-static {v0}, Lclg;->a(Landroid/view/View;)V

    .line 228
    :cond_11
    iget v0, p0, Lcjb;->i:I

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcjb;->i:I

    if-eq v0, v2, :cond_12

    iget v0, p0, Lcjb;->i:I

    if-eq v0, v10, :cond_12

    iget v0, p0, Lcjb;->i:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    .line 236
    :cond_12
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()V

    .line 237
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 240
    :cond_13
    iput v9, p0, Lcjb;->i:I

    .line 241
    iget-object v0, p0, Lcjb;->l:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->az()V

    .line 243
    iget-object v0, p0, Lcjb;->u:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_14

    .line 244
    iget-object v0, p0, Lcjb;->u:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcjb;->u:Landroid/view/VelocityTracker;

    .line 248
    :cond_14
    invoke-virtual {p0, p2}, Lcjb;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 252
    :pswitch_5
    iget-object v0, p0, Lcjb;->u:Landroid/view/VelocityTracker;

    invoke-static {p2, v0}, Lclg;->a(Landroid/view/MotionEvent;Landroid/view/VelocityTracker;)V

    .line 254
    const/4 v0, 0x5

    iput v0, p0, Lcjb;->i:I

    goto/16 :goto_1

    .line 259
    :pswitch_6
    iput v9, p0, Lcjb;->i:I

    .line 260
    invoke-virtual {p0, p2}, Lcjb;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
