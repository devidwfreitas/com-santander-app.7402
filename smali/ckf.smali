.class public Lckf;
.super Lckb;
.source "SourceFile"


# instance fields
.field protected a:Lcij;

.field b:[F


# direct methods
.method public constructor <init>(Lcij;Lcdq;Lclh;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p2, p3}, Lckb;-><init>(Lcdq;Lclh;)V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lckf;->b:[F

    .line 27
    iput-object p1, p0, Lckf;->a:Lcij;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lckf;->a:Lcij;

    invoke-interface {v0}, Lcij;->aM()Lchd;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lchd;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lciu;

    .line 41
    invoke-interface {v0}, Lciu;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0, p1, v0}, Lckf;->a(Landroid/graphics/Canvas;Lciu;)V

    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lciu;)V
    .locals 12

    .prologue
    .line 50
    iget-object v8, p0, Lckf;->s:Lclh;

    .line 52
    iget-object v0, p0, Lckf;->a:Lcij;

    invoke-interface {p2}, Lciu;->C()Lcgc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcij;->a(Lcgc;)Lcle;

    move-result-object v9

    .line 54
    iget-object v0, p0, Lckf;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->a()F

    move-result v10

    .line 56
    invoke-interface {p2}, Lciu;->c()Lckq;

    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    const-string v0, "MISSING"

    const-string v1, "There\'s no IShapeRenderer specified for ScatterDataSet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void

    .line 63
    :cond_1
    invoke-interface {p2}, Lciu;->I()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lckf;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->b()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 64
    invoke-interface {p2}, Lciu;->I()I

    move-result v1

    int-to-float v1, v1

    float-to-double v4, v1

    .line 62
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v11, v2

    .line 66
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v11, :cond_0

    .line 68
    invoke-interface {p2, v7}, Lciu;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lckf;->b:[F

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v4

    aput v4, v2, v3

    .line 71
    iget-object v2, p0, Lckf;->b:[F

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v1

    mul-float/2addr v1, v10

    aput v1, v2, v3

    .line 73
    iget-object v1, p0, Lckf;->b:[F

    invoke-virtual {v9, v1}, Lcle;->a([F)V

    .line 75
    iget-object v1, p0, Lckf;->b:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v8, v1}, Lclh;->h(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lckf;->b:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v8, v1}, Lclh;->g(F)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lckf;->b:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 79
    invoke-virtual {v8, v1}, Lclh;->f(F)Z

    move-result v1

    if-nez v1, :cond_3

    .line 66
    :cond_2
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 82
    :cond_3
    iget-object v1, p0, Lckf;->h:Landroid/graphics/Paint;

    div-int/lit8 v2, v7, 0x2

    invoke-interface {p2, v2}, Lciu;->e(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v3, p0, Lckf;->s:Lclh;

    iget-object v1, p0, Lckf;->b:[F

    const/4 v2, 0x0

    aget v4, v1, v2

    iget-object v1, p0, Lckf;->b:[F

    const/4 v2, 0x1

    aget v5, v1, v2

    iget-object v6, p0, Lckf;->h:Landroid/graphics/Paint;

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lckq;->a(Landroid/graphics/Canvas;Lciu;Lclh;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public a(Landroid/graphics/Canvas;[Lchv;)V
    .locals 10

    .prologue
    .line 142
    iget-object v0, p0, Lckf;->a:Lcij;

    invoke-interface {v0}, Lcij;->aM()Lchd;

    move-result-object v2

    .line 144
    array-length v3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, p2, v1

    .line 146
    invoke-virtual {v4}, Lchv;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Lchd;->a(I)Lcio;

    move-result-object v0

    check-cast v0, Lciu;

    .line 148
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lciu;->q()Z

    move-result v5

    if-nez v5, :cond_1

    .line 144
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v4}, Lchv;->a()F

    move-result v5

    invoke-virtual {v4}, Lchv;->b()F

    move-result v6

    invoke-interface {v0, v5, v6}, Lciu;->b(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    .line 153
    invoke-virtual {p0, v5, v0}, Lckf;->a(Lcom/github/mikephil/charting/data/Entry;Lcil;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    iget-object v6, p0, Lckf;->a:Lcij;

    invoke-interface {v0}, Lciu;->C()Lcgc;

    move-result-object v7

    invoke-interface {v6, v7}, Lcij;->a(Lcgc;)Lcle;

    move-result-object v6

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->k()F

    move-result v7

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    iget-object v8, p0, Lckf;->g:Lcdq;

    .line 157
    invoke-virtual {v8}, Lcdq;->a()F

    move-result v8

    mul-float/2addr v5, v8

    .line 156
    invoke-virtual {v6, v7, v5}, Lcle;->b(FF)Lckz;

    move-result-object v5

    .line 159
    iget-wide v6, v5, Lckz;->a:D

    double-to-float v6, v6

    iget-wide v8, v5, Lckz;->b:D

    double-to-float v7, v8

    invoke-virtual {v4, v6, v7}, Lchv;->a(FF)V

    .line 162
    iget-wide v6, v5, Lckz;->a:D

    double-to-float v4, v6

    iget-wide v6, v5, Lckz;->b:D

    double-to-float v5, v6

    invoke-virtual {p0, p1, v4, v5, v0}, Lckf;->a(Landroid/graphics/Canvas;FFLcir;)V

    goto :goto_1

    .line 164
    :cond_2
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 94
    iget-object v0, p0, Lckf;->a:Lcij;

    invoke-virtual {p0, v0}, Lckf;->a(Lcig;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lckf;->a:Lcij;

    invoke-interface {v0}, Lcij;->aM()Lchd;

    move-result-object v0

    invoke-virtual {v0}, Lchd;->i()Ljava/util/List;

    move-result-object v11

    .line 98
    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lckf;->a:Lcij;

    invoke-interface {v0}, Lcij;->aM()Lchd;

    move-result-object v0

    invoke-virtual {v0}, Lchd;->d()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 100
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lciu;

    .line 102
    invoke-virtual {p0, v1}, Lckf;->a(Lcio;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0, v1}, Lckf;->b(Lcio;)V

    .line 108
    iget-object v0, p0, Lckf;->f:Lcjo;

    iget-object v2, p0, Lckf;->a:Lcij;

    invoke-virtual {v0, v2, v1}, Lcjo;->a(Lcid;Lcil;)V

    .line 110
    iget-object v0, p0, Lckf;->a:Lcij;

    invoke-interface {v1}, Lciu;->C()Lcgc;

    move-result-object v2

    invoke-interface {v0, v2}, Lcij;->a(Lcgc;)Lcle;

    move-result-object v0

    iget-object v2, p0, Lckf;->g:Lcdq;

    .line 112
    invoke-virtual {v2}, Lcdq;->b()F

    move-result v2

    iget-object v3, p0, Lckf;->g:Lcdq;

    invoke-virtual {v3}, Lcdq;->a()F

    move-result v3

    iget-object v4, p0, Lckf;->f:Lcjo;

    iget v4, v4, Lcjo;->a:I

    iget-object v5, p0, Lckf;->f:Lcjo;

    iget v5, v5, Lcjo;->b:I

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcle;->a(Lciu;FFII)[F

    move-result-object v12

    .line 114
    invoke-interface {v1}, Lciu;->b()F

    move-result v0

    invoke-static {v0}, Lclg;->a(F)F

    move-result v13

    .line 116
    const/4 v0, 0x0

    :goto_1
    array-length v2, v12

    if-ge v0, v2, :cond_0

    .line 118
    iget-object v2, p0, Lckf;->s:Lclh;

    aget v3, v12, v0

    invoke-virtual {v2, v3}, Lclh;->h(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lckf;->s:Lclh;

    aget v3, v12, v0

    invoke-virtual {v2, v3}, Lclh;->g(F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lckf;->s:Lclh;

    add-int/lit8 v3, v0, 0x1

    aget v3, v12, v3

    .line 123
    invoke-virtual {v2, v3}, Lclh;->f(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 116
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 126
    :cond_3
    div-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lckf;->f:Lcjo;

    iget v3, v3, Lcjo;->a:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Lciu;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    .line 128
    invoke-interface {v1}, Lciu;->r()Lchn;

    move-result-object v4

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v5

    aget v8, v12, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, v12, v2

    sub-float v9, v2, v13

    div-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lckf;->f:Lcjo;

    iget v3, v3, Lcjo;->a:I

    add-int/2addr v2, v3

    .line 129
    invoke-interface {v1, v2}, Lciu;->i(I)I

    move-result v10

    move-object v2, p0

    move-object v3, p1

    .line 128
    invoke-virtual/range {v2 .. v10}, Lckf;->a(Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_2

    .line 133
    :cond_4
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method
