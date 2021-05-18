.class public abstract Lcom/github/mikephil/charting/charts/BarLineChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source "SourceFile"

# interfaces
.implements Lcid;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcgg",
        "<+",
        "Lcil",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<TT;>;",
        "Lcid;"
    }
.end annotation


# instance fields
.field protected A:[F

.field private a:Z

.field private ah:Z

.field private ai:Z

.field private aj:J

.field private ak:J

.field private al:Landroid/graphics/RectF;

.field private am:Z

.field protected b:I

.field protected c:Z

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Landroid/graphics/Paint;

.field protected h:Landroid/graphics/Paint;

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:F

.field protected m:Z

.field protected n:Lcjh;

.field protected o:Lcgb;

.field protected p:Lcgb;

.field protected q:Lckj;

.field protected r:Lckj;

.field protected s:Lcle;

.field protected t:Lcle;

.field protected u:Lckg;

.field protected v:Landroid/graphics/Matrix;

.field protected w:Landroid/graphics/Matrix;

.field protected x:[F

.field protected y:Lckz;

.field protected z:Lckz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;)V

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b:I

    .line 58
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c:Z

    .line 65
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d:Z

    .line 70
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e:Z

    .line 76
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f:Z

    .line 81
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a:Z

    .line 83
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ah:Z

    .line 84
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ai:Z

    .line 96
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i:Z

    .line 98
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j:Z

    .line 100
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k:Z

    .line 105
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    .line 110
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    .line 182
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aj:J

    .line 183
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ak:J

    .line 444
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->al:Landroid/graphics/RectF;

    .line 574
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    .line 711
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w:Landroid/graphics/Matrix;

    .line 950
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->am:Z

    .line 1025
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:[F

    .line 1313
    invoke-static {v4, v5, v4, v5}, Lckz;->a(DD)Lckz;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y:Lckz;

    .line 1332
    invoke-static {v4, v5, v4, v5}, Lckz;->a(DD)Lckz;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->z:Lckz;

    .line 1578
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:[F

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b:I

    .line 58
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c:Z

    .line 65
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d:Z

    .line 70
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e:Z

    .line 76
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f:Z

    .line 81
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a:Z

    .line 83
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ah:Z

    .line 84
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ai:Z

    .line 96
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i:Z

    .line 98
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j:Z

    .line 100
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k:Z

    .line 105
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    .line 110
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    .line 182
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aj:J

    .line 183
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ak:J

    .line 444
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->al:Landroid/graphics/RectF;

    .line 574
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    .line 711
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w:Landroid/graphics/Matrix;

    .line 950
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->am:Z

    .line 1025
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:[F

    .line 1313
    invoke-static {v4, v5, v4, v5}, Lckz;->a(DD)Lckz;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y:Lckz;

    .line 1332
    invoke-static {v4, v5, v4, v5}, Lckz;->a(DD)Lckz;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->z:Lckz;

    .line 1578
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:[F

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b:I

    .line 58
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c:Z

    .line 65
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d:Z

    .line 70
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e:Z

    .line 76
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f:Z

    .line 81
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a:Z

    .line 83
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ah:Z

    .line 84
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ai:Z

    .line 96
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i:Z

    .line 98
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j:Z

    .line 100
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k:Z

    .line 105
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    .line 110
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    .line 182
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aj:J

    .line 183
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ak:J

    .line 444
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->al:Landroid/graphics/RectF;

    .line 574
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    .line 711
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w:Landroid/graphics/Matrix;

    .line 950
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->am:Z

    .line 1025
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:[F

    .line 1313
    invoke-static {v4, v5, v4, v5}, Lckz;->a(DD)Lckz;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y:Lckz;

    .line 1332
    invoke-static {v4, v5, v4, v5}, Lckz;->a(DD)Lckz;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->z:Lckz;

    .line 1578
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:[F

    .line 140
    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    .prologue
    .line 1222
    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 1236
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    return v0
.end method

.method public C()F
    .locals 4

    .prologue
    .line 1323
    sget-object v0, Lcgc;->LEFT:Lcgc;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1}, Lclh;->g()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    .line 1324
    invoke-virtual {v2}, Lclh;->i()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y:Lckz;

    .line 1323
    invoke-virtual {v0, v1, v2, v3}, Lcle;->a(FFLckz;)V

    .line 1325
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v0, v0, Lcfz;->t:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->y:Lckz;

    iget-wide v2, v2, Lckz;->a:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1326
    return v0
.end method

.method public D()F
    .locals 4

    .prologue
    .line 1342
    sget-object v0, Lcgc;->LEFT:Lcgc;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1}, Lclh;->h()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    .line 1343
    invoke-virtual {v2}, Lclh;->i()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->z:Lckz;

    .line 1342
    invoke-virtual {v0, v1, v2, v3}, Lcle;->a(FFLckz;)V

    .line 1344
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v0, v0, Lcfz;->s:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->z:Lckz;

    iget-wide v2, v2, Lckz;->a:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1345
    return v0
.end method

.method public E()F
    .locals 2

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0}, Lclh;->A()Z

    move-result v0

    return v0
.end method

.method public G()Lcgb;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    return-object v0
.end method

.method public H()Lcgb;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    return-object v0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 1441
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0}, Lclh;->D()Z

    move-result v0

    return v0
.end method

.method public K()Lckg;
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lckg;

    return-object v0
.end method

.method public L()Lckj;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lckj;

    return-object v0
.end method

.method public M()Lckj;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lckj;

    return-object v0
.end method

.method public N()F
    .locals 2

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget v0, v0, Lcgb;->s:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget v1, v1, Lcgb;->s:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public O()F
    .locals 2

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget v0, v0, Lcgb;->t:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget v1, v1, Lcgb;->t:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    invoke-virtual {v0}, Lcgb;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    const/4 v0, 0x1

    .line 1530
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    invoke-virtual {v0}, Lcgb;->R()Z

    move-result v0

    goto :goto_0
.end method

.method public Q()Z
    .locals 1

    .prologue
    .line 1550
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c:Z

    return v0
.end method

.method public synthetic R()Lcgg;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->aC()Lcgo;

    move-result-object v0

    check-cast v0, Lcgg;

    return-object v0
.end method

.method public a(I)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1566
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->a(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 1567
    if-eqz v0, :cond_0

    .line 1575
    :goto_0
    return-object v0

    .line 1570
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1575
    const/4 v0, 0x0

    goto :goto_0

    .line 1572
    :pswitch_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    goto :goto_0

    .line 1570
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/github/mikephil/charting/data/Entry;Lcgc;)Lcla;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1037
    if-nez p1, :cond_0

    .line 1038
    const/4 v0, 0x0

    .line 1045
    :goto_0
    return-object v0

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:[F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v1

    aput v1, v0, v2

    .line 1041
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:[F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v1

    aput v1, v0, v3

    .line 1043
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:[F

    invoke-virtual {v0, v1}, Lcle;->a([F)V

    .line 1045
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->x:[F

    aget v1, v1, v3

    invoke-static {v0, v1}, Lcla;->a(FF)Lcla;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcgc;)Lcle;
    .locals 1

    .prologue
    .line 539
    sget-object v0, Lcgc;->LEFT:Lcgc;

    if-ne p1, v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcle;

    .line 542
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t:Lcle;

    goto :goto_0
.end method

.method protected a()V
    .locals 5

    .prologue
    const/16 v4, 0xf0

    .line 152
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->a()V

    .line 154
    new-instance v0, Lcgb;

    sget-object v1, Lcgc;->LEFT:Lcgc;

    invoke-direct {v0, v1}, Lcgb;-><init>(Lcgc;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    .line 155
    new-instance v0, Lcgb;

    sget-object v1, Lcgc;->RIGHT:Lcgc;

    invoke-direct {v0, v1}, Lcgb;-><init>(Lcgc;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    .line 157
    new-instance v0, Lcle;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-direct {v0, v1}, Lcle;-><init>(Lclh;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcle;

    .line 158
    new-instance v0, Lcle;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-direct {v0, v1}, Lcle;-><init>(Lclh;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t:Lcle;

    .line 160
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcle;

    invoke-direct {v0, v1, v2, v3}, Lckj;-><init>(Lclh;Lcgb;Lcle;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lckj;

    .line 161
    new-instance v0, Lckj;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t:Lcle;

    invoke-direct {v0, v1, v2, v3}, Lckj;-><init>(Lclh;Lcgb;Lcle;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lckj;

    .line 163
    new-instance v0, Lckg;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcle;

    invoke-direct {v0, v1, v2, v3}, Lckg;-><init>(Lclh;Lcfz;Lcle;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lckg;

    .line 165
    new-instance v0, Lcht;

    invoke-direct {v0, p0}, Lcht;-><init>(Lcid;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setHighlighter(Lcht;)V

    .line 167
    new-instance v0, Lcjb;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1}, Lclh;->r()Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, p0, v1, v2}, Lcjb;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Lcjc;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    .line 170
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    .line 176
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lclg;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    return-void
.end method

.method public a(F)V
    .locals 3

    .prologue
    .line 823
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    const/4 v1, 0x0

    sget-object v2, Lcgc;->LEFT:Lcgc;

    .line 824
    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v2

    .line 823
    invoke-static {v0, p1, v1, v2, p0}, Lciy;->a(Lclh;FFLcle;Landroid/view/View;)Lciy;

    move-result-object v0

    .line 826
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Ljava/lang/Runnable;)V

    .line 827
    return-void
.end method

.method public a(FFFF)V
    .locals 6

    .prologue
    .line 640
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    neg-float v4, p4

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lclh;->a(FFFFLandroid/graphics/Matrix;)V

    .line 641
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lclh;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 646
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()V

    .line 647
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 648
    return-void
.end method

.method public a(FFFFLcgc;)V
    .locals 8

    .prologue
    .line 662
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {p0, p5}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcja;->a(Lclh;FFFFLcle;Lcgc;Landroid/view/View;)Lcja;

    move-result-object v0

    .line 663
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Ljava/lang/Runnable;)V

    .line 664
    return-void
.end method

.method public a(FFFFLcgc;J)V
    .locals 18
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 695
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v2}, Lclh;->g()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v3}, Lclh;->f()F

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v3, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c(FFLcgc;)Lckz;

    move-result-object v2

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c(Lcgc;)Lcgb;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v7, v4, Lcfz;->u:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    .line 700
    invoke-virtual {v4}, Lclh;->s()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v4}, Lclh;->t()F

    move-result v11

    iget-wide v8, v2, Lckz;->a:D

    double-to-float v14, v8

    iget-wide v8, v2, Lckz;->b:D

    double-to-float v15, v8

    move-object/from16 v4, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-wide/from16 v16, p6

    .line 699
    invoke-static/range {v3 .. v17}, Lcix;->a(Lclh;Landroid/view/View;Lcle;Lcgb;FFFFFFFFFJ)Lcix;

    move-result-object v3

    .line 702
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Ljava/lang/Runnable;)V

    .line 704
    invoke-static {v2}, Lckz;->a(Lckz;)V

    .line 709
    :goto_0
    return-void

    .line 707
    :cond_0
    const-string v2, "MPAndroidChart"

    const-string v3, "Unable to execute zoomAndCenterAnimated(...) on API level < 11"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(FFLcgc;)V
    .locals 3

    .prologue
    .line 840
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcgc;)F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1}, Lclh;->t()F

    move-result v1

    div-float/2addr v0, v1

    .line 842
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, p2

    .line 843
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v2

    .line 842
    invoke-static {v1, p1, v0, v2, p0}, Lciy;->a(Lclh;FFLcle;Landroid/view/View;)Lciy;

    move-result-object v0

    .line 845
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Ljava/lang/Runnable;)V

    .line 846
    return-void
.end method

.method public a(FFLcgc;J)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 861
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 863
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0}, Lclh;->g()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1}, Lclh;->f()F

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c(FFLcgc;)Lckz;

    move-result-object v0

    .line 865
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcgc;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v2}, Lclh;->t()F

    move-result v2

    div-float v2, v1, v2

    .line 867
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v3, p2, v2

    .line 868
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v4

    iget-wide v6, v0, Lckz;->a:D

    double-to-float v6, v6

    iget-wide v8, v0, Lckz;->b:D

    double-to-float v7, v8

    move v2, p1

    move-object v5, p0

    move-wide v8, p4

    .line 867
    invoke-static/range {v1 .. v9}, Lciv;->a(Lclh;FFLcle;Landroid/view/View;FFJ)Lciv;

    move-result-object v1

    .line 870
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Ljava/lang/Runnable;)V

    .line 872
    invoke-static {v0}, Lckz;->a(Lckz;)V

    .line 876
    :goto_0
    return-void

    .line 874
    :cond_0
    const-string v0, "MPAndroidChart"

    const-string v1, "Unable to execute moveViewToAnimated(...) on API level < 11"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(FFLcgc;Lckz;)V
    .locals 1

    .prologue
    .line 1264
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lcle;->a(FFLckz;)V

    .line 1265
    return-void
