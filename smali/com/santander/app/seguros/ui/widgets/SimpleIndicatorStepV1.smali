.class public Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F

.field private c:Landroid/graphics/drawable/GradientDrawable;

.field private d:Landroid/graphics/drawable/GradientDrawable;

.field private e:I

.field private f:I

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->a:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->b:F

    .line 24
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->c:Landroid/graphics/drawable/GradientDrawable;

    .line 25
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->d:Landroid/graphics/drawable/GradientDrawable;

    .line 26
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->e:I

    .line 27
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->a:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->b:F

    .line 24
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->c:Landroid/graphics/drawable/GradientDrawable;

    .line 25
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->d:Landroid/graphics/drawable/GradientDrawable;

    .line 26
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->e:I

    .line 27
    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v3, 0x0

    .line 42
    sget-object v0, Lflv;->SimpleIndicatorStepV1:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->a:I

    .line 44
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->b:F

    .line 45
    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->h:F

    .line 46
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->g:F

    .line 47
    invoke-virtual {p0, v3}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->setOrientation(I)V

    .line 48
    invoke-virtual {p0, v5}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->setGravity(I)V

    .line 49
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 50
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->d:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->a:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 51
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 52
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 53
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->c:Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->e:I

    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStep(I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 94
    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    if-ge p1, v1, :cond_4

    .line 95
    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    if-gtz v1, :cond_1

    :goto_0
    if-ltz v0, :cond_0

    .line 96
    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_2

    .line 119
    :cond_0
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    .line 120
    :goto_1
    return-void

    .line 95
    :cond_1
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->c:Landroid/graphics/drawable/GradientDrawable;

    if-eq v2, v3, :cond_3

    .line 101
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 104
    :cond_4
    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    if-le p1, v1, :cond_0

    .line 105
    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    if-nez v1, :cond_5

    :goto_2
    if-ge v0, p1, :cond_0

    .line 106
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_6

    .line 107
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    goto :goto_1

    .line 105
    :cond_5
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 111
    :cond_6
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->d:Landroid/graphics/drawable/GradientDrawable;

    if-eq v2, v3, :cond_7

    .line 113
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setSteps(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 59
    if-gtz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->removeAllViews()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->e:I

    .line 65
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->getChildCount()I

    move-result v0

    .line 66
    add-int v1, p1, v0

    .line 68
    if-ge v0, p1, :cond_3

    .line 69
    :goto_1
    if-ge v0, p1, :cond_0

    .line 70
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->g:F

    float-to-int v3, v3

    iget v4, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->h:F

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    if-lez v0, :cond_2

    .line 73
    iget v3, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->b:F

    float-to-int v3, v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->addView(Landroid/view/View;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_3
    if-le v0, p1, :cond_0

    .line 80
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lt v0, p1, :cond_0

    .line 81
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 82
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->e:I

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->f:I

    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 86
    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->removeView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/SimpleIndicatorStepV1;->invalidate()V

    .line 80
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method
