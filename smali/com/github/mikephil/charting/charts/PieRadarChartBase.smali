.class public abstract Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcgo",
        "<+",
        "Lcio",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field protected c:Z

.field protected d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/high16 v0, 0x43870000    # 270.0f

    .line 53
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c:Z

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/high16 v0, 0x43870000    # 270.0f

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c:Z

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/high16 v0, 0x43870000    # 270.0f

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c:Z

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    .line 62
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c:Z

    return v0
.end method

.method public B()F
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    return v0
.end method

.method public C()F
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->R:Lclh;

    invoke-virtual {v0}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v0

    .line 426
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->aq()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 427
    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->an()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 428
    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->ao()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 429
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->ap()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 430
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public N()F
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    return v0
.end method

.method public O()F
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(F)I
.end method

.method public a(Lcla;FF)Lcla;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 297
    invoke-static {v0, v0}, Lcla;->a(FF)Lcla;

    move-result-object v0

    .line 298
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a(Lcla;FFLcla;)V

    .line 299
    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->a()V

    .line 68
    new-instance v0, Lcji;

    invoke-direct {v0, p0}, Lcji;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->N:Lcjc;

    .line 69
    return-void
.end method

.method public a(IFFLcew;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    .line 487
    const-string v0, "rotationAngle"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 489
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 490
    invoke-static {p4}, Lcdr;->a(Lcew;)Lcex;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 492
    new-instance v1, Lcfg;

    invoke-direct {v1, p0}, Lcfg;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 499
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public a(Lcla;FFLcla;)V
    .locals 6

    .prologue
    .line 303
    iget v0, p1, Lcla;->a:F

    float-to-double v0, v0

    float-to-double v2, p2

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p4, Lcla;->a:F

    .line 304
    iget v0, p1, Lcla;->b:F

    float-to-double v0, v0

    float-to-double v2, p2

    float-to-double v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p4, Lcla;->b:F

    .line 305
    return-void
.end method

.method public b(FF)F
    .locals 9

    .prologue
    const/high16 v8, 0x43b40000    # 360.0f

    .line 262
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->am()Lcla;

    move-result-object v1

    .line 264
    iget v0, v1, Lcla;->a:F

    sub-float v0, p1, v0

    float-to-double v2, v0

    iget v0, v1, Lcla;->b:F

    sub-float v0, p2, v0

    float-to-double v4, v0

    .line 265
    mul-double/2addr v2, v2

    mul-double v6, v4, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 266
    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 268
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 270
    iget v2, v1, Lcla;->a:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 271
    sub-float v0, v8, v0

    .line 274
    :cond_0
    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    .line 277
    cmpl-float v2, v0, v8

    if-lez v2, :cond_1

    .line 278
    sub-float/2addr v0, v8

    .line 280
    :cond_1
    invoke-static {v1}, Lcla;->a(Lcla;)V

    .line 282
    return v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public c(FF)F
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 317
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->am()Lcla;

    move-result-object v2

    .line 324
    iget v0, v2, Lcla;->a:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 325
    iget v0, v2, Lcla;->a:F

    sub-float v0, p1, v0

    .line 330
    :goto_0
    iget v1, v2, Lcla;->b:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 331
    iget v1, v2, Lcla;->b:F

    sub-float v1, p2, v1

    .line 337
    :goto_1
    float-to-double v4, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v0, v1

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 339
    invoke-static {v2}, Lcla;->a(Lcla;)V

    .line 341
    return v0

    .line 327
    :cond_0
    iget v0, v2, Lcla;->a:F

    sub-float/2addr v0, p1

    goto :goto_0

    .line 333
    :cond_1
    iget v1, v2, Lcla;->b:F

    sub-float/2addr v1, p2

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->N:Lcjc;

    instance-of v0, v0, Lcji;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->N:Lcjc;

    check-cast v0, Lcji;

    invoke-virtual {v0}, Lcji;->b()V

    .line 95
    :cond_0
    return-void
.end method

.method protected abstract i()F
.end method

.method public j()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->D:Lcgo;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b()V

    .line 104
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->O:Lcjv;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->D:Lcgo;

    invoke-virtual {v0, v1}, Lcjv;->a(Lcgo;)V

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->l()V

    goto :goto_0
.end method

.method protected abstract k()F
.end method

.method public l()V
    .locals 10

    .prologue
    const/high16 v6, 0x41700000    # 15.0f

    const/4 v2, 0x0

    .line 113
    .line 115
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v0}, Lcfn;->K()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v0}, Lcfn;->m()Z

    move-result v0

    if-nez v0, :cond_a

    .line 117
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    iget v0, v0, Lcfn;->a:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->R:Lclh;

    .line 118
    invoke-virtual {v1}, Lclh;->o()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->x()F

    move-result v3

    mul-float/2addr v1, v3

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 120
    sget-object v1, Lcfh;->c:[I

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->l()Lcfs;

    move-result-object v3

    invoke-virtual {v3}, Lcfs;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    move v1, v2

    move v3, v2

    .line 218
    :goto_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->k()F

    move-result v4

    add-float/2addr v3, v4

    .line 219
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->k()F

    move-result v4

    add-float/2addr v1, v4

    .line 220
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->k()F

    move-result v4

    add-float/2addr v2, v4

    .line 221
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->k()F

    move-result v4

    add-float/2addr v0, v4

    .line 224
    :goto_2
    iget v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    invoke-static {v4}, Lclg;->a(F)F

    move-result v4

    .line 226
    instance-of v5, p0, Lcom/github/mikephil/charting/charts/RadarChart;

    if-eqz v5, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->ad()Lcfz;

    move-result-object v5

    .line 229
    invoke-virtual {v5}, Lcfz;->K()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcfz;->h()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    iget v5, v5, Lcfz;->D:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->an()F

    move-result v5

    add-float/2addr v2, v5

    .line 235
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->ao()F

    move-result v5

    add-float/2addr v1, v5

    .line 236
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->ap()F

    move-result v5

    add-float/2addr v0, v5

    .line 237
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->aq()F

    move-result v5

    add-float/2addr v3, v5

    .line 239
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 240
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 241
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 242
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->k()F

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 244
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->R:Lclh;

    invoke-virtual {v4, v3, v2, v1, v0}, Lclh;->a(FFFF)V

    .line 246
    iget-boolean v4, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->C:Z

    if-eqz v4, :cond_2

    .line 247
    const-string v4, "MPAndroidChart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offsetLeft: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", offsetTop: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offsetRight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offsetBottom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_2
    return-void

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v1}, Lcfn;->j()Lcfr;

    move-result-object v1

    sget-object v3, Lcfr;->LEFT:Lcfr;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    .line 125
    invoke-virtual {v1}, Lcfn;->j()Lcfr;

    move-result-object v1

    sget-object v3, Lcfr;->RIGHT:Lcfr;

    if-ne v1, v3, :cond_9

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v1}, Lcfn;->k()Lcfu;

    move-result-object v1

    sget-object v3, Lcfu;->CENTER:Lcfu;

    if-ne v1, v3, :cond_4

    .line 128
    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lclg;->a(F)F

    move-result v1

    .line 130
    add-float/2addr v0, v1

    .line 167
    :goto_3
    sget-object v1, Lcfh;->b:[I

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->j()Lcfr;

    move-result-object v3

    invoke-virtual {v3}, Lcfr;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    move v1, v2

    move v3, v0

    move v0, v2

    .line 170
    goto/16 :goto_1

    .line 134
    :cond_4
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lclg;->a(F)F

    move-result v1

    .line 136
    add-float/2addr v1, v0

    .line 137
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    iget v0, v0, Lcfn;->b:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    iget v3, v3, Lcfn;->c:F

    add-float/2addr v3, v0

    .line 139
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->al()Lcla;

    move-result-object v4

    .line 141
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v0}, Lcfn;->j()Lcfr;

    move-result-object v0

    sget-object v5, Lcfr;->RIGHT:Lcfr;

    if-ne v0, v5, :cond_5

    .line 143
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    add-float/2addr v0, v6

    .line 145
    :goto_4
    add-float/2addr v3, v6

    .line 146
    invoke-virtual {p0, v0, v3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c(FF)F

    move-result v5

    .line 148
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->m()F

    move-result v6

    .line 149
    invoke-virtual {p0, v0, v3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b(FF)F

    move-result v0

    .line 148
    invoke-virtual {p0, v4, v6, v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a(Lcla;FF)Lcla;

    move-result-object v6

    .line 151
    iget v0, v6, Lcla;->a:F

    iget v7, v6, Lcla;->b:F

    invoke-virtual {p0, v0, v7}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c(FF)F

    move-result v0

    .line 152
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lclg;->a(F)F

    move-result v7

    .line 154
    iget v8, v4, Lcla;->b:F

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_6

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v3, v3, v8

    if-lez v3, :cond_6

    move v0, v1

    .line 162
    :goto_5
    invoke-static {v4}, Lcla;->a(Lcla;)V

    .line 163
    invoke-static {v6}, Lcla;->a(Lcla;)V

    goto :goto_3

    .line 143
    :cond_5
    sub-float v0, v1, v6

    goto :goto_4

    .line 156
    :cond_6
    cmpg-float v1, v5, v0

    if-gez v1, :cond_8

    .line 158
    sub-float/2addr v0, v5

    .line 159
    add-float/2addr v0, v7

    goto :goto_5

    :pswitch_2
    move v1, v0

    move v3, v2

    move v0, v2

    .line 174
    goto/16 :goto_1

    .line 177
    :pswitch_3
    sget-object v0, Lcfh;->a:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v1}, Lcfn;->k()Lcfu;

    move-result-object v1

    invoke-virtual {v1}, Lcfu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 179
    :pswitch_4
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    iget v0, v0, Lcfn;->b:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->R:Lclh;

    .line 180
    invoke-virtual {v1}, Lclh;->n()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->x()F

    move-result v3

    mul-float/2addr v1, v3

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v2

    move v3, v2

    move v9, v0

    move v0, v2

    move v2, v9

    .line 181
    goto/16 :goto_1

    .line 183
    :pswitch_5
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    iget v0, v0, Lcfn;->b:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->R:Lclh;

    .line 184
    invoke-virtual {v1}, Lclh;->n()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->x()F

    move-result v3

    mul-float/2addr v1, v3

    .line 183
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v2

    move v3, v2

    goto/16 :goto_1

    .line 195
    :pswitch_6
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v0}, Lcfn;->k()Lcfu;

    move-result-object v0

    sget-object v1, Lcfu;->TOP:Lcfu;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    .line 196
    invoke-virtual {v0}, Lcfn;->k()Lcfu;

    move-result-object v0

    sget-object v1, Lcfu;->BOTTOM:Lcfu;

    if-ne v0, v1, :cond_0

    .line 201
    :cond_7
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->i()F

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    iget v1, v1, Lcfn;->b:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->R:Lclh;

    .line 204
    invoke-virtual {v1}, Lclh;->n()F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->x()F

    move-result v3

    mul-float/2addr v1, v3

    .line 203
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 206
    sget-object v1, Lcfh;->a:[I

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->k()Lcfu;

    move-result-object v3

    invoke-virtual {v3}, Lcfu;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_7
    move v1, v2

    move v3, v2

    move v9, v0

    move v0, v2

    move v2, v9

    .line 209
    goto/16 :goto_1

    :pswitch_8
    move v1, v2

    move v3, v2

    .line 211
    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto/16 :goto_5

    :cond_9
    move v0, v2

    goto/16 :goto_3

    :cond_a
    move v0, v2

    move v1, v2

    move v3, v2

    goto/16 :goto_2

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 167
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 177
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 206
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public abstract m()F
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->N:Lcjc;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->N:Lcjc;

    invoke-virtual {v0, p0, p1}, Lcjc;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->D:Lcgo;

    invoke-virtual {v0}, Lcgo;->n()I

    move-result v0

    return v0
.end method

.method public setMinOffset(F)V
    .locals 0

    .prologue
    .line 416
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->d:F

    .line 417
    return-void
.end method

.method public setRotationAngle(F)V
    .locals 1

    .prologue
    .line 360
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    .line 361
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    invoke-static {v0}, Lclg;->d(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a:F

    .line 362
    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 0

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->c:Z

    .line 394
    return-void
.end method

.method public y()F
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->b:F

    return v0
.end method

.method public z()F
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->a:F

    return v0
.end method