.end method

.method public a(FLcgc;)V
    .locals 4

    .prologue
    .line 887
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcgc;)F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1}, Lclh;->t()F

    move-result v1

    div-float/2addr v0, v1

    .line 889
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v0, p1

    .line 890
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v3

    .line 889
    invoke-static {v1, v2, v0, v3, p0}, Lciy;->a(Lclh;FFLcle;Landroid/view/View;)Lciy;

    move-result-object v0

    .line 892
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Ljava/lang/Runnable;)V

    .line 893
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i:Z

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 526
    :cond_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j:Z

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 529
    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 370
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 371
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 372
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 373
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 376
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v0}, Lcfn;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v0}, Lcfn;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    sget-object v0, Lcfc;->c:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v1}, Lcfn;->l()Lcfs;

    move-result-object v1

    invoke-virtual {v1}, Lcfs;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    sget-object v0, Lcfc;->b:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v1}, Lcfn;->j()Lcfr;

    move-result-object v1

    invoke-virtual {v1}, Lcfr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 382
    :pswitch_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    iget v1, v1, Lcfn;->a:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    .line 383
    invoke-virtual {v2}, Lclh;->o()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->x()F

    move-result v3

    mul-float/2addr v2, v3

    .line 382
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    .line 384
    invoke-virtual {v2}, Lcfn;->F()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 388
    :pswitch_2
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    iget v1, v1, Lcfn;->a:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    .line 389
    invoke-virtual {v2}, Lclh;->o()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->x()F

    move-result v3

    mul-float/2addr v2, v3

    .line 388
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    .line 390
    invoke-virtual {v2}, Lcfn;->F()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 395
    :pswitch_3
    sget-object v0, Lcfc;->a:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v1}, Lcfn;->k()Lcfu;

    move-result-object v1

    invoke-virtual {v1}, Lcfu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 397
    :pswitch_4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    iget v1, v1, Lcfn;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    .line 398
    invoke-virtual {v2}, Lclh;->n()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->x()F

    move-result v3

    mul-float/2addr v2, v3

    .line 397
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    .line 399
    invoke-virtual {v2}, Lcfn;->G()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 403
    :pswitch_5
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    iget v1, v1, Lcfn;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    .line 404
    invoke-virtual {v2}, Lclh;->n()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->x()F

    move-result v3

    mul-float/2addr v2, v3

    .line 403
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    .line 405
    invoke-virtual {v2}, Lcfn;->G()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 417
    :pswitch_6
    sget-object v0, Lcfc;->a:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v1}, Lcfn;->k()Lcfu;

    move-result-object v1

    invoke-virtual {v1}, Lcfu;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 419
    :pswitch_7
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    iget v1, v1, Lcfn;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    .line 420
    invoke-virtual {v2}, Lclh;->n()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->x()F

    move-result v3

    mul-float/2addr v2, v3

    .line 419
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    .line 421
    invoke-virtual {v2}, Lcfn;->G()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 423
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad()Lcfz;

    move-result-object v0

    invoke-virtual {v0}, Lcfz;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad()Lcfz;

    move-result-object v0

    invoke-virtual {v0}, Lcfz;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad()Lcfz;

    move-result-object v1

    iget v1, v1, Lcfz;->E:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 428
    :pswitch_8
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    iget v1, v1, Lcfn;->b:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    .line 429
    invoke-virtual {v2}, Lclh;->n()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    invoke-virtual {v3}, Lcfn;->x()F

    move-result v3

    mul-float/2addr v2, v3

    .line 428
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    .line 430
    invoke-virtual {v2}, Lcfn;->G()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 432
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad()Lcfz;

    move-result-object v0

    invoke-virtual {v0}, Lcfz;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad()Lcfz;

    move-result-object v0

    invoke-virtual {v0}, Lcfz;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad()Lcfz;

    move-result-object v1

    iget v1, v1, Lcfz;->E:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 380
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 395
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 417
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected b(Lcgc;)F
    .locals 1

    .prologue
    .line 1001
    sget-object v0, Lcgc;->LEFT:Lcgc;

    if-ne p1, v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget v0, v0, Lcgb;->u:F

    .line 1004
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget v0, v0, Lcgb;->u:F

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 360
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    invoke-virtual {v0}, Lcgg;->g()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    invoke-virtual {v0}, Lcgg;->h()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcfz;->a(FF)V

    .line 363
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    sget-object v2, Lcgc;->LEFT:Lcgc;

    invoke-virtual {v0, v2}, Lcgg;->a(Lcgc;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    sget-object v3, Lcgc;->LEFT:Lcgc;

    invoke-virtual {v0, v3}, Lcgg;->b(Lcgc;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcgb;->a(FF)V

    .line 364
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    sget-object v2, Lcgc;->RIGHT:Lcgc;

    invoke-virtual {v0, v2}, Lcgg;->a(Lcgc;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    sget-object v3, Lcgc;->RIGHT:Lcgc;

    invoke-virtual {v0, v3}, Lcgg;->b(Lcgc;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcgb;->a(FF)V

    .line 366
    return-void
.end method

.method public b(FF)V
    .locals 6

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->am()Lcla;

    move-result-object v1

    .line 676
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    .line 677
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget v3, v1, Lcla;->a:F

    iget v1, v1, Lcla;->b:F

    neg-float v4, v1

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lclh;->a(FFFFLandroid/graphics/Matrix;)V

    .line 678
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, p0, v1}, Lclh;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 679
    return-void
.end method

.method public b(FFLcgc;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 906
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcgc;)F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1}, Lclh;->t()F

    move-result v1

    div-float/2addr v0, v1

    .line 907
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad()Lcfz;

    move-result-object v1

    iget v1, v1, Lcfz;->u:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v2}, Lclh;->s()F

    move-result v2

    div-float/2addr v1, v2

    .line 909
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    div-float/2addr v1, v3

    sub-float v1, p1, v1

    div-float/2addr v0, v3

    add-float/2addr v0, p2

    .line 911
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v3

    .line 909
    invoke-static {v2, v1, v0, v3, p0}, Lciy;->a(Lclh;FFLcle;Landroid/view/View;)Lciy;

    move-result-object v0

    .line 913
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Ljava/lang/Runnable;)V

    .line 914
    return-void
