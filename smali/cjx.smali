.class public Lcjx;
.super Lcka;
.source "SourceFile"


# instance fields
.field protected a:Lcii;

.field protected b:Landroid/graphics/Paint;

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/graphics/Canvas;

.field protected e:Landroid/graphics/Bitmap$Config;

.field protected l:Landroid/graphics/Path;

.field protected m:Landroid/graphics/Path;

.field protected n:Landroid/graphics/Path;

.field private o:[F

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcio;",
            "Lcjz;",
            ">;"
        }
    .end annotation
.end field

.field private q:[F


# direct methods
.method public constructor <init>(Lcii;Lcdq;Lclh;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p2, p3}, Lcka;-><init>(Lcdq;Lclh;)V

    .line 52
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcjx;->e:Landroid/graphics/Bitmap$Config;

    .line 54
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcjx;->l:Landroid/graphics/Path;

    .line 55
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcjx;->m:Landroid/graphics/Path;

    .line 282
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcjx;->o:[F

    .line 422
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcjx;->n:Landroid/graphics/Path;

    .line 576
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcjx;->p:Ljava/util/HashMap;

    .line 581
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcjx;->q:[F

    .line 60
    iput-object p1, p0, Lcjx;->a:Lcii;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcjx;->b:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcjx;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcjx;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    return-void
.end method

.method private a(Lcip;IILandroid/graphics/Path;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 482
    invoke-interface {p1}, Lcip;->W()Lchm;

    move-result-object v0

    iget-object v1, p0, Lcjx;->a:Lcii;

    invoke-interface {v0, p1, v1}, Lchm;->a(Lcip;Lcii;)F

    move-result v4

    .line 483
    iget-object v0, p0, Lcjx;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->a()F

    move-result v5

    .line 484
    invoke-interface {p1}, Lcip;->b()Lcgv;

    move-result-object v0

    sget-object v1, Lcgv;->STEPPED:Lcgv;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 487
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 489
    invoke-interface {p1, p2}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 491
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v3

    invoke-virtual {p4, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 492
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v3

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v1

    mul-float/2addr v1, v5

    invoke-virtual {p4, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    add-int/lit8 v1, p2, 0x1

    move-object v3, v2

    :goto_1
    if-gt v1, p3, :cond_2

    .line 499
    invoke-interface {p1, v1}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 501
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 502
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v6

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v2

    mul-float/2addr v2, v5

    invoke-virtual {p4, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    :cond_0
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v2

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v6

    mul-float/2addr v6, v5

    invoke-virtual {p4, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 497
    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_1

    .line 484
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 511
    :cond_2
    if-eqz v3, :cond_3

    .line 512
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v0

    invoke-virtual {p4, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 515
    :cond_3
    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    .line 516
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public a(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcjx;->e:Landroid/graphics/Bitmap$Config;

    .line 697
    invoke-virtual {p0}, Lcjx;->c()V

    .line 698
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v0, p0, Lcjx;->s:Lclh;

    invoke-virtual {v0}, Lclh;->o()F

    move-result v0

    float-to-int v1, v0

    .line 75
    iget-object v0, p0, Lcjx;->s:Lclh;

    invoke-virtual {v0}, Lclh;->n()F

    move-result v0

    float-to-int v2, v0

    .line 77
    iget-object v0, p0, Lcjx;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcjx;->c:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcjx;->c:Ljava/lang/ref/WeakReference;

    .line 79
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 81
    :cond_0
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcjx;->e:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcjx;->c:Ljava/lang/ref/WeakReference;

    .line 84
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcjx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcjx;->d:Landroid/graphics/Canvas;

    .line 89
    :cond_1
    iget-object v0, p0, Lcjx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 91
    iget-object v0, p0, Lcjx;->a:Lcii;

    invoke-interface {v0}, Lcii;->aL()Lcgt;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcgt;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcip;

    .line 95
    invoke-interface {v0}, Lcip;->B()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {p0, p1, v0}, Lcjx;->a(Landroid/graphics/Canvas;Lcip;)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcjx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 100
    :cond_4
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcip;)V
    .locals 2

    .prologue
    .line 104
    invoke-interface {p2}, Lcip;->I()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcip;->aa()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object v0, p0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcip;->i()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 110
    sget-object v0, Lcjy;->a:[I

    invoke-interface {p2}, Lcip;->b()Lcgv;

    move-result-object v1

    invoke-virtual {v1}, Lcgv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcjx;->b(Landroid/graphics/Canvas;Lcip;)V

    .line 126
    :goto_1
    iget-object v0, p0, Lcjx;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 118
    :pswitch_0
    invoke-virtual {p0, p2}, Lcjx;->b(Lcip;)V

    goto :goto_1

    .line 122
    :pswitch_1
    invoke-virtual {p0, p2}, Lcjx;->a(Lcip;)V

    goto :goto_1

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/graphics/Canvas;Lcip;Landroid/graphics/Path;Lcle;Lcjo;)V
    .locals 3

    .prologue
    .line 263
    invoke-interface {p2}, Lcip;->W()Lchm;

    move-result-object v0

    iget-object v1, p0, Lcjx;->a:Lcii;

    .line 264
    invoke-interface {v0, p2, v1}, Lchm;->a(Lcip;Lcii;)F

    move-result v0

    .line 266
    iget v1, p5, Lcjo;->a:I

    iget v2, p5, Lcjo;->c:I

    add-int/2addr v1, v2

    invoke-interface {p2, v1}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 267
    iget v1, p5, Lcjo;->a:I

    invoke-interface {p2, v1}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 270
    invoke-virtual {p4, p3}, Lcle;->a(Landroid/graphics/Path;)V

    .line 272
    invoke-interface {p2}, Lcip;->Y()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0, p1, p3, v0}, Lcjx;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-interface {p2}, Lcip;->X()I

    move-result v0

    invoke-interface {p2}, Lcip;->Z()I

    move-result v1

    invoke-virtual {p0, p1, p3, v0, v1}, Lcjx;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;Lcip;Lcle;Lcjo;)V
    .locals 8

    .prologue
    .line 434
    iget-object v3, p0, Lcjx;->n:Landroid/graphics/Path;

    .line 436
    iget v4, p4, Lcjo;->a:I

    .line 437
    iget v0, p4, Lcjo;->c:I

    iget v1, p4, Lcjo;->a:I

    add-int/2addr v1, v0

    .line 442
    const/4 v0, 0x0

    move v2, v0

    .line 446
    :cond_0
    mul-int/lit16 v0, v2, 0x80

    add-int v5, v4, v0

    .line 447
    add-int/lit16 v0, v5, 0x80

    .line 448
    if-le v0, v1, :cond_1

    move v0, v1

    .line 450
    :cond_1
    if-gt v5, v0, :cond_2

    .line 451
    invoke-direct {p0, p2, v5, v0, v3}, Lcjx;->a(Lcip;IILandroid/graphics/Path;)V

    .line 453
    invoke-virtual {p3, v3}, Lcle;->a(Landroid/graphics/Path;)V

    .line 455
    invoke-interface {p2}, Lcip;->Y()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 456
    if-eqz v6, :cond_3

    .line 458
    invoke-virtual {p0, p1, v3, v6}, Lcjx;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    .line 465
    :cond_2
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 467
    if-le v5, v0, :cond_0

    .line 469
    return-void

    .line 461
    :cond_3
    invoke-interface {p2}, Lcip;->X()I

    move-result v6

    invoke-interface {p2}, Lcip;->Z()I

    move-result v7

    invoke-virtual {p0, p1, v3, v6, v7}, Lcjx;->a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;[Lchv;)V
    .locals 10

    .prologue
    .line 664
    iget-object v0, p0, Lcjx;->a:Lcii;

    invoke-interface {v0}, Lcii;->aL()Lcgt;

    move-result-object v2

    .line 666
    array-length v3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, p2, v1

    .line 668
    invoke-virtual {v4}, Lchv;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Lcgt;->a(I)Lcio;

    move-result-object v0

    check-cast v0, Lcip;

    .line 670
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcip;->q()Z

    move-result v5

    if-nez v5, :cond_1

    .line 666
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 673
    :cond_1
    invoke-virtual {v4}, Lchv;->a()F

    move-result v5

    invoke-virtual {v4}, Lchv;->b()F

    move-result v6

    invoke-interface {v0, v5, v6}, Lcip;->b(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    .line 675
    invoke-virtual {p0, v5, v0}, Lcjx;->a(Lcom/github/mikephil/charting/data/Entry;Lcil;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 678
    iget-object v6, p0, Lcjx;->a:Lcii;

    invoke-interface {v0}, Lcip;->C()Lcgc;

    move-result-object v7

    invoke-interface {v6, v7}, Lcii;->a(Lcgc;)Lcle;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v7

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    iget-object v8, p0, Lcjx;->g:Lcdq;

    .line 679
    invoke-virtual {v8}, Lcdq;->a()F

    move-result v8

    mul-float/2addr v5, v8

    .line 678
    invoke-virtual {v6, v7, v5}, Lcle;->b(FF)Lckz;

    move-result-object v5

    .line 681
    iget-wide v6, v5, Lckz;->a:D

    double-to-float v6, v6

    iget-wide v8, v5, Lckz;->b:D

    double-to-float v7, v8

    invoke-virtual {v4, v6, v7}, Lchv;->a(FF)V

    .line 684
    iget-wide v6, v5, Lckz;->a:D

    double-to-float v4, v6

    iget-wide v6, v5, Lckz;->b:D

    double-to-float v5, v6

    invoke-virtual {p0, p1, v4, v5, v0}, Lcjx;->a(Landroid/graphics/Canvas;FFLcir;)V

    goto :goto_1

    .line 686
    :cond_2
    return-void
.end method

.method protected a(Lcip;)V
    .locals 11

    .prologue
    .line 131
    iget-object v0, p0, Lcjx;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->a()F

    move-result v9

    .line 133
    iget-object v0, p0, Lcjx;->a:Lcii;

    invoke-interface {p1}, Lcip;->C()Lcgc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcii;->a(Lcgc;)Lcle;

    move-result-object v10

    .line 135
    iget-object v0, p0, Lcjx;->f:Lcjo;

    iget-object v1, p0, Lcjx;->a:Lcii;

    invoke-virtual {v0, v1, p1}, Lcjo;->a(Lcid;Lcil;)V

    .line 137
    iget-object v0, p0, Lcjx;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 139
    iget-object v0, p0, Lcjx;->f:Lcjo;

    iget v0, v0, Lcjo;->c:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcjx;->f:Lcjo;

    iget v0, v0, Lcjo;->a:I

    invoke-interface {p1, v0}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lcjx;->l:Landroid/graphics/Path;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    mul-float/2addr v3, v9

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 147
    iget-object v0, p0, Lcjx;->f:Lcjo;

    iget v0, v0, Lcjo;->a:I

    add-int/lit8 v0, v0, 0x1

    move v7, v0

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcjx;->f:Lcjo;

    iget v0, v0, Lcjo;->c:I

    iget-object v1, p0, Lcjx;->f:Lcjo;

    iget v1, v1, Lcjo;->a:I

    add-int/2addr v0, v1

    if-gt v7, v0, :cond_0

    .line 150
    invoke-interface {p1, v7}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    .line 152
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v0

    .line 153
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v0

    .line 155
    iget-object v0, p0, Lcjx;->l:Landroid/graphics/Path;

    .line 156
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v2

    mul-float/2addr v2, v9

    .line 157
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    mul-float v4, v3, v9

    .line 158
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v5

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    mul-float v6, v3, v9

    move v3, v1

    .line 155
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 147
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-object v2, v8

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {p1}, Lcip;->ab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcjx;->m:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 166
    iget-object v0, p0, Lcjx;->m:Landroid/graphics/Path;

    iget-object v1, p0, Lcjx;->l:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 168
    iget-object v1, p0, Lcjx;->d:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcjx;->m:Landroid/graphics/Path;

    iget-object v5, p0, Lcjx;->f:Lcjo;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v10

    invoke-virtual/range {v0 .. v5}, Lcjx;->a(Landroid/graphics/Canvas;Lcip;Landroid/graphics/Path;Lcle;Lcjo;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcip;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v0, p0, Lcjx;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcjx;->l:Landroid/graphics/Path;

    invoke-virtual {v10, v0}, Lcle;->a(Landroid/graphics/Path;)V

    .line 177
    iget-object v0, p0, Lcjx;->d:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcjx;->l:Landroid/graphics/Path;

    iget-object v2, p0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lcjx;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 180
    return-void
.end method

.method public b()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcjx;->e:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 521
    iget-object v0, p0, Lcjx;->a:Lcii;

    invoke-virtual {p0, v0}, Lcjx;->a(Lcig;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 523
    iget-object v0, p0, Lcjx;->a:Lcii;

    invoke-interface {v0}, Lcii;->aL()Lcgt;

    move-result-object v0

    invoke-virtual {v0}, Lcgt;->i()Ljava/util/List;

    move-result-object v12

    .line 525
    const/4 v7, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 527
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcip;

    .line 529
    invoke-virtual {p0, v1}, Lcjx;->a(Lcio;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {p0, v1}, Lcjx;->b(Lcio;)V

    .line 535
    iget-object v0, p0, Lcjx;->a:Lcii;

    invoke-interface {v1}, Lcip;->C()Lcgc;

    move-result-object v2

    invoke-interface {v0, v2}, Lcii;->a(Lcgc;)Lcle;

    move-result-object v0

    .line 538
    invoke-interface {v1}, Lcip;->d()F

    move-result v2

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 540
    invoke-interface {v1}, Lcip;->F()Z

    move-result v3

    if-nez v3, :cond_5

    .line 541
    div-int/lit8 v2, v2, 0x2

    move v11, v2

    .line 543
    :goto_1
    iget-object v2, p0, Lcjx;->f:Lcjo;

    iget-object v3, p0, Lcjx;->a:Lcii;

    invoke-virtual {v2, v3, v1}, Lcjo;->a(Lcid;Lcil;)V

    .line 545
    iget-object v2, p0, Lcjx;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->b()F

    move-result v2

    iget-object v3, p0, Lcjx;->g:Lcdq;

    .line 546
    invoke-virtual {v3}, Lcdq;->a()F

    move-result v3

    iget-object v4, p0, Lcjx;->f:Lcjo;

    iget v4, v4, Lcjo;->a:I

    iget-object v5, p0, Lcjx;->f:Lcjo;

    iget v5, v5, Lcjo;->b:I

    .line 545
    invoke-virtual/range {v0 .. v5}, Lcle;->a(Lcip;FFII)[F

    move-result-object v13

    .line 548
    const/4 v0, 0x0

    :goto_2
    array-length v2, v13

    if-ge v0, v2, :cond_0

    .line 550
    aget v8, v13, v0

    .line 551
    add-int/lit8 v2, v0, 0x1

    aget v2, v13, v2

    .line 553
    iget-object v3, p0, Lcjx;->s:Lclh;

    invoke-virtual {v3, v8}, Lclh;->h(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 556
    iget-object v3, p0, Lcjx;->s:Lclh;

    invoke-virtual {v3, v8}, Lclh;->g(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcjx;->s:Lclh;

    invoke-virtual {v3, v2}, Lclh;->f(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 548
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 559
    :cond_3
    div-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcjx;->f:Lcjo;

    iget v4, v4, Lcjo;->a:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    .line 561
    invoke-interface {v1}, Lcip;->r()Lchn;

    move-result-object v4

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    int-to-float v3, v11

    sub-float v9, v2, v3

    div-int/lit8 v2, v0, 0x2

    .line 562
    invoke-interface {v1, v2}, Lcip;->i(I)I

    move-result v10

    move-object v2, p0

    move-object v3, p1

    .line 561
    invoke-virtual/range {v2 .. v10}, Lcjx;->a(Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_3

    .line 566
    :cond_4
    return-void

    :cond_5
    move v11, v2

    goto :goto_1
.end method

.method protected b(Landroid/graphics/Canvas;Lcip;)V
    .locals 12

    .prologue
    .line 292
    invoke-interface {p2}, Lcip;->I()I

    move-result v2

    .line 294
    invoke-interface {p2}, Lcip;->Q()Z

    move-result v5

    .line 295
    if-eqz v5, :cond_3

    const/4 v0, 0x4

    .line 297
    :goto_0
    iget-object v1, p0, Lcjx;->a:Lcii;

    invoke-interface {p2}, Lcip;->C()Lcgc;

    move-result-object v3

    invoke-interface {v1, v3}, Lcii;->a(Lcgc;)Lcle;

    move-result-object v6

    .line 299
    iget-object v1, p0, Lcjx;->g:Lcdq;

    invoke-virtual {v1}, Lcdq;->a()F

    move-result v7

    .line 301
    iget-object v1, p0, Lcjx;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    invoke-interface {p2}, Lcip;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    iget-object v1, p0, Lcjx;->d:Landroid/graphics/Canvas;

    .line 312
    :goto_1
    iget-object v3, p0, Lcjx;->f:Lcjo;

    iget-object v4, p0, Lcjx;->a:Lcii;

    invoke-virtual {v3, v4, p2}, Lcjo;->a(Lcid;Lcil;)V

    .line 315
    invoke-interface {p2}, Lcip;->ab()Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 316
    iget-object v3, p0, Lcjx;->f:Lcjo;

    invoke-virtual {p0, p1, p2, v6, v3}, Lcjx;->a(Landroid/graphics/Canvas;Lcip;Lcle;Lcjo;)V

    .line 320
    :cond_0
    invoke-interface {p2}, Lcip;->l()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_b

    .line 322
    iget-object v2, p0, Lcjx;->o:[F

    array-length v2, v2

    mul-int/lit8 v3, v0, 0x2

    if-gt v2, v3, :cond_1

    .line 323
    mul-int/lit8 v2, v0, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Lcjx;->o:[F

    .line 325
    :cond_1
    iget-object v2, p0, Lcjx;->f:Lcjo;

    iget v2, v2, Lcjo;->a:I

    :goto_2
    iget-object v3, p0, Lcjx;->f:Lcjo;

    iget v3, v3, Lcjo;->c:I

    iget-object v4, p0, Lcjx;->f:Lcjo;

    iget v4, v4, Lcjo;->a:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_6

    .line 327
    invoke-interface {p2, v2}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 328
    if-nez v3, :cond_5

    .line 325
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 295
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    move-object v1, p1

    .line 309
    goto :goto_1

    .line 330
    :cond_5
    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v9

    aput v9, v4, v8

    .line 331
    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    mul-float/2addr v3, v7

    aput v3, v4, v8

    .line 333
    iget-object v3, p0, Lcjx;->f:Lcjo;

    iget v3, v3, Lcjo;->b:I

    if-ge v2, v3, :cond_a

    .line 335
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p2, v3}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 337
    if-nez v3, :cond_7

    .line 419
    :cond_6
    :goto_4
    iget-object v0, p0, Lcjx;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 420
    return-void

    .line 339
    :cond_7
    if-eqz v5, :cond_9

    .line 340
    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x2

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v9

    aput v9, v4, v8

    .line 341
    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x3

    iget-object v9, p0, Lcjx;->o:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    aput v9, v4, v8

    .line 342
    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x4

    iget-object v9, p0, Lcjx;->o:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    aput v9, v4, v8

    .line 343
    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x5

    iget-object v9, p0, Lcjx;->o:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    aput v9, v4, v8

    .line 344
    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x6

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v9

    aput v9, v4, v8

    .line 345
    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x7

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    mul-float/2addr v3, v7

    aput v3, v4, v8

    .line 356
    :goto_5
    iget-object v3, p0, Lcjx;->o:[F

    invoke-virtual {v6, v3}, Lcle;->a([F)V

    .line 358
    iget-object v3, p0, Lcjx;->s:Lclh;

    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x0

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Lclh;->h(F)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 363
    iget-object v3, p0, Lcjx;->s:Lclh;

    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x2

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Lclh;->g(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcjx;->s:Lclh;

    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x1

    aget v4, v4, v8

    .line 364
    invoke-virtual {v3, v4}, Lclh;->i(F)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcjx;->s:Lclh;

    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x3

    aget v4, v4, v8

    .line 365
    invoke-virtual {v3, v4}, Lclh;->j(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    :cond_8
    iget-object v3, p0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-interface {p2, v2}, Lcip;->e(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    iget-object v3, p0, Lcjx;->o:[F

    const/4 v4, 0x0

    mul-int/lit8 v8, v0, 0x2

    iget-object v9, p0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 347
    :cond_9
    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x2

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v9

    aput v9, v4, v8

    .line 348
    iget-object v4, p0, Lcjx;->o:[F

    const/4 v8, 0x3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    mul-float/2addr v3, v7

    aput v3, v4, v8

    goto :goto_5

    .line 352
    :cond_a
    iget-object v3, p0, Lcjx;->o:[F

    const/4 v4, 0x2

    iget-object v8, p0, Lcjx;->o:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    aput v8, v3, v4

    .line 353
    iget-object v3, p0, Lcjx;->o:[F

    const/4 v4, 0x3

    iget-object v8, p0, Lcjx;->o:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    aput v8, v3, v4

    goto :goto_5

    .line 376
    :cond_b
    iget-object v3, p0, Lcjx;->o:[F

    array-length v3, v3

    mul-int v4, v2, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_c

    .line 377
    mul-int/2addr v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, Lcjx;->o:[F

    .line 381
    :cond_c
    iget-object v2, p0, Lcjx;->f:Lcjo;

    iget v2, v2, Lcjo;->a:I

    invoke-interface {p2, v2}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    .line 383
    if-eqz v2, :cond_6

    .line 385
    const/4 v3, 0x0

    .line 386
    iget-object v2, p0, Lcjx;->f:Lcjo;

    iget v2, v2, Lcjo;->a:I

    :goto_6
    iget-object v4, p0, Lcjx;->f:Lcjo;

    iget v4, v4, Lcjo;->c:I

    iget-object v8, p0, Lcjx;->f:Lcjo;

    iget v8, v8, Lcjo;->a:I

    add-int/2addr v4, v8

    if-gt v2, v4, :cond_11

    .line 388
    if-nez v2, :cond_e

    const/4 v4, 0x0

    :goto_7
    invoke-interface {p2, v4}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    .line 389
    invoke-interface {p2, v2}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    .line 391
    if-eqz v4, :cond_d

    if-nez v8, :cond_f

    .line 386
    :cond_d
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 388
    :cond_e
    add-int/lit8 v4, v2, -0x1

    goto :goto_7

    .line 393
    :cond_f
    iget-object v9, p0, Lcjx;->o:[F

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v11

    aput v11, v9, v3

    .line 394
    iget-object v9, p0, Lcjx;->o:[F

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v11

    mul-float/2addr v11, v7

    aput v11, v9, v10

    .line 396
    if-eqz v5, :cond_10

    .line 397
    iget-object v9, p0, Lcjx;->o:[F

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v11

    aput v11, v9, v3

    .line 398
    iget-object v3, p0, Lcjx;->o:[F

    add-int/lit8 v9, v10, 0x1

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v11

    mul-float/2addr v11, v7

    aput v11, v3, v10

    .line 399
    iget-object v3, p0, Lcjx;->o:[F

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v11

    aput v11, v3, v9

    .line 400
    iget-object v9, p0, Lcjx;->o:[F

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v4

    mul-float/2addr v4, v7

    aput v4, v9, v10

    .line 403
    :cond_10
    iget-object v4, p0, Lcjx;->o:[F

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v10

    aput v10, v4, v3

    .line 404
    iget-object v4, p0, Lcjx;->o:[F

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v8

    mul-float/2addr v8, v7

    aput v8, v4, v9

    goto :goto_8

    .line 407
    :cond_11
    if-lez v3, :cond_6

    .line 408
    iget-object v2, p0, Lcjx;->o:[F

    invoke-virtual {v6, v2}, Lcle;->a([F)V

    .line 410
    iget-object v2, p0, Lcjx;->f:Lcjo;

    iget v2, v2, Lcjo;->c:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 412
    iget-object v2, p0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcip;->n()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 414
    iget-object v2, p0, Lcjx;->o:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method protected b(Lcip;)V
    .locals 17

    .prologue
    .line 184
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcjx;->g:Lcdq;

    invoke-virtual {v3}, Lcdq;->b()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->g:Lcdq;

    invoke-virtual {v1}, Lcdq;->a()F

    move-result v13

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->a:Lcii;

    invoke-interface/range {p1 .. p1}, Lcip;->C()Lcgc;

    move-result-object v2

    invoke-interface {v1, v2}, Lcii;->a(Lcgc;)Lcle;

    move-result-object v14

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->f:Lcjo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcjx;->a:Lcii;

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcjo;->a(Lcid;Lcil;)V

    .line 191
    invoke-interface/range {p1 .. p1}, Lcip;->c()F

    move-result v15

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->l:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->f:Lcjo;

    iget v1, v1, Lcjo;->c:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->f:Lcjo;

    iget v1, v1, Lcjo;->a:I

    add-int/lit8 v1, v1, 0x1

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjx;->f:Lcjo;

    iget v2, v2, Lcjo;->a:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcjx;->f:Lcjo;

    iget v3, v3, Lcjo;->c:I

    add-int/2addr v2, v3

    .line 211
    add-int/lit8 v2, v1, -0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 212
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 214
    const/4 v2, -0x1

    .line 216
    if-nez v3, :cond_0

    .line 259
    :goto_0
    return-void

    .line 219
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->l:Landroid/graphics/Path;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v4

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    mul-float/2addr v5, v13

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->f:Lcjo;

    iget v1, v1, Lcjo;->a:I

    add-int/lit8 v1, v1, 0x1

    move v8, v1

    move v1, v2

    move-object v2, v3

    move-object/from16 v16, v3

    move-object v3, v11

    move-object/from16 v11, v16

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcjx;->f:Lcjo;

    iget v4, v4, Lcjo;->c:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcjx;->f:Lcjo;

    iget v5, v5, Lcjo;->a:I

    add-int/2addr v4, v5

    if-gt v8, v4, :cond_3

    .line 225
    if-ne v1, v8, :cond_1

    move-object v12, v2

    .line 227
    :goto_2
    add-int/lit8 v1, v8, 0x1

    invoke-interface/range {p1 .. p1}, Lcip;->I()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v9, v8, 0x1

    .line 228
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    .line 230
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v2, v1, v15

    .line 231
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v1

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v3

    sub-float/2addr v1, v3

    mul-float v3, v1, v15

    .line 232
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v1

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v4

    sub-float/2addr v1, v4

    mul-float v4, v1, v15

    .line 233
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v1

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    sub-float/2addr v1, v5

    mul-float v5, v1, v15

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->l:Landroid/graphics/Path;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v6

    add-float/2addr v2, v6

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v6

    add-float/2addr v3, v6

    mul-float/2addr v3, v13

    .line 236
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v6

    sub-float v4, v6, v4

    .line 237
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v6

    sub-float v5, v6, v5

    mul-float/2addr v5, v13

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v6

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v7

    mul-float/2addr v7, v13

    .line 235
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 221
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-object v2, v10

    move-object v3, v11

    move-object v11, v12

    move v1, v9

    goto :goto_1

    .line 225
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    goto :goto_2

    :cond_2
    move v9, v8

    .line 227
    goto :goto_3

    .line 242
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcip;->ab()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->m:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcjx;->l:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcjx;->d:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcjx;->m:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcjx;->f:Lcjo;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcjx;->a(Landroid/graphics/Canvas;Lcip;Landroid/graphics/Path;Lcle;Lcjo;)V

    .line 250
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-interface/range {p1 .. p1}, Lcip;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->l:Landroid/graphics/Path;

    invoke-virtual {v14, v1}, Lcle;->a(Landroid/graphics/Path;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->d:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcjx;->l:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcjx;->h:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 713
    iget-object v0, p0, Lcjx;->d:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcjx;->d:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 715
    iput-object v1, p0, Lcjx;->d:Landroid/graphics/Canvas;

    .line 717
    :cond_0
    iget-object v0, p0, Lcjx;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcjx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 719
    iget-object v0, p0, Lcjx;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 720
    iput-object v1, p0, Lcjx;->c:Ljava/lang/ref/WeakReference;

    .line 722
    :cond_1
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Lcjx;->d(Landroid/graphics/Canvas;)V

    .line 571
    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 585
    iget-object v0, p0, Lcjx;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 587
    iget-object v0, p0, Lcjx;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->a()F

    move-result v5

    .line 589
    iget-object v0, p0, Lcjx;->q:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 590
    iget-object v0, p0, Lcjx;->q:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 592
    iget-object v0, p0, Lcjx;->a:Lcii;

    invoke-interface {v0}, Lcii;->aL()Lcgt;

    move-result-object v0

    invoke-virtual {v0}, Lcgt;->i()Ljava/util/List;

    move-result-object v6

    .line 594
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 596
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcip;

    .line 598
    invoke-interface {v0}, Lcip;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcip;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-interface {v0}, Lcip;->I()I

    move-result v1

    if-nez v1, :cond_1

    .line 594
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 602
    :cond_1
    iget-object v1, p0, Lcjx;->b:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcip;->U()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 604
    iget-object v1, p0, Lcjx;->a:Lcii;

    invoke-interface {v0}, Lcip;->C()Lcgc;

    move-result-object v3

    invoke-interface {v1, v3}, Lcii;->a(Lcgc;)Lcle;

    move-result-object v7

    .line 606
    iget-object v1, p0, Lcjx;->f:Lcjo;

    iget-object v3, p0, Lcjx;->a:Lcii;

    invoke-virtual {v1, v3, v0}, Lcjo;->a(Lcid;Lcil;)V

    .line 608
    invoke-interface {v0}, Lcip;->d()F

    move-result v8

    .line 609
    invoke-interface {v0}, Lcip;->e()F

    move-result v1

    .line 610
    invoke-interface {v0}, Lcip;->V()Z

    move-result v3

    if-eqz v3, :cond_4

    cmpg-float v3, v1, v8

    if-gez v3, :cond_4

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    const/4 v1, 0x1

    move v4, v1

    .line 613
    :goto_1
    if-eqz v4, :cond_5

    .line 614
    invoke-interface {v0}, Lcip;->U()I

    move-result v1

    const v3, 0x112233

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    move v3, v1

    .line 618
    :goto_2
    iget-object v1, p0, Lcjx;->p:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 619
    iget-object v1, p0, Lcjx;->p:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcjz;

    .line 625
    :goto_3
    invoke-virtual {v1, v0}, Lcjz;->a(Lcip;)Z

    move-result v9

    .line 628
    if-eqz v9, :cond_2

    .line 629
    invoke-virtual {v1, v0, v4, v3}, Lcjz;->a(Lcip;ZZ)V

    .line 632
    :cond_2
    iget-object v3, p0, Lcjx;->f:Lcjo;

    iget v3, v3, Lcjo;->c:I

    iget-object v4, p0, Lcjx;->f:Lcjo;

    iget v4, v4, Lcjo;->a:I

    add-int/2addr v4, v3

    .line 634
    iget-object v3, p0, Lcjx;->f:Lcjo;

    iget v3, v3, Lcjo;->a:I

    :goto_4
    if-gt v3, v4, :cond_0

    .line 636
    invoke-interface {v0, v3}, Lcip;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    .line 638
    if-eqz v9, :cond_0

    .line 640
    iget-object v10, p0, Lcjx;->q:[F

    const/4 v11, 0x0

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v12

    aput v12, v10, v11

    .line 641
    iget-object v10, p0, Lcjx;->q:[F

    const/4 v11, 0x1

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v9

    mul-float/2addr v9, v5

    aput v9, v10, v11

    .line 643
    iget-object v9, p0, Lcjx;->q:[F

    invoke-virtual {v7, v9}, Lcle;->a([F)V

    .line 645
    iget-object v9, p0, Lcjx;->s:Lclh;

    iget-object v10, p0, Lcjx;->q:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Lclh;->h(F)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 648
    iget-object v9, p0, Lcjx;->s:Lclh;

    iget-object v10, p0, Lcjx;->q:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Lclh;->g(F)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcjx;->s:Lclh;

    iget-object v10, p0, Lcjx;->q:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    .line 649
    invoke-virtual {v9, v10}, Lclh;->f(F)Z

    move-result v9

    if-nez v9, :cond_7

    .line 634
    :cond_3
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 610
    :cond_4
    const/4 v1, 0x0

    move v4, v1

    goto :goto_1

    .line 614
    :cond_5
    const/4 v1, 0x0

    move v3, v1

    goto :goto_2

    .line 621
    :cond_6
    new-instance v1, Lcjz;

    const/4 v9, 0x0

    invoke-direct {v1, p0, v9}, Lcjz;-><init>(Lcjx;Lcjy;)V

    .line 622
    iget-object v9, p0, Lcjx;->p:Ljava/util/HashMap;

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 652
    :cond_7
    invoke-virtual {v1, v3}, Lcjz;->a(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 654
    if-eqz v9, :cond_3

    .line 655
    iget-object v10, p0, Lcjx;->q:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v10, v8

    iget-object v11, p0, Lcjx;->q:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-float/2addr v11, v8

    iget-object v12, p0, Lcjx;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 659
    :cond_8
    return-void
.end method
