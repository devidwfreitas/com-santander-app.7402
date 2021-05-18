.class public Lcom/santander/app/seguros/ui/widgets/CircleChartView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:F

.field private f:F

.field private g:I

.field private final h:I

.field private i:I

.field private final j:I

.field private k:I

.field private l:F

.field private final m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->e:F

    .line 41
    const v0, -0xff0100

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->h:I

    .line 44
    const v0, -0x777778

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->j:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->k:I

    .line 50
    const/16 v0, 0x1e

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->m:I

    .line 119
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->a()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const v1, -0xff0100

    const v2, -0x777778

    const/4 v3, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->e:F

    .line 41
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->h:I

    .line 44
    iput v2, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->j:I

    .line 47
    iput v3, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->k:I

    .line 50
    const/16 v0, 0x1e

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->m:I

    .line 124
    sget-object v0, Lflv;->CircleChartView:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->g:I

    .line 127
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->i:I

    .line 128
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->k:I

    .line 130
    const/4 v1, 0x2

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->a(F)F

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->l:F

    .line 132
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->setProgress(I)V

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->a()V

    .line 136
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v3, 0x1

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->c:Landroid/graphics/Paint;

    .line 142
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->l:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->b:Landroid/graphics/Paint;

    .line 148
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->l:F

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->l:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 152
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->d:Landroid/graphics/Paint;

    .line 156
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->l:F

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->l:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 169
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->a:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 170
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->a:Landroid/graphics/RectF;

    iget v3, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->f:F

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 172
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->f:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->a:Landroid/graphics/RectF;

    const v2, -0x3ef1999a    # -8.9f

    const/high16 v3, 0x40c00000    # 6.0f

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 190
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_0

    .line 192
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    .line 193
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 192
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 197
    :goto_0
    return v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 197
    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    if-gtz p1, :cond_0

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->f:F

    .line 93
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->invalidate()V

    .line 115
    :goto_0
    return-void

    .line 94
    :cond_0
    if-ne p1, v3, :cond_1

    .line 95
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->f:F

    .line 96
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->invalidate()V

    goto :goto_0

    .line 100
    :cond_1
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 101
    mul-int/lit16 v0, p1, 0x15b

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 p1, v0, 0x168

    .line 104
    :cond_2
    const-string v0, "progress"

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    aput p1, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 105
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    new-instance v1, Lmbe;

    invoke-direct {v1, p0}, Lmbe;-><init>(Lcom/santander/app/seguros/ui/widgets/CircleChartView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->a(Landroid/graphics/Canvas;)V

    .line 165
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 181
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->e:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->e:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->e:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->e:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->a:Landroid/graphics/RectF;

    .line 184
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    .prologue
    .line 54
    if-gtz p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 60
    int-to-double v0, p1

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->f:F

    goto :goto_0
.end method

.method public setProgressColor(I)V
    .locals 1

    .prologue
    .line 65
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->g:I

    .line 66
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->k:I

    .line 67
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->d:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->a()V

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->invalidate()V

    .line 75
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/CircleChartView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