.end method

.method public b(FFLcgc;J)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 930
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0}, Lclh;->g()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1}, Lclh;->f()F

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c(FFLcgc;)Lckz;

    move-result-object v0

    .line 932
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcgc;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v2}, Lclh;->t()F

    move-result v2

    div-float v3, v1, v2

    .line 933
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ad()Lcfz;

    move-result-object v1

    iget v1, v1, Lcfz;->u:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v2}, Lclh;->s()F

    move-result v2

    div-float v2, v1, v2

    .line 935
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    div-float/2addr v2, v4

    sub-float v2, p1, v2

    div-float/2addr v3, v4

    add-float/2addr v3, p2

    .line 937
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v4

    iget-wide v6, v0, Lckz;->a:D

    double-to-float v6, v6

    iget-wide v8, v0, Lckz;->b:D

    double-to-float v7, v8

    move-object v5, p0

    move-wide v8, p4

    .line 935
    invoke-static/range {v1 .. v9}, Lciv;->a(Lclh;FFLcle;Landroid/view/View;FFJ)Lciv;

    move-result-object v1

    .line 939
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Ljava/lang/Runnable;)V

    .line 941
    invoke-static {v0}, Lckz;->a(Lckz;)V

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    const-string v0, "MPAndroidChart"

    const-string v1, "Unable to execute centerViewToAnimated(...) on API level < 11"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(Lcgc;)Lcgb;
    .locals 1

    .prologue
    .line 1414
    sget-object v0, Lcgc;->LEFT:Lcgc;

    if-ne p1, v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    .line 1417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    goto :goto_0
