.class public Lcom/github/mikephil/charting/charts/HorizontalBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source "SourceFile"


# instance fields
.field protected ah:[F

.field private ai:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ai:Landroid/graphics/RectF;

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ah:[F

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ai:Landroid/graphics/RectF;

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ah:[F

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ai:Landroid/graphics/RectF;

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ah:[F

    .line 41
    return-void
.end method


# virtual methods
.method public C()F
    .locals 4

    .prologue
    .line 213
    sget-object v0, Lcgc;->LEFT:Lcgc;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->a(Lcgc;)Lcle;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-virtual {v1}, Lclh;->g()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    .line 214
    invoke-virtual {v2}, Lclh;->i()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->y:Lckz;

    .line 213
    invoke-virtual {v0, v1, v2, v3}, Lcle;->a(FFLckz;)V

    .line 215
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget v0, v0, Lcfz;->t:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->y:Lckz;

    iget-wide v2, v2, Lckz;->b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 216
    return v0
.end method

.method public D()F
    .locals 4

    .prologue
    .line 221
    sget-object v0, Lcgc;->LEFT:Lcgc;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->a(Lcgc;)Lcle;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-virtual {v1}, Lclh;->g()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    .line 222
    invoke-virtual {v2}, Lclh;->f()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->z:Lckz;

    .line 221
    invoke-virtual {v0, v1, v2, v3}, Lcle;->a(FFLckz;)V

    .line 223
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget v0, v0, Lcfz;->s:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->z:Lckz;

    iget-wide v2, v2, Lckz;->b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 224
    return v0
.end method

.method public a(FF)Lchv;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->D:Lcgo;

    if-nez v0, :cond_1

    .line 204
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->C:Z

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "MPAndroidChart"

    const-string v1, "Can\'t select by touch. No data set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->aF()Lchx;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lchx;->a(FF)Lchv;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/github/mikephil/charting/data/Entry;Lcgc;)Lcla;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    if-nez p1, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ah:[F

    .line 184
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v1

    aput v1, v0, v2

    .line 185
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v1

    aput v1, v0, v3

    .line 187
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->a(Lcgc;)Lcle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcle;->a([F)V

    .line 189
    aget v1, v0, v2

    aget v0, v0, v3

    invoke-static {v1, v0}, Lcla;->a(FF)Lcla;

    move-result-object v0

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcky;

    invoke-direct {v0}, Lcky;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    .line 48
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarChart;->a()V

    .line 50
    new-instance v0, Lclf;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-direct {v0, v1}, Lclf;-><init>(Lclh;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->s:Lcle;

    .line 51
    new-instance v0, Lclf;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-direct {v0, v1}, Lclf;-><init>(Lclh;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->t:Lcle;

    .line 53
    new-instance v0, Lcju;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->S:Lcdq;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-direct {v0, p0, v1, v2}, Lcju;-><init>(Lcic;Lcdq;Lclh;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->P:Lcjt;

    .line 54
    new-instance v0, Lchw;

    invoke-direct {v0, p0}, Lchw;-><init>(Lcic;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->setHighlighter(Lcht;)V

    .line 56
    new-instance v0, Lckk;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->o:Lcgb;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->s:Lcle;

    invoke-direct {v0, v1, v2, v3}, Lckk;-><init>(Lclh;Lcgb;Lcle;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->q:Lckj;

    .line 57
    new-instance v0, Lckk;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->p:Lcgb;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->t:Lcle;

    invoke-direct {v0, v1, v2, v3}, Lckk;-><init>(Lclh;Lcgb;Lcle;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->r:Lckj;

    .line 58
    new-instance v0, Lckh;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->s:Lcle;

    invoke-direct {v0, v1, v2, v3, p0}, Lckh;-><init>(Lclh;Lcfz;Lcle;Lcom/github/mikephil/charting/charts/BarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->u:Lckg;

    .line 59
    return-void
.end method

.method public a(Lcom/github/mikephil/charting/data/BarEntry;Landroid/graphics/RectF;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 144
    .line 145
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->D:Lcgo;

    check-cast v0, Lcge;

    invoke-virtual {v0, p1}, Lcge;->a(Lcom/github/mikephil/charting/data/Entry;)Lcio;

    move-result-object v0

    check-cast v0, Lcik;

    .line 147
    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 166
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->c()F

    move-result v2

    .line 153
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->k()F

    move-result v4

    .line 155
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->D:Lcgo;

    check-cast v1, Lcge;

    invoke-virtual {v1}, Lcge;->a()F

    move-result v1

    .line 157
    div-float v5, v1, v6

    sub-float v5, v4, v5

    .line 158
    div-float/2addr v1, v6

    add-float v6, v4, v1

    .line 159
    cmpl-float v1, v2, v3

    if-ltz v1, :cond_1

    move v4, v2

    .line 160
    :goto_1
    cmpg-float v1, v2, v3

    if-gtz v1, :cond_2

    move v1, v2

    .line 162
    :goto_2
    invoke-virtual {p2, v4, v5, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 164
    invoke-interface {v0}, Lcik;->C()Lcgc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->a(Lcgc;)Lcle;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcle;->a(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    move v4, v3

    .line 159
    goto :goto_1

    :cond_2
    move v1, v3

    .line 160
    goto :goto_2
.end method

.method protected b(Lchv;)[F
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p1}, Lchv;->k()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lchv;->j()F

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method protected h()V
    .locals 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->t:Lcle;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->p:Lcgb;

    iget v1, v1, Lcgb;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->p:Lcgb;

    iget v2, v2, Lcgb;->u:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget v3, v3, Lcfz;->u:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget v4, v4, Lcfz;->t:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcle;->a(FFFF)V

    .line 132
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->s:Lcle;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->o:Lcgb;

    iget v1, v1, Lcgb;->t:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->o:Lcgb;

    iget v2, v2, Lcgb;->u:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget v3, v3, Lcfz;->u:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget v4, v4, Lcfz;->t:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcle;->a(FFFF)V

    .line 134
    return-void
.end method

.method public l()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 66
    .line 68
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ai:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->a(Landroid/graphics/RectF;)V

    .line 70
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ai:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float v3, v4, v0

    .line 71
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ai:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    .line 72
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ai:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float v2, v4, v1

    .line 73
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ai:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v4

    .line 76
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->o:Lcgb;

    invoke-virtual {v4}, Lcgb;->X()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->o:Lcgb;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->q:Lckj;

    invoke-virtual {v5}, Lckj;->a()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcgb;->b(Landroid/graphics/Paint;)F

    move-result v4

    add-float/2addr v0, v4

    .line 80
    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->p:Lcgb;

    invoke-virtual {v4}, Lcgb;->X()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->p:Lcgb;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->r:Lckj;

    invoke-virtual {v5}, Lckj;->a()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcgb;->b(Landroid/graphics/Paint;)F

    move-result v4

    add-float/2addr v1, v4

    .line 84
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget v4, v4, Lcfz;->D:I

    int-to-float v4, v4

    .line 86
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    invoke-virtual {v5}, Lcfz;->K()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    invoke-virtual {v5}, Lcfz;->L()Lcga;

    move-result-object v5

    sget-object v6, Lcga;->BOTTOM:Lcga;

    if-ne v5, v6, :cond_4

    .line 91
    add-float/2addr v3, v4

    .line 104
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->an()F

    move-result v4

    add-float/2addr v0, v4

    .line 105
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ao()F

    move-result v4

    add-float/2addr v2, v4

    .line 106
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->ap()F

    move-result v4

    add-float/2addr v1, v4

    .line 107
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->aq()F

    move-result v4

    add-float/2addr v3, v4

    .line 109
    iget v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->l:F

    invoke-static {v4}, Lclg;->a(F)F

    move-result v4

    .line 111
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    .line 112
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 113
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 114
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 115
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 111
    invoke-virtual {v5, v6, v7, v8, v4}, Lclh;->a(FFFF)V

    .line 117
    iget-boolean v4, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->C:Z

    if-eqz v4, :cond_3

    .line 118
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

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", offsetRight: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", offsetBottom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "MPAndroidChart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-virtual {v2}, Lclh;->l()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->i()V

    .line 125
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->h()V

    .line 126
    return-void

    .line 93
    :cond_4
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    invoke-virtual {v5}, Lcfz;->L()Lcga;

    move-result-object v5

    sget-object v6, Lcga;->TOP:Lcga;

    if-ne v5, v6, :cond_5

    .line 95
    add-float/2addr v2, v4

    goto/16 :goto_0

    .line 97
    :cond_5
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    invoke-virtual {v5}, Lcfz;->L()Lcga;

    move-result-object v5

    sget-object v6, Lcga;->BOTH_SIDED:Lcga;

    if-ne v5, v6, :cond_2

    .line 99
    add-float/2addr v3, v4

    .line 100
    add-float/2addr v2, v4

    goto/16 :goto_0
.end method

.method public setVisibleXRange(FF)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget v0, v0, Lcfz;->u:F

    div-float/2addr v0, p1

    .line 246
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget v1, v1, Lcfz;->u:F

    div-float/2addr v1, p2

    .line 247
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-virtual {v2, v0, v1}, Lclh;->g(FF)V

    .line 248
    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget v0, v0, Lcfz;->u:F

    div-float/2addr v0, p1

    .line 234
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-virtual {v1, v0}, Lclh;->c(F)V

    .line 235
    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->I:Lcfz;

    iget v0, v0, Lcfz;->u:F

    div-float/2addr v0, p1

    .line 240
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-virtual {v1, v0}, Lclh;->d(F)V

    .line 241
    return-void
.end method

.method public setVisibleYRange(FFLcgc;)V
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->b(Lcgc;)F

    move-result v0

    div-float/2addr v0, p1

    .line 265
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->b(Lcgc;)F

    move-result v1

    div-float/2addr v1, p2

    .line 266
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-virtual {v2, v0, v1}, Lclh;->f(FF)V

    .line 267
    return-void
.end method

.method public setVisibleYRangeMaximum(FLcgc;)V
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->b(Lcgc;)F

    move-result v0

    div-float/2addr v0, p1

    .line 253
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-virtual {v1, v0}, Lclh;->a(F)V

    .line 254
    return-void
.end method

.method public setVisibleYRangeMinimum(FLcgc;)V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->b(Lcgc;)F

    move-result v0

    div-float/2addr v0, p1

    .line 259
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->R:Lclh;

    invoke-virtual {v1, v0}, Lclh;->b(F)V

    .line 260
    return-void
.end method
