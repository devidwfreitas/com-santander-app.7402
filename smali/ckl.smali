.class public Lckl;
.super Lckj;
.source "SourceFile"


# instance fields
.field private q:Lcom/github/mikephil/charting/charts/RadarChart;

.field private r:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lclh;Lcgb;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lckj;-><init>(Lclh;Lcgb;Lcle;)V

    .line 177
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lckl;->r:Landroid/graphics/Path;

    .line 22
    iput-object p3, p0, Lckl;->q:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 23
    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 12

    .prologue
    .line 28
    .line 31
    iget-object v0, p0, Lckl;->a:Lcfj;

    invoke-virtual {v0}, Lcfj;->j()I

    move-result v3

    .line 32
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    .line 34
    if-eqz v3, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, v4, v0

    if-lez v0, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    iget-object v0, p0, Lckl;->a:Lcfj;

    const/4 v1, 0x0

    new-array v1, v1, [F

    iput-object v1, v0, Lcfj;->b:[F

    .line 36
    iget-object v0, p0, Lckl;->a:Lcfj;

    const/4 v1, 0x0

    new-array v1, v1, [F

    iput-object v1, v0, Lcfj;->c:[F

    .line 37
    iget-object v0, p0, Lckl;->a:Lcfj;

    const/4 v1, 0x0

    iput v1, v0, Lcfj;->d:I

    .line 142
    :goto_0
    return-void

    .line 42
    :cond_1
    int-to-double v0, v3

    div-double v0, v4, v0

    .line 43
    invoke-static {v0, v1}, Lclg;->a(D)F

    move-result v0

    float-to-double v0, v0

    .line 47
    iget-object v2, p0, Lckl;->a:Lcfj;

    invoke-virtual {v2}, Lcfj;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    iget-object v2, p0, Lckl;->a:Lcfj;

    invoke-virtual {v2}, Lcfj;->l()F

    move-result v2

    float-to-double v6, v2

    cmpg-double v2, v0, v6

    if-gez v2, :cond_2

    iget-object v0, p0, Lckl;->a:Lcfj;

    invoke-virtual {v0}, Lcfj;->l()F

    move-result v0

    float-to-double v0, v0

    .line 51
    :cond_2
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    double-to-int v2, v8

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lclg;->a(D)F

    move-result v2

    float-to-double v6, v2

    .line 52
    div-double v8, v0, v6

    double-to-int v2, v8

    .line 53
    const/4 v8, 0x5

    if-le v2, v8, :cond_3

    .line 56
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 59
    :cond_3
    iget-object v2, p0, Lckl;->a:Lcfj;

    invoke-virtual {v2}, Lcfj;->c()Z

    move-result v9

    .line 60
    if-eqz v9, :cond_5

    const/4 v2, 0x1

    .line 63
    :goto_1
    iget-object v6, p0, Lckl;->a:Lcfj;

    invoke-virtual {v6}, Lcfj;->i()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 65
    double-to-float v2, v4

    add-int/lit8 v4, v3, -0x1

    int-to-float v4, v4

    div-float v4, v2, v4

    .line 66
    iget-object v2, p0, Lckl;->a:Lcfj;

    iput v3, v2, Lcfj;->d:I

    .line 68
    iget-object v2, p0, Lckl;->a:Lcfj;

    iget-object v2, v2, Lcfj;->b:[F

    array-length v2, v2

    if-ge v2, v3, :cond_4

    .line 70
    iget-object v2, p0, Lckl;->a:Lcfj;

    new-array v5, v3, [F

    iput-object v5, v2, Lcfj;->b:[F

    .line 75
    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_6

    .line 76
    iget-object v5, p0, Lckl;->a:Lcfj;

    iget-object v5, v5, Lcfj;->b:[F

    aput p1, v5, v2

    .line 77
    add-float/2addr p1, v4

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 60
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    move v2, v3

    .line 120
    :goto_3
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_f

    .line 121
    iget-object v3, p0, Lckl;->a:Lcfj;

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v3, Lcfj;->e:I

    .line 126
    :goto_4
    if-eqz v9, :cond_10

    .line 128
    iget-object v0, p0, Lckl;->a:Lcfj;

    iget-object v0, v0, Lcfj;->c:[F

    array-length v0, v0

    if-ge v0, v2, :cond_7

    .line 129
    iget-object v0, p0, Lckl;->a:Lcfj;

    new-array v1, v2, [F

    iput-object v1, v0, Lcfj;->c:[F

    .line 132
    :cond_7
    iget-object v0, p0, Lckl;->a:Lcfj;

    iget-object v0, v0, Lcfj;->b:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lckl;->a:Lcfj;

    iget-object v1, v1, Lcfj;->b:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 134
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_10

    .line 135
    iget-object v3, p0, Lckl;->a:Lcfj;

    iget-object v3, v3, Lcfj;->c:[F

    iget-object v4, p0, Lckl;->a:Lcfj;

    iget-object v4, v4, Lcfj;->b:[F

    aget v4, v4, v0

    add-float/2addr v4, v1

    aput v4, v3, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 85
    :cond_8
    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_a

    const-wide/16 v6, 0x0

    .line 86
    :goto_6
    if-eqz v9, :cond_9

    .line 87
    sub-double/2addr v6, v0

    .line 90
    :cond_9
    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_b

    const-wide/16 v4, 0x0

    move-wide v10, v4

    .line 95
    :goto_7
    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-eqz v3, :cond_c

    move-wide v4, v6

    .line 96
    :goto_8
    cmpg-double v3, v4, v10

    if-gtz v3, :cond_c

    .line 97
    add-int/lit8 v8, v2, 0x1

    .line 96
    add-double v2, v4, v0

    move-wide v4, v2

    move v2, v8

    goto :goto_8

    .line 85
    :cond_a
    float-to-double v4, p1

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    mul-double v6, v4, v0

    goto :goto_6

    .line 90
    :cond_b
    float-to-double v4, p2

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Lclg;->b(D)D

    move-result-wide v4

    move-wide v10, v4

    goto :goto_7

    .line 101
    :cond_c
    add-int/lit8 v4, v2, 0x1

    .line 103
    iget-object v2, p0, Lckl;->a:Lcfj;

    iput v4, v2, Lcfj;->d:I

    .line 105
    iget-object v2, p0, Lckl;->a:Lcfj;

    iget-object v2, v2, Lcfj;->b:[F

    array-length v2, v2

    if-ge v2, v4, :cond_d

    .line 107
    iget-object v2, p0, Lckl;->a:Lcfj;

    new-array v3, v4, [F

    iput-object v3, v2, Lcfj;->b:[F

    .line 110
    :cond_d
    const/4 v2, 0x0

    move v5, v2

    move-wide v2, v6

    :goto_9
    if-ge v5, v4, :cond_11

    .line 112
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_e

    .line 113
    const-wide/16 v2, 0x0

    .line 115
    :cond_e
    iget-object v6, p0, Lckl;->a:Lcfj;

    iget-object v6, v6, Lcfj;->b:[F

    double-to-float v7, v2

    aput v7, v6, v5

    .line 110
    add-double v6, v2, v0

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-wide v2, v6

    goto :goto_9

    .line 123
    :cond_f
    iget-object v0, p0, Lckl;->a:Lcfj;

    const/4 v1, 0x0

    iput v1, v0, Lcfj;->e:I

    goto/16 :goto_4

    .line 139
    :cond_10
    iget-object v0, p0, Lckl;->a:Lcfj;

    iget-object v1, p0, Lckl;->a:Lcfj;

    iget-object v1, v1, Lcfj;->b:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    iput v1, v0, Lcfj;->t:F

    .line 140
    iget-object v0, p0, Lckl;->a:Lcfj;

    iget-object v1, p0, Lckl;->a:Lcfj;

    iget-object v1, v1, Lcfj;->b:[F

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, v0, Lcfj;->s:F

    .line 141
    iget-object v0, p0, Lckl;->a:Lcfj;

    iget-object v1, p0, Lckl;->a:Lcfj;

    iget v1, v1, Lcfj;->s:F

    iget-object v2, p0, Lckl;->a:Lcfj;

    iget v2, v2, Lcfj;->t:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcfj;->u:F

    goto/16 :goto_0

    :cond_11
    move v2, v4

    goto/16 :goto_3
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lckl;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckl;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lckl;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lckl;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->H()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 151
    iget-object v0, p0, Lckl;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lckl;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->I()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 152
    iget-object v0, p0, Lckl;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lckl;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v0, p0, Lckl;->q:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->am()Lcla;

    move-result-object v2

    .line 155
    invoke-static {v3, v3}, Lcla;->a(FF)Lcla;

    move-result-object v3

    .line 156
    iget-object v0, p0, Lckl;->q:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->c()F

    move-result v4

    .line 158
    iget-object v0, p0, Lckl;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 159
    :goto_1
    iget-object v1, p0, Lckl;->g:Lcgb;

    invoke-virtual {v1}, Lcgb;->P()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lckl;->g:Lcgb;

    iget v1, v1, Lcgb;->d:I

    .line 163
    :goto_2
    if-ge v0, v1, :cond_4

    .line 165
    iget-object v5, p0, Lckl;->g:Lcgb;

    iget-object v5, v5, Lcgb;->b:[F

    aget v5, v5, v0

    iget-object v6, p0, Lckl;->g:Lcgb;

    iget v6, v6, Lcgb;->t:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    .line 167
    iget-object v6, p0, Lckl;->q:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->z()F

    move-result v6

    invoke-static {v2, v5, v6, v3}, Lclg;->a(Lcla;FFLcla;)V

    .line 169
    iget-object v5, p0, Lckl;->g:Lcgb;

    invoke-virtual {v5, v0}, Lcgb;->d(I)Ljava/lang/String;

    move-result-object v5

    .line 171
    iget v6, v3, Lcla;->a:F

    const/high16 v7, 0x41200000    # 10.0f

    add-float/2addr v6, v7

    iget v7, v3, Lcla;->b:F

    iget-object v8, p0, Lckl;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 158
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 159
    :cond_3
    iget-object v1, p0, Lckl;->g:Lcgb;

    iget v1, v1, Lcgb;->d:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 173
    :cond_4
    invoke-static {v2}, Lcla;->a(Lcla;)V

    .line 174
    invoke-static {v3}, Lcla;->a(Lcla;)V

    goto/16 :goto_0
.end method

.method public d(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lckl;->g:Lcgb;

    invoke-virtual {v0}, Lcgb;->n()Ljava/util/List;

    move-result-object v4

    .line 183
    if-nez v4, :cond_0

    .line 226
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lckl;->q:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->d()F

    move-result v5

    .line 190
    iget-object v0, p0, Lckl;->q:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->c()F

    move-result v6

    .line 192
    iget-object v0, p0, Lckl;->q:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->am()Lcla;

    move-result-object v7

    .line 193
    invoke-static {v1, v1}, Lcla;->a(FF)Lcla;

    move-result-object v8

    move v1, v2

    .line 194
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 196
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfw;

    .line 198
    invoke-virtual {v0}, Lcfw;->K()Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 201
    :cond_1
    iget-object v3, p0, Lckl;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->c()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v3, p0, Lckl;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->f()Landroid/graphics/DashPathEffect;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 203
    iget-object v3, p0, Lckl;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcfw;->b()F

    move-result v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    invoke-virtual {v0}, Lcfw;->a()F

    move-result v0

    iget-object v3, p0, Lckl;->q:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->O()F

    move-result v3

    sub-float/2addr v0, v3

    mul-float v9, v0, v6

    .line 207
    iget-object v10, p0, Lckl;->r:Landroid/graphics/Path;

    .line 208
    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    move v3, v2

    .line 211
    :goto_3
    iget-object v0, p0, Lckl;->q:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->aC()Lcgo;

    move-result-object v0

    check-cast v0, Lchb;

    invoke-virtual {v0}, Lchb;->o()Lcio;

    move-result-object v0

    check-cast v0, Lcit;

    invoke-interface {v0}, Lcit;->I()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 213
    int-to-float v0, v3

    mul-float/2addr v0, v5

    iget-object v11, p0, Lckl;->q:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->z()F

    move-result v11

    add-float/2addr v0, v11

    invoke-static {v7, v9, v0, v8}, Lclg;->a(Lcla;FFLcla;)V

    .line 215
    if-nez v3, :cond_2

    .line 216
    iget v0, v8, Lcla;->a:F

    iget v11, v8, Lcla;->b:F

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 211
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 218
    :cond_2
    iget v0, v8, Lcla;->a:F

    iget v11, v8, Lcla;->b:F

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    .line 220
    :cond_3
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    .line 222
    iget-object v0, p0, Lckl;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 224
    :cond_4
    invoke-static {v7}, Lcla;->a(Lcla;)V

    .line 225
    invoke-static {v8}, Lcla;->a(Lcla;)V

    goto/16 :goto_0
.end method