.end method

.method public c(FFLcgc;)Lckz;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1258
    invoke-static {v0, v1, v0, v1}, Lckz;->a(DD)Lckz;

    move-result-object v0

    .line 1259
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(FFLcgc;Lckz;)V

    .line 1260
    return-object v0
.end method

.method public c(FF)Lcom/github/mikephil/charting/data/Entry;
    .locals 2

    .prologue
    .line 1288
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(FF)Lchv;

    move-result-object v1

    .line 1289
    if-eqz v1, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    invoke-virtual {v0, v1}, Lcgg;->a(Lchv;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 1292
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Lcjc;

    instance-of v0, v0, Lcjb;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Lcjc;

    check-cast v0, Lcjb;

    invoke-virtual {v0}, Lcjb;->c()V

    .line 564
    :cond_0
    return-void
.end method

.method public d(FF)Lcil;
    .locals 2

    .prologue
    .line 1303
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(FF)Lchv;

    move-result-object v1

    .line 1304
    if-eqz v1, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    invoke-virtual {v1}, Lchv;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcgg;->a(I)Lcio;

    move-result-object v0

    check-cast v0, Lcil;

    .line 1307
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(FFLcgc;)Lckz;
    .locals 1

    .prologue
    .line 1277
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcle;->b(FF)Lckz;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcgc;)Z
    .locals 1

    .prologue
    .line 1422
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c(Lcgc;)Lcgb;

    move-result-object v0

    invoke-virtual {v0}, Lcgb;->R()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 284
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aj:J

    .line 285
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ak:J

    .line 286
    return-void
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    if-nez v0, :cond_0

    .line 1362
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1364
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0}, Lclh;->s()F

    move-result v0

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    if-nez v0, :cond_0

    .line 1372
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1374
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0}, Lclh;->t()F

    move-result v0

    goto :goto_0
