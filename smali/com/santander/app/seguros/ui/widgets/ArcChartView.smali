.class public Lcom/santander/app/seguros/ui/widgets/ArcChartView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:I

.field private f:I

.field private final g:I

.field private h:I

.field private final i:I

.field private j:F

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->d:F

    .line 39
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->g:I

    .line 42
    const v0, -0x777778

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->i:I

    .line 45
    const/16 v0, 0x1e

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->k:I

    .line 67
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->a()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/high16 v3, -0x10000

    const v2, -0x777778

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->d:F

    .line 39
    iput v3, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->g:I

    .line 42
    iput v2, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->i:I

    .line 45
    const/16 v0, 0x1e

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->k:I

    .line 73
    sget-object v0, Lflv;->ArcChartView:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->f:I

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->h:I

    .line 77
    const/4 v1, 0x2

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->a(F)F

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->j:F

    .line 78
    const/4 v1, 0x3

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->setProgress(I)V

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->a()V

    .line 83
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->c:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->b:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->j:F

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->j:F

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 108
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 123
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 125
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->a:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 126
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->a:Landroid/graphics/RectF;

    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->e:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 133
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_0

    .line 148
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    .line 149
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 148
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 153
    :goto_0
    return v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 153
    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 52
    if-nez p1, :cond_0

    move p1, v0

    .line 53
    :cond_0
    const-string v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v3

    aput p1, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 54
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 55
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    new-instance v1, Lmar;

    invoke-direct {v1, p0}, Lmar;-><init>(Lcom/santander/app/seguros/ui/widgets/ArcChartView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 63
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->a(Landroid/graphics/Canvas;)V

    .line 114
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 139
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->d:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->d:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->d:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->d:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->a:Landroid/graphics/RectF;

    .line 140
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    .prologue
    .line 48
    int-to-double v0, p1

    const-wide v2, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ArcChartView;->e:I

    .line 49
    return-void
.end method
