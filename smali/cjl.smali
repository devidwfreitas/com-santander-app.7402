.class public abstract Lcjl;
.super Lcke;
.source "SourceFile"


# instance fields
.field protected a:Lcfj;

.field protected b:Lcle;

.field protected c:Landroid/graphics/Paint;

.field protected d:Landroid/graphics/Paint;

.field protected e:Landroid/graphics/Paint;

.field protected f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lclh;Lcle;Lcfj;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 49
    invoke-direct {p0, p1}, Lcke;-><init>(Lclh;)V

    .line 51
    iput-object p2, p0, Lcjl;->b:Lcle;

    .line 52
    iput-object p3, p0, Lcjl;->a:Lcfj;

    .line 54
    iget-object v0, p0, Lcjl;->s:Lclh;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcjl;->d:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcjl;->c:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcjl;->c:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcjl;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcjl;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcjl;->c:Landroid/graphics/Paint;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcjl;->e:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcjl;->e:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcjl;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcjl;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcjl;->f:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcjl;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcjl;->d:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected a(FF)V
    .locals 12

    .prologue
    .line 151
    .line 154
    iget-object v0, p0, Lcjl;->a:Lcfj;

    invoke-virtual {v0}, Lcfj;->j()I

    move-result v3

    .line 155
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    .line 157
    if-eqz v3, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, v4, v0

    if-lez v0, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    :cond_0
    iget-object v0, p0, Lcjl;->a:Lcfj;

    const/4 v1, 0x0

    new-array v1, v1, [F

    iput-object v1, v0, Lcfj;->b:[F

    .line 159
    iget-object v0, p0, Lcjl;->a:Lcfj;

    const/4 v1, 0x0

    new-array v1, v1, [F

    iput-object v1, v0, Lcfj;->c:[F

    .line 160
    iget-object v0, p0, Lcjl;->a:Lcfj;

    const/4 v1, 0x0

    iput v1, v0, Lcfj;->d:I

    .line 258
    :cond_1
    return-void

    .line 165
    :cond_2
    int-to-double v0, v3

    div-double v0, v4, v0

    .line 166
    invoke-static {v0, v1}, Lclg;->a(D)F

    move-result v0

    float-to-double v0, v0

    .line 170
    iget-object v2, p0, Lcjl;->a:Lcfj;

    invoke-virtual {v2}, Lcfj;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    iget-object v2, p0, Lcjl;->a:Lcfj;

    invoke-virtual {v2}, Lcfj;->l()F

    move-result v2

    float-to-double v6, v2

    cmpg-double v2, v0, v6

    if-gez v2, :cond_3

    iget-object v0, p0, Lcjl;->a:Lcfj;

    invoke-virtual {v0}, Lcfj;->l()F

    move-result v0

    float-to-double v0, v0

    .line 174
    :cond_3
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

    .line 175
    div-double v8, v0, v6

    double-to-int v2, v8

    .line 176
    const/4 v8, 0x5

    if-le v2, v8, :cond_4

    .line 179
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 182
    :cond_4
    iget-object v2, p0, Lcjl;->a:Lcfj;

    invoke-virtual {v2}, Lcfj;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 185
    :goto_0
    iget-object v6, p0, Lcjl;->a:Lcfj;

    invoke-virtual {v6}, Lcfj;->i()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 187
    double-to-float v0, v4

    add-int/lit8 v1, v3, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 188
    iget-object v2, p0, Lcjl;->a:Lcfj;

    iput v3, v2, Lcfj;->d:I

    .line 190
    iget-object v2, p0, Lcjl;->a:Lcfj;

    iget-object v2, v2, Lcfj;->b:[F

    array-length v2, v2

    if-ge v2, v3, :cond_5

    .line 192
    iget-object v2, p0, Lcjl;->a:Lcfj;

    new-array v4, v3, [F

    iput-object v4, v2, Lcfj;->b:[F

    .line 197
    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_7

    .line 198
    iget-object v4, p0, Lcjl;->a:Lcfj;

    iget-object v4, v4, Lcfj;->b:[F

    aput p1, v4, v2

    .line 199
    float-to-double v4, p1

    add-double/2addr v4, v0

    double-to-float p1, v4

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    move v2, v3

    .line 240
    :cond_8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_11

    .line 241
    iget-object v3, p0, Lcjl;->a:Lcfj;

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    neg-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v3, Lcfj;->e:I

    .line 246
    :goto_2
    iget-object v3, p0, Lcjl;->a:Lcfj;

    invoke-virtual {v3}, Lcfj;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p0, Lcjl;->a:Lcfj;

    iget-object v3, v3, Lcfj;->c:[F

    array-length v3, v3

    if-ge v3, v2, :cond_9

    .line 249
    iget-object v3, p0, Lcjl;->a:Lcfj;

    new-array v4, v2, [F

    iput-object v4, v3, Lcfj;->c:[F

    .line 252
    :cond_9
    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 254
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_1

    .line 255
    iget-object v3, p0, Lcjl;->a:Lcfj;

    iget-object v3, v3, Lcfj;->c:[F

    iget-object v4, p0, Lcjl;->a:Lcfj;

    iget-object v4, v4, Lcfj;->b:[F

    aget v4, v4, v0

    add-float/2addr v4, v1

    aput v4, v3, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 207
    :cond_a
    const-wide/16 v4, 0x0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_c

    const-wide/16 v4, 0x0

    .line 208
    :goto_4
    iget-object v3, p0, Lcjl;->a:Lcfj;

    invoke-virtual {v3}, Lcfj;->c()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 209
    sub-double/2addr v4, v0

    .line 212
    :cond_b
    const-wide/16 v6, 0x0

    cmpl-double v3, v0, v6

    if-nez v3, :cond_d

    const-wide/16 v6, 0x0

    move-wide v10, v6

    .line 217
    :goto_5
    const-wide/16 v6, 0x0

    cmpl-double v3, v0, v6

    if-eqz v3, :cond_e

    move-wide v6, v4

    .line 218
    :goto_6
    cmpg-double v3, v6, v10

    if-gtz v3, :cond_e

    .line 219
    add-int/lit8 v8, v2, 0x1

    .line 218
    add-double v2, v6, v0

    move-wide v6, v2

    move v2, v8

    goto :goto_6

    .line 207
    :cond_c
    float-to-double v4, p1

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    goto :goto_4

    .line 212
    :cond_d
    float-to-double v6, p2

    div-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Lclg;->b(D)D

    move-result-wide v6

    move-wide v10, v6

    goto :goto_5

    .line 223
    :cond_e
    iget-object v3, p0, Lcjl;->a:Lcfj;

    iput v2, v3, Lcfj;->d:I

    .line 225
    iget-object v3, p0, Lcjl;->a:Lcfj;

    iget-object v3, v3, Lcfj;->b:[F

    array-length v3, v3

    if-ge v3, v2, :cond_f

    .line 227
    iget-object v3, p0, Lcjl;->a:Lcfj;

    new-array v6, v2, [F

    iput-object v6, v3, Lcfj;->b:[F

    .line 230
    :cond_f
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_8

    .line 232
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_10

    .line 233
    const-wide/16 v4, 0x0

    .line 235
    :cond_10
    iget-object v6, p0, Lcjl;->a:Lcfj;

    iget-object v6, v6, Lcfj;->b:[F

    double-to-float v7, v4

    aput v7, v6, v3

    .line 230
    add-double/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 243
    :cond_11
    iget-object v3, p0, Lcjl;->a:Lcfj;

    const/4 v4, 0x0

    iput v4, v3, Lcfj;->e:I

    goto/16 :goto_2
.end method

.method public a(FFZ)V
    .locals 6

    .prologue
    .line 122
    iget-object v0, p0, Lcjl;->s:Lclh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcjl;->s:Lclh;

    invoke-virtual {v0}, Lclh;->j()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcjl;->s:Lclh;

    invoke-virtual {v0}, Lclh;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcjl;->b:Lcle;

    iget-object v1, p0, Lcjl;->s:Lclh;

    invoke-virtual {v1}, Lclh;->g()F

    move-result v1

    iget-object v2, p0, Lcjl;->s:Lclh;

    invoke-virtual {v2}, Lclh;->f()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcle;->a(FF)Lckz;

    move-result-object v2

    .line 125
    iget-object v0, p0, Lcjl;->b:Lcle;

    iget-object v1, p0, Lcjl;->s:Lclh;

    invoke-virtual {v1}, Lclh;->g()F

    move-result v1

    iget-object v3, p0, Lcjl;->s:Lclh;

    invoke-virtual {v3}, Lclh;->i()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcle;->a(FF)Lckz;

    move-result-object v3

    .line 127
    if-nez p3, :cond_1

    .line 129
    iget-wide v0, v3, Lckz;->b:D

    double-to-float v1, v0

    .line 130
    iget-wide v4, v2, Lckz;->b:D

    double-to-float v0, v4

    .line 137
    :goto_0
    invoke-static {v2}, Lckz;->a(Lckz;)V

    .line 138
    invoke-static {v3}, Lckz;->a(Lckz;)V

    move p2, v0

    move p1, v1

    .line 141
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcjl;->a(FF)V

    .line 142
    return-void

    .line 133
    :cond_1
    iget-wide v0, v2, Lckz;->b:D

    double-to-float v1, v0

    .line 134
    iget-wide v4, v3, Lckz;->b:D

    double-to-float v0, v4

    goto :goto_0
.end method

.method public abstract a(Landroid/graphics/Canvas;)V
.end method

.method public b()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcjl;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public abstract b(Landroid/graphics/Canvas;)V
.end method

.method public c()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcjl;->e:Landroid/graphics/Paint;

    return-object v0
.end method

.method public abstract c(Landroid/graphics/Canvas;)V
.end method

.method public d()Lcle;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcjl;->b:Lcle;

    return-object v0
.end method

.method public abstract d(Landroid/graphics/Canvas;)V
.end method