.end method

.method public h()V
    .locals 5

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:Z

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "MPAndroidChart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing Value-Px Matrix, xmin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v2, v2, Lcfz;->t:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xmax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v2, v2, Lcfz;->s:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xdelta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v2, v2, Lcfz;->u:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t:Lcle;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v1, v1, Lcfz;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v2, v2, Lcfz;->u:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget v3, v3, Lcgb;->u:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget v4, v4, Lcgb;->t:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcle;->a(FFFF)V

    .line 298
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcle;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v1, v1, Lcfz;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v2, v2, Lcfz;->u:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget v3, v3, Lcgb;->u:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget v4, v4, Lcgb;->t:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcle;->a(FFFF)V

    .line 302
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t:Lcle;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    invoke-virtual {v1}, Lcgb;->R()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcle;->a(Z)V

    .line 307
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s:Lcle;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    invoke-virtual {v1}, Lcgb;->R()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcle;->a(Z)V

    .line 308
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    if-nez v0, :cond_1

    .line 314
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:Z

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "MPAndroidChart"

    const-string v1, "Preparing... DATA NOT SET."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:Z

    if-eqz v0, :cond_2

    .line 319
    const-string v0, "MPAndroidChart"

    const-string v1, "Preparing..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Lcjt;

    if-eqz v0, :cond_3

    .line 323
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Lcjt;

    invoke-virtual {v0}, Lcjt;->a()V

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b()V

    .line 327
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lckj;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget v1, v1, Lcgb;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget v2, v2, Lcgb;->s:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    invoke-virtual {v3}, Lcgb;->R()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lckj;->a(FFZ)V

    .line 328
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lckj;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget v1, v1, Lcgb;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget v2, v2, Lcgb;->s:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    invoke-virtual {v3}, Lcgb;->R()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lckj;->a(FFZ)V

    .line 329
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lckg;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v1, v1, Lcfz;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v2, v2, Lcfz;->s:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lckg;->a(FFZ)V

    .line 331
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Lcfn;

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Lcjv;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    invoke-virtual {v0, v1}, Lcjv;->a(Lcgo;)V

    .line 334
    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()V

    goto :goto_0
.end method

