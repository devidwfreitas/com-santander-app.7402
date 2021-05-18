.class public Lcom/santander/app/widget/PagerIndicator;
.super Landroid/widget/RadioGroup;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/santander/app/widget/PagerIndicator;->setGravity(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0, v3}, Lcom/santander/app/widget/PagerIndicator;->setGravity(I)V

    .line 36
    sget-object v0, Lflv;->PagerIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/widget/PagerIndicator;->a:I

    .line 38
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/widget/PagerIndicator;->b:I

    .line 39
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/widget/PagerIndicator;->c:I

    .line 40
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/widget/PagerIndicator;->d:I

    .line 41
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/santander/app/widget/PagerIndicator;->e:I

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    invoke-direct {p0}, Lcom/santander/app/widget/PagerIndicator;->a()V

    .line 46
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/santander/app/widget/PagerIndicator;->removeAllViews()V

    .line 76
    iget v0, p0, Lcom/santander/app/widget/PagerIndicator;->c:I

    if-lez v0, :cond_1

    .line 77
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    iget v0, p0, Lcom/santander/app/widget/PagerIndicator;->b:I

    iget v3, p0, Lcom/santander/app/widget/PagerIndicator;->b:I

    invoke-direct {v2, v0, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 78
    iget v0, p0, Lcom/santander/app/widget/PagerIndicator;->d:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/santander/app/widget/PagerIndicator;->d:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v0, v1, v3, v1}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    move v0, v1

    .line 81
    :goto_0
    iget v3, p0, Lcom/santander/app/widget/PagerIndicator;->c:I

    if-ge v0, v3, :cond_1

    .line 82
    new-instance v3, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/santander/app/widget/PagerIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 85
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget v4, p0, Lcom/santander/app/widget/PagerIndicator;->a:I

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 88
    iget v4, p0, Lcom/santander/app/widget/PagerIndicator;->e:I

    if-ne v0, v4, :cond_0

    .line 89
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 92
    :cond_0
    invoke-virtual {p0, v3}, Lcom/santander/app/widget/PagerIndicator;->addView(Landroid/view/View;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    return-void
.end method


# virtual methods
.method public setDividaerSpace(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/santander/app/widget/PagerIndicator;->d:I

    .line 65
    invoke-direct {p0}, Lcom/santander/app/widget/PagerIndicator;->a()V

    .line 66
    return-void
.end method

.method public setIndicatorCount(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/santander/app/widget/PagerIndicator;->c:I

    .line 60
    invoke-direct {p0}, Lcom/santander/app/widget/PagerIndicator;->a()V

    .line 61
    return-void
.end method

.method public setIndicatorDrawable(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/santander/app/widget/PagerIndicator;->a:I

    .line 50
    invoke-direct {p0}, Lcom/santander/app/widget/PagerIndicator;->a()V

    .line 51
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/santander/app/widget/PagerIndicator;->b:I

    .line 55
    invoke-direct {p0}, Lcom/santander/app/widget/PagerIndicator;->a()V

    .line 56
    return-void
.end method

.method public setPageSelected(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/santander/app/widget/PagerIndicator;->e:I

    .line 70
    invoke-direct {p0}, Lcom/santander/app/widget/PagerIndicator;->a()V

    .line 71
    return-void
.end method
