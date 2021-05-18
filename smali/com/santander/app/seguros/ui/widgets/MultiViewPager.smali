.class public Lcom/santander/app/seguros/ui/widgets/MultiViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private a:Lmcc;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private final f:Landroid/graphics/Point;

.field private final g:Landroid/graphics/Point;

.field private h:Lmhh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 31
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->b:I

    .line 35
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->c:I

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->h:Lmhh;

    .line 63
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->b()V

    .line 64
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->f:Landroid/graphics/Point;

    .line 65
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->g:Landroid/graphics/Point;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->b:I

    .line 35
    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->c:I

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->h:Lmhh;

    .line 70
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->b()V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->f:Landroid/graphics/Point;

    .line 73
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->g:Landroid/graphics/Point;

    .line 74
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0, v2}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setClipChildren(Z)V

    .line 78
    sget-object v0, Lflv;->MultiViewPager:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setMaxWidth(I)V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setMaxHeight(I)V

    .line 81
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setMatchChildWidth(I)V

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void
.end method

.method private static a(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    .prologue
    .line 49
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_0

    .line 50
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_0

    .line 51
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 54
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    .line 55
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_1

    .line 56
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Landroid/graphics/Point;->y:I

    .line 59
    :cond_1
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 185
    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 186
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 187
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v2, "sInterpolator"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 188
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 190
    new-instance v2, Lmhh;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3, v0}, Lmhh;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->h:Lmhh;

    .line 192
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->h:Lmhh;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a()Lmcc;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->a:Lmcc;

    return-object v0
.end method

.method protected a(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->e:Z

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->d:I

    if-nez v0, :cond_2

    .line 109
    iput-boolean v3, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->e:Z

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    invoke-virtual {p0, v3}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 114
    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->d:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    if-nez v0, :cond_3

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MatchWithChildResId did not find that ID in the first fragment of the ViewPager; is that view defined in the child view\'s layout? Note that MultiViewPager only measures the child for index 0."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 123
    if-lez v0, :cond_0

    .line 124
    iput-boolean v3, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->e:Z

    .line 125
    sub-int v2, v1, v0

    .line 126
    neg-int v2, v2

    invoke-virtual {p0, v2}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setPageMargin(I)V

    .line 127
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 128
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->setOffscreenPageLimit(I)V

    .line 129
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->requestLayout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 87
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->f:Landroid/graphics/Point;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 88
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 89
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->b:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->c:I

    if-ltz v0, :cond_1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->g:Landroid/graphics/Point;

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->b:I

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 91
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->f:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->g:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->a(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 92
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 95
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 99
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->a(II)V

    .line 101
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/ViewPager;->onSizeChanged(IIII)V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->a()Lmcc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->a:Lmcc;

    invoke-interface {v0, v1}, Lmcc;->a(I)V

    .line 216
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->a()Lmcc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->a:Lmcc;

    invoke-interface {v0, v2}, Lmcc;->a(I)V

    goto :goto_0
.end method

.method public setListener(Lmcc;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->a:Lmcc;

    .line 225
    return-void
.end method

.method public setMatchChildWidth(I)V
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->d:I

    if-eq v0, p1, :cond_0

    .line 149
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->d:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->e:Z

    .line 152
    :cond_0
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->c:I

    .line 170
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .prologue
    .line 160
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->b:I

    .line 161
    return-void
.end method

.method public setScrollDurationFactor(D)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/MultiViewPager;->h:Lmhh;

    invoke-virtual {v0, p1, p2}, Lmhh;->a(D)V

    .line 203
    return-void
.end method