.method protected k()V
    .locals 4

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C()F

    move-result v1

    .line 343
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D()F

    move-result v2

    .line 345
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    invoke-virtual {v0, v1, v2}, Lcgg;->b(FF)V

    .line 347
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    invoke-virtual {v0}, Lcgg;->g()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    invoke-virtual {v0}, Lcgg;->h()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcfz;->a(FF)V

    .line 350
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    sget-object v2, Lcgc;->LEFT:Lcgc;

    invoke-virtual {v0, v2}, Lcgg;->a(Lcgc;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    sget-object v3, Lcgc;->LEFT:Lcgc;

    invoke-virtual {v0, v3}, Lcgg;->b(Lcgc;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcgb;->a(FF)V

    .line 351
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    sget-object v2, Lcgc;->RIGHT:Lcgc;

    invoke-virtual {v0, v2}, Lcgg;->a(Lcgc;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    check-cast v0, Lcgg;

    sget-object v3, Lcgc;->RIGHT:Lcgc;

    invoke-virtual {v0, v3}, Lcgg;->b(Lcgc;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcgb;->a(FF)V

    .line 354
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()V

    .line 355
    return-void
.end method

.method public l()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 449
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->am:Z

    if-nez v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->al:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Landroid/graphics/RectF;)V

    .line 455
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->al:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v4

    .line 456
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->al:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v3, v4, v1

    .line 457
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->al:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    .line 458
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->al:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v4

    .line 461
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    invoke-virtual {v4}, Lcgb;->X()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lckj;

    .line 463
    invoke-virtual {v5}, Lckj;->a()Landroid/graphics/Paint;

    move-result-object v5

    .line 462
    invoke-virtual {v4, v5}, Lcgb;->a(Landroid/graphics/Paint;)F

    move-result v4

    add-float/2addr v0, v4

    .line 466
    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    invoke-virtual {v4}, Lcgb;->X()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lckj;

    .line 468
    invoke-virtual {v5}, Lckj;->a()Landroid/graphics/Paint;

    move-result-object v5

    .line 467
    invoke-virtual {v4, v5}, Lcgb;->a(Landroid/graphics/Paint;)F

    move-result v4

    add-float/2addr v1, v4

    .line 471
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    invoke-virtual {v4}, Lcfz;->K()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    invoke-virtual {v4}, Lcfz;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 473
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v4, v4, Lcfz;->E:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    invoke-virtual {v5}, Lcfz;->G()F

    move-result v5

    add-float/2addr v4, v5

    .line 476
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    invoke-virtual {v5}, Lcfz;->L()Lcga;

    move-result-object v5

    sget-object v6, Lcga;->BOTTOM:Lcga;

    if-ne v5, v6, :cond_4

    .line 478
    add-float/2addr v2, v4

    .line 491
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->an()F

    move-result v4

    add-float/2addr v3, v4

    .line 492
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ao()F

    move-result v4

    add-float/2addr v1, v4

    .line 493
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ap()F

    move-result v4

    add-float/2addr v2, v4

    .line 494
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aq()F

    move-result v4

    add-float/2addr v0, v4

    .line 496
    iget v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    invoke-static {v4}, Lclg;->a(F)F

    move-result v4

    .line 498
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    .line 499
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 500
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 501
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 502
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 498
    invoke-virtual {v5, v6, v7, v8, v4}, Lclh;->a(FFFF)V

    .line 504
    iget-boolean v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:Z

    if-eqz v4, :cond_3

    .line 505
    const-string v4, "MPAndroidChart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offsetLeft: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", offsetTop: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", offsetRight: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetBottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v0, "MPAndroidChart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v2}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i()V

    .line 512
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h()V

    .line 513
    return-void

    .line 480
    :cond_4
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    invoke-virtual {v5}, Lcfz;->L()Lcga;

    move-result-object v5

    sget-object v6, Lcga;->TOP:Lcga;

    if-ne v5, v6, :cond_5

    .line 482
    add-float/2addr v3, v4

    goto/16 :goto_0

    .line 484
    :cond_5
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    invoke-virtual {v5}, Lcfz;->L()Lcga;

    move-result-object v5

    sget-object v6, Lcga;->BOTH_SIDED:Lcga;

    if-ne v5, v6, :cond_2

    .line 486
    add-float/2addr v2, v4

    .line 487
    add-float/2addr v3, v4

    goto/16 :goto_0
.end method

.method public m()V
    .locals 5

    .prologue
    .line 581
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0}, Lclh;->m()Lcla;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget v2, v0, Lcla;->a:F

    iget v3, v0, Lcla;->b:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3, v4}, Lclh;->a(FFLandroid/graphics/Matrix;)V

    .line 584
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lclh;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 586
    invoke-static {v0}, Lcla;->a(Lcla;)V

    .line 591
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()V

    .line 592
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 593
    return-void
.end method

.method public n()V
    .locals 5

    .prologue
    .line 600
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0}, Lclh;->m()Lcla;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget v2, v0, Lcla;->a:F

    iget v3, v0, Lcla;->b:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3, v4}, Lclh;->b(FFLandroid/graphics/Matrix;)V

    .line 603
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lclh;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 605
    invoke-static {v0}, Lcla;->a(Lcla;)V

    .line 610
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()V

    .line 611
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 612
    return-void
.end method

