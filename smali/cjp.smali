.class public Lcjp;
.super Lcjn;
.source "SourceFile"


# instance fields
.field protected a:Lcie;

.field private b:[F

.field private c:[F

.field private d:[F


# direct methods
.method public constructor <init>(Lcie;Lcdq;Lclh;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p2, p3}, Lcjn;-><init>(Lcdq;Lclh;)V

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcjp;->b:[F

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcjp;->c:[F

    .line 176
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcjp;->d:[F

    .line 31
    iput-object p1, p0, Lcjp;->a:Lcie;

    .line 33
    iget-object v0, p0, Lcjp;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcjp;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcjp;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lclg;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    return-void
.end method


# virtual methods
.method protected a(FFFZ)F
    .locals 2

    .prologue
    .line 60
    if-eqz p4, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 62
    :cond_0
    :goto_0
    mul-float v0, p3, p1

    .line 63
    return v0

    .line 60
    :cond_1
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcjp;->a:Lcie;

    invoke-interface {v0}, Lcie;->c()Lcgk;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcgk;->i()Ljava/util/List;

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

    check-cast v0, Lcim;

    .line 51
    invoke-interface {v0}, Lcim;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p0, p1, v0}, Lcjp;->a(Landroid/graphics/Canvas;Lcim;)V

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcim;)V
    .locals 11

    .prologue
    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 68
    iget-object v0, p0, Lcjp;->a:Lcie;

    invoke-interface {p2}, Lcim;->C()Lcgc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcie;->a(Lcgc;)Lcle;

    move-result-object v2

    .line 70
    iget-object v0, p0, Lcjp;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->a()F

    move-result v3

    .line 72
    iget-object v0, p0, Lcjp;->f:Lcjo;

    iget-object v1, p0, Lcjp;->a:Lcie;

    invoke-virtual {v0, v1, p2}, Lcjo;->a(Lcid;Lcil;)V

    .line 74
    iget-object v0, p0, Lcjp;->b:[F

    const/4 v1, 0x0

    aput v1, v0, v9

    .line 75
    iget-object v0, p0, Lcjp;->b:[F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v5

    .line 77
    iget-object v0, p0, Lcjp;->b:[F

    invoke-virtual {v2, v0}, Lcle;->a([F)V

    .line 79
    invoke-interface {p2}, Lcim;->d()Z

    move-result v4

    .line 82
    iget-object v0, p0, Lcjp;->b:[F

    aget v0, v0, v5

    iget-object v1, p0, Lcjp;->b:[F

    aget v1, v1, v9

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 83
    iget-object v1, p0, Lcjp;->s:Lclh;

    invoke-virtual {v1}, Lclh;->i()F

    move-result v1

    iget-object v5, p0, Lcjp;->s:Lclh;

    invoke-virtual {v5}, Lclh;->f()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 84
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 86
    iget-object v0, p0, Lcjp;->f:Lcjo;

    iget v0, v0, Lcjo;->a:I

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcjp;->f:Lcjo;

    iget v0, v0, Lcjo;->c:I

    iget-object v6, p0, Lcjp;->f:Lcjo;

    iget v6, v6, Lcjo;->a:I

    add-int/2addr v0, v6

    if-gt v1, v0, :cond_2

    .line 88
    invoke-interface {p2, v1}, Lcim;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 90
    iget-object v6, p0, Lcjp;->c:[F

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleEntry;->k()F

    move-result v7

    aput v7, v6, v9

    .line 91
    iget-object v6, p0, Lcjp;->c:[F

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleEntry;->c()F

    move-result v7

    mul-float/2addr v7, v3

    aput v7, v6, v10

    .line 92
    iget-object v6, p0, Lcjp;->c:[F

    invoke-virtual {v2, v6}, Lcle;->a([F)V

    .line 94
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleEntry;->b()F

    move-result v6

    invoke-interface {p2}, Lcim;->c()F

    move-result v7

    invoke-virtual {p0, v6, v7, v5, v4}, Lcjp;->a(FFFZ)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 96
    iget-object v7, p0, Lcjp;->s:Lclh;

    iget-object v8, p0, Lcjp;->c:[F

    aget v8, v8, v10

    add-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lclh;->i(F)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcjp;->s:Lclh;

    iget-object v8, p0, Lcjp;->c:[F

    aget v8, v8, v10

    sub-float/2addr v8, v6

    .line 97
    invoke-virtual {v7, v8}, Lclh;->j(F)Z

    move-result v7

    if-nez v7, :cond_1

    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :cond_1
    iget-object v7, p0, Lcjp;->s:Lclh;

    iget-object v8, p0, Lcjp;->c:[F

    aget v8, v8, v9

    add-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lclh;->g(F)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    iget-object v7, p0, Lcjp;->s:Lclh;

    iget-object v8, p0, Lcjp;->c:[F

    aget v8, v8, v9

    sub-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lclh;->h(F)Z

    move-result v7

    if-nez v7, :cond_3

    .line 111
    :cond_2
    return-void

    .line 106
    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleEntry;->k()F

    move-result v0

    float-to-int v0, v0

    invoke-interface {p2, v0}, Lcim;->e(I)I

    move-result v0

    .line 108
    iget-object v7, p0, Lcjp;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcjp;->c:[F

    aget v0, v0, v9

    iget-object v7, p0, Lcjp;->c:[F

    aget v7, v7, v10

    iget-object v8, p0, Lcjp;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public a(Landroid/graphics/Canvas;[Lchv;)V
    .locals 13

    .prologue
    .line 181
    iget-object v0, p0, Lcjp;->a:Lcie;

    invoke-interface {v0}, Lcie;->c()Lcgk;

    move-result-object v3

    .line 183
    iget-object v0, p0, Lcjp;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->a()F

    move-result v4

    .line 185
    array-length v5, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, p2, v2

    .line 187
    invoke-virtual {v6}, Lchv;->f()I

    move-result v0

    invoke-virtual {v3, v0}, Lcgk;->a(I)Lcio;

    move-result-object v0

    check-cast v0, Lcim;

    .line 189
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcim;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v6}, Lchv;->a()F

    move-result v1

    invoke-virtual {v6}, Lchv;->b()F

    move-result v7

    invoke-interface {v0, v1, v7}, Lcim;->b(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 194
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->c()F

    move-result v7

    invoke-virtual {v6}, Lchv;->b()F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 197
    invoke-virtual {p0, v1, v0}, Lcjp;->a(Lcom/github/mikephil/charting/data/Entry;Lcil;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    iget-object v7, p0, Lcjp;->a:Lcie;

    invoke-interface {v0}, Lcim;->C()Lcgc;

    move-result-object v8

    invoke-interface {v7, v8}, Lcie;->a(Lcgc;)Lcle;

    move-result-object v7

    .line 202
    iget-object v8, p0, Lcjp;->b:[F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 203
    iget-object v8, p0, Lcjp;->b:[F

    const/4 v9, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    .line 205
    iget-object v8, p0, Lcjp;->b:[F

    invoke-virtual {v7, v8}, Lcle;->a([F)V

    .line 207
    invoke-interface {v0}, Lcim;->d()Z

    move-result v8

    .line 210
    iget-object v9, p0, Lcjp;->b:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Lcjp;->b:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 211
    iget-object v10, p0, Lcjp;->s:Lclh;

    .line 212
    invoke-virtual {v10}, Lclh;->i()F

    move-result v10

    iget-object v11, p0, Lcjp;->s:Lclh;

    invoke-virtual {v11}, Lclh;->f()F

    move-result v11

    sub-float/2addr v10, v11

    .line 211
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 213
    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 215
    iget-object v10, p0, Lcjp;->c:[F

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->k()F

    move-result v12

    aput v12, v10, v11

    .line 216
    iget-object v10, p0, Lcjp;->c:[F

    const/4 v11, 0x1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->c()F

    move-result v12

    mul-float/2addr v12, v4

    aput v12, v10, v11

    .line 217
    iget-object v10, p0, Lcjp;->c:[F

    invoke-virtual {v7, v10}, Lcle;->a([F)V

    .line 219
    iget-object v7, p0, Lcjp;->c:[F

    const/4 v10, 0x0

    aget v7, v7, v10

    iget-object v10, p0, Lcjp;->c:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v6, v7, v10}, Lchv;->a(FF)V

    .line 221
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->b()F

    move-result v6

    .line 222
    invoke-interface {v0}, Lcim;->c()F

    move-result v7

    .line 221
    invoke-virtual {p0, v6, v7, v9, v8}, Lcjp;->a(FFFZ)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 226
    iget-object v7, p0, Lcjp;->s:Lclh;

    iget-object v8, p0, Lcjp;->c:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    add-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lclh;->i(F)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcjp;->s:Lclh;

    iget-object v8, p0, Lcjp;->c:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-float/2addr v8, v6

    .line 227
    invoke-virtual {v7, v8}, Lclh;->j(F)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 230
    iget-object v7, p0, Lcjp;->s:Lclh;

    iget-object v8, p0, Lcjp;->c:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    add-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lclh;->g(F)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 233
    iget-object v7, p0, Lcjp;->s:Lclh;

    iget-object v8, p0, Lcjp;->c:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-float/2addr v8, v6

    invoke-virtual {v7, v8}, Lclh;->h(F)Z

    move-result v7

    if-nez v7, :cond_3

    .line 247
    :cond_2
    return-void

    .line 236
    :cond_3
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BubbleEntry;->k()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcim;->e(I)I

    move-result v1

    .line 238
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 239
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    iget-object v10, p0, Lcjp;->d:[F

    .line 238
    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 240
    iget-object v7, p0, Lcjp;->d:[F

    const/4 v8, 0x2

    aget v9, v7, v8

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    aput v9, v7, v8

    .line 241
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget-object v7, p0, Lcjp;->d:[F

    invoke-static {v1, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    .line 243
    iget-object v7, p0, Lcjp;->i:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v1, p0, Lcjp;->i:Landroid/graphics/Paint;

    invoke-interface {v0}, Lcim;->b()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 245
    iget-object v0, p0, Lcjp;->c:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcjp;->c:[F

    const/4 v7, 0x1

    aget v1, v1, v7

    iget-object v7, p0, Lcjp;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 15

    .prologue
    .line 116
    iget-object v0, p0, Lcjp;->a:Lcie;

    invoke-interface {v0}, Lcie;->c()Lcgk;

    move-result-object v0

    .line 118
    if-nez v0, :cond_1

    .line 170
    :cond_0
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcjp;->a:Lcie;

    invoke-virtual {p0, v1}, Lcjp;->a(Lcig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcgk;->i()Ljava/util/List;

    move-result-object v12

    .line 126
    iget-object v0, p0, Lcjp;->k:Landroid/graphics/Paint;

    const-string v1, "1"

    invoke-static {v0, v1}, Lclg;->b(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v13, v0

    .line 128
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 130
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcim;

    .line 132
    invoke-virtual {p0, v9}, Lcjp;->a(Lcio;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {p0, v9}, Lcjp;->b(Lcio;)V

    .line 138
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcjp;->g:Lcdq;

    invoke-virtual {v2}, Lcdq;->b()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 139
    iget-object v0, p0, Lcjp;->g:Lcdq;

    invoke-virtual {v0}, Lcdq;->a()F

    move-result v0

    .line 141
    iget-object v2, p0, Lcjp;->f:Lcjo;

    iget-object v3, p0, Lcjp;->a:Lcie;

    invoke-virtual {v2, v3, v9}, Lcjo;->a(Lcid;Lcil;)V

    .line 143
    iget-object v2, p0, Lcjp;->a:Lcie;

    invoke-interface {v9}, Lcim;->C()Lcgc;

    move-result-object v3

    invoke-interface {v2, v3}, Lcie;->a(Lcgc;)Lcle;

    move-result-object v2

    iget-object v3, p0, Lcjp;->f:Lcjo;

    iget v3, v3, Lcjo;->a:I

    iget-object v4, p0, Lcjp;->f:Lcjo;

    iget v4, v4, Lcjo;->b:I

    .line 144
    invoke-virtual {v2, v9, v0, v3, v4}, Lcle;->a(Lcim;FII)[F

    move-result-object v14

    .line 146
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_5

    move v10, v0

    .line 148
    :goto_1
    const/4 v0, 0x0

    move v11, v0

    :goto_2
    array-length v0, v14

    if-ge v11, v0, :cond_2

    .line 150
    div-int/lit8 v0, v11, 0x2

    iget-object v1, p0, Lcjp;->f:Lcjo;

    iget v1, v1, Lcjo;->a:I

    add-int/2addr v0, v1

    invoke-interface {v9, v0}, Lcim;->i(I)I

    move-result v0

    .line 151
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 152
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 151
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    .line 154
    aget v6, v14, v11

    .line 155
    add-int/lit8 v0, v11, 0x1

    aget v0, v14, v0

    .line 157
    iget-object v1, p0, Lcjp;->s:Lclh;

    invoke-virtual {v1, v6}, Lclh;->h(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcjp;->s:Lclh;

    invoke-virtual {v1, v6}, Lclh;->g(F)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcjp;->s:Lclh;

    invoke-virtual {v1, v0}, Lclh;->f(F)Z

    move-result v1

    if-nez v1, :cond_6

    .line 148
    :cond_4
    :goto_3
    add-int/lit8 v0, v11, 0x2

    move v11, v0

    goto :goto_2

    :cond_5
    move v10, v1

    .line 146
    goto :goto_1

    .line 163
    :cond_6
    div-int/lit8 v1, v11, 0x2

    iget-object v2, p0, Lcjp;->f:Lcjo;

    iget v2, v2, Lcjo;->a:I

    add-int/2addr v1, v2

    invoke-interface {v9, v1}, Lcim;->m(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 165
    invoke-interface {v9}, Lcim;->r()Lchn;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BubbleEntry;->b()F

    move-result v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v13

    add-float v7, v0, v1

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lcjp;->a(Landroid/graphics/Canvas;Lchn;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    goto :goto_3
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method