.method public o()V
    .locals 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lclh;->a(Landroid/graphics/Matrix;)V

    .line 620
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->v:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lclh;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 625
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()V

    .line 626
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 627
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    if-nez v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Landroid/graphics/Canvas;)V

    .line 197
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    invoke-virtual {v2}, Lcgb;->K()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lckj;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget v3, v3, Lcgb;->t:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    iget v4, v4, Lcgb;->s:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    invoke-virtual {v5}, Lcgb;->R()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lckj;->a(FFZ)V

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    invoke-virtual {v2}, Lcgb;->K()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lckj;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget v3, v3, Lcgb;->t:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    iget v4, v4, Lcgb;->s:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    invoke-virtual {v5}, Lcgb;->R()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lckj;->a(FFZ)V

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    invoke-virtual {v2}, Lcfz;->K()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lckg;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v3, v3, Lcfz;->t:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v4, v4, Lcfz;->s:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lckg;->a(FFZ)V

    .line 204
    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lckg;

    invoke-virtual {v2, p1}, Lckg;->c(Landroid/graphics/Canvas;)V

    .line 205
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lckj;

    invoke-virtual {v2, p1}, Lckj;->c(Landroid/graphics/Canvas;)V

    .line 206
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lckj;

    invoke-virtual {v2, p1}, Lckj;->c(Landroid/graphics/Canvas;)V

    .line 208
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c:Z

    if-eqz v2, :cond_5

    .line 209
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k()V

    .line 212
    :cond_5
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lckg;

    invoke-virtual {v2, p1}, Lckg;->b(Landroid/graphics/Canvas;)V

    .line 213
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lckj;

    invoke-virtual {v2, p1}, Lckj;->b(Landroid/graphics/Canvas;)V

    .line 214
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lckj;

    invoke-virtual {v2, p1}, Lckj;->b(Landroid/graphics/Canvas;)V

    .line 216
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    invoke-virtual {v2}, Lcfz;->o()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 217
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lckg;

    invoke-virtual {v2, p1}, Lckg;->d(Landroid/graphics/Canvas;)V

    .line 219
    :cond_6
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    invoke-virtual {v2}, Lcgb;->o()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 220
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lckj;

    invoke-virtual {v2, p1}, Lckj;->d(Landroid/graphics/Canvas;)V

    .line 222
    :cond_7
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    invoke-virtual {v2}, Lcgb;->o()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 223
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lckj;

    invoke-virtual {v2, p1}, Lckj;->d(Landroid/graphics/Canvas;)V

    .line 226
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 227
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v3}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 229
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Lcjt;

    invoke-virtual {v3, p1}, Lcjt;->a(Landroid/graphics/Canvas;)V

    .line 232
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Y()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 233
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Lcjt;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->T:[Lchv;

    invoke-virtual {v3, p1, v4}, Lcjt;->a(Landroid/graphics/Canvas;[Lchv;)V

    .line 236
    :cond_9
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 238
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Lcjt;

    invoke-virtual {v2, p1}, Lcjt;->c(Landroid/graphics/Canvas;)V

    .line 240
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    invoke-virtual {v2}, Lcfz;->o()Z

    move-result v2

    if-nez v2, :cond_a

    .line 241
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lckg;

    invoke-virtual {v2, p1}, Lckg;->d(Landroid/graphics/Canvas;)V

    .line 243
    :cond_a
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o:Lcgb;

    invoke-virtual {v2}, Lcgb;->o()Z

    move-result v2

    if-nez v2, :cond_b

    .line 244
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lckj;

    invoke-virtual {v2, p1}, Lckj;->d(Landroid/graphics/Canvas;)V

    .line 246
    :cond_b
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p:Lcgb;

    invoke-virtual {v2}, Lcgb;->o()Z

    move-result v2

    if-nez v2, :cond_c

    .line 247
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lckj;

    invoke-virtual {v2, p1}, Lckj;->d(Landroid/graphics/Canvas;)V

    .line 249
    :cond_c
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lckg;

    invoke-virtual {v2, p1}, Lckg;->a(Landroid/graphics/Canvas;)V

    .line 250
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lckj;

    invoke-virtual {v2, p1}, Lckj;->a(Landroid/graphics/Canvas;)V

    .line 251
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lckj;

    invoke-virtual {v2, p1}, Lckj;->a(Landroid/graphics/Canvas;)V

    .line 253
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->z()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 255
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v3}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 257
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Lcjt;

    invoke-virtual {v3, p1}, Lcjt;->b(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 264
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Lcjv;

    invoke-virtual {v2, p1}, Lcjv;->a(Landroid/graphics/Canvas;)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Landroid/graphics/Canvas;)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c(Landroid/graphics/Canvas;)V

    .line 270
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->C:Z

    if-eqz v2, :cond_0

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 272
    iget-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aj:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aj:J

    .line 273
    iget-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ak:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ak:J

    .line 274
    iget-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->aj:J

    iget-wide v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ak:J

    div-long/2addr v2, v4

    .line 275
    const-string v4, "MPAndroidChart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drawtime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms, average: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms, cycles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ak:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    :cond_d
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Lcjt;

    invoke-virtual {v2, p1}, Lcjt;->b(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1584
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:[F

    const/4 v2, 0x0

    aput v2, v1, v3

    aput v2, v0, v4

    .line 1586
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1}, Lclh;->g()F

    move-result v1

    aput v1, v0, v4

    .line 1588
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1}, Lclh;->f()F

    move-result v1

    aput v1, v0, v3

    .line 1589
    sget-object v0, Lcgc;->LEFT:Lcgc;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:[F

    invoke-virtual {v0, v1}, Lcle;->b([F)V

    .line 1593
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/charts/Chart;->onSizeChanged(IIII)V

    .line 1595
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    if-eqz v0, :cond_1

    .line 1598
    sget-object v0, Lcgc;->LEFT:Lcgc;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a(Lcgc;)Lcle;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:[F

    invoke-virtual {v0, v1}, Lcle;->a([F)V

    .line 1599
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->A:[F

    invoke-virtual {v0, v1, p0}, Lclh;->a([FLandroid/view/View;)V

    .line 1603
    :goto_0
    return-void

    .line 1601
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1}, Lclh;->r()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1, p0, v3}, Lclh;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 547
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 549
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Lcjc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->D:Lcgo;

    if-nez v1, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v0

    .line 553
    :cond_1
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Z

    if-eqz v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Lcjc;

    invoke-virtual {v0, p0, p1}, Lcjc;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public p()V
    .locals 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->w:Landroid/graphics/Matrix;

    .line 719
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1, v0}, Lclh;->b(Landroid/graphics/Matrix;)V

    .line 720
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Lclh;->a(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 722
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()V

    .line 723
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 724
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->am:Z

    .line 986
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l()V

    .line 987
    return-void
.end method

.method public r()Lcjh;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n:Lcjh;

    return-object v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 1059
    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b:I

    return v0
.end method

.method public setAutoScaleMinMaxEnabled(Z)V
    .locals 0

    .prologue
    .line 1542
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c:Z

    .line 1543
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1216
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 2

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h:Landroid/graphics/Paint;

    invoke-static {p1}, Lclg;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1207
    return-void
.end method

.method public setClipValuesToContent(Z)V
    .locals 0

    .prologue
    .line 1187
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k:Z

    .line 1188
    return-void
.end method

.method public setDoubleTapToZoomEnabled(Z)V
    .locals 0

    .prologue
    .line 1139
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e:Z

    .line 1140
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .prologue
    .line 1093
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a:Z

    .line 1094
    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 1

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0, p1}, Lclh;->k(F)V

    .line 1452
    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0, p1}, Lclh;->l(F)V

    .line 1462
    return-void
.end method

.method public setDrawBorders(Z)V
    .locals 0

    .prologue
    .line 1167
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j:Z

    .line 1168
    return-void
.end method

.method public setDrawGridBackground(Z)V
    .locals 0

    .prologue
    .line 1157
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i:Z

    .line 1158
    return-void
.end method

.method public setGridBackgroundColor(I)V
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1084
    return-void
.end method

.method public setHighlightPerDragEnabled(Z)V
    .locals 0

    .prologue
    .line 1069
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f:Z

    .line 1070
    return-void
.end method

.method public setKeepPositionOnRotation(Z)V
    .locals 0

    .prologue
    .line 1243
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m:Z

    .line 1244
    return-void
.end method

.method public setMaxVisibleValueCount(I)V
    .locals 0

    .prologue
    .line 1055
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b:I

    .line 1056
    return-void
.end method

.method public setMinOffset(F)V
    .locals 0

    .prologue
    .line 1229
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l:F

    .line 1230
    return-void
.end method

.method public setOnDrawListener(Lcjh;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n:Lcjh;

    .line 1014
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 0

    .prologue
    .line 1555
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;->setPaint(Landroid/graphics/Paint;I)V

    .line 1557
    packed-switch p2, :pswitch_data_0

    .line 1562
    :goto_0
    return-void

    .line 1559
    :pswitch_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g:Landroid/graphics/Paint;

    goto :goto_0

    .line 1557
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setPinchZoom(Z)V
    .locals 0

    .prologue
    .line 1432
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d:Z

    .line 1433
    return-void
.end method

.method public setRendererLeftYAxis(Lckj;)V
    .locals 0

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->q:Lckj;

    .line 1497
    return-void
.end method

.method public setRendererRightYAxis(Lckj;)V
    .locals 0

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->r:Lckj;

    .line 1510
    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    .prologue
    .line 1112
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ah:Z

    .line 1113
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ai:Z

    .line 1114
    return-void
.end method

.method public setScaleMinima(FF)V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0, p1}, Lclh;->a(F)V

    .line 735
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v0, p2}, Lclh;->c(F)V

    .line 736
    return-void
.end method

.method public setScaleXEnabled(Z)V
    .locals 0

    .prologue
    .line 1117
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ah:Z

    .line 1118
    return-void
.end method

.method public setScaleYEnabled(Z)V
    .locals 0

    .prologue
    .line 1121
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ai:Z

    .line 1122
    return-void
.end method

.method public setViewPortOffsets(FFFF)V
    .locals 6

    .prologue
    .line 967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->am:Z

    .line 968
    new-instance v0, Lcfb;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcfb;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;FFFF)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->post(Ljava/lang/Runnable;)Z

    .line 978
    return-void
.end method

.method public setVisibleXRange(FF)V
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v0, v0, Lcfz;->u:F

    div-float/2addr v0, p1

    .line 774
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v1, v1, Lcfz;->u:F

    div-float/2addr v1, p2

    .line 775
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v2, v0, v1}, Lclh;->f(FF)V

    .line 776
    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v0, v0, Lcfz;->u:F

    div-float/2addr v0, p1

    .line 748
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1, v0}, Lclh;->a(F)V

    .line 749
    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:Lcfz;

    iget v0, v0, Lcfz;->u:F

    div-float/2addr v0, p1

    .line 761
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1, v0}, Lclh;->b(F)V

    .line 762
    return-void
.end method

.method public setVisibleYRange(FFLcgc;)V
    .locals 3

    .prologue
    .line 809
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcgc;)F

    move-result v0

    div-float/2addr v0, p1

    .line 810
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcgc;)F

    move-result v1

    div-float/2addr v1, p2

    .line 811
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v2, v0, v1}, Lclh;->g(FF)V

    .line 812
    return-void
.end method

.method public setVisibleYRangeMaximum(FLcgc;)V
    .locals 2

    .prologue
    .line 786
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcgc;)F

    move-result v0

    div-float/2addr v0, p1

    .line 787
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1, v0}, Lclh;->c(F)V

    .line 788
    return-void
.end method

.method public setVisibleYRangeMinimum(FLcgc;)V
    .locals 2

    .prologue
    .line 797
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lcgc;)F

    move-result v0

    div-float/2addr v0, p1

    .line 798
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Lclh;

    invoke-virtual {v1, v0}, Lclh;->d(F)V

    .line 799
    return-void
.end method

.method public setXAxisRenderer(Lckg;)V
    .locals 0

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u:Lckg;

    .line 1484
    return-void
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 1073
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a:Z

    return v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 1125
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ah:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->ai:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 1148
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 1177
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j:Z

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 1197
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k:Z

    return v0
.end method
