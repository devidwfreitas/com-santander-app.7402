.class public Lcom/santander/app/components/view/FontFitTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/FontFitTextView;->a(Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/santander/app/components/view/FontFitTextView;->a()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p2}, Lcom/santander/app/components/view/FontFitTextView;->a(Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/santander/app/components/view/FontFitTextView;->a()V

    .line 32
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/santander/app/components/view/FontFitTextView;->a:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/santander/app/components/view/FontFitTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/santander/app/components/view/FontFitTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 38
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/santander/app/components/view/FontFitTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lflv;->SantanderTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/santander/app/components/view/FontFitTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 99
    invoke-virtual {p0, v1}, Lcom/santander/app/components/view/FontFitTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/FontFitTextView;->a(Landroid/util/AttributeSet;)V

    .line 46
    if-gtz p2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/components/view/FontFitTextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/santander/app/components/view/FontFitTextView;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 50
    const/high16 v2, 0x42c80000    # 100.0f

    .line 54
    iget-object v0, p0, Lcom/santander/app/components/view/FontFitTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/santander/app/components/view/FontFitTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    move v0, v3

    .line 56
    :goto_1
    sub-float v1, v2, v0

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    .line 57
    add-float v1, v2, v0

    div-float/2addr v1, v3

    .line 58
    iget-object v5, p0, Lcom/santander/app/components/view/FontFitTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    iget-object v5, p0, Lcom/santander/app/components/view/FontFitTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    int-to-float v6, v4

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    :goto_2
    move v2, v1

    .line 63
    goto :goto_1

    :cond_2
    move v0, v1

    move v1, v2

    .line 62
    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/santander/app/components/view/FontFitTextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/santander/app/components/view/FontFitTextView;->setTextSize(IF)V

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/santander/app/components/view/FontFitTextView;->a(Landroid/util/AttributeSet;)V

    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Lcom/santander/app/components/view/FontFitTextView;->getMeasuredHeight()I

    move-result v1

    .line 77
    invoke-virtual {p0}, Lcom/santander/app/components/view/FontFitTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/santander/app/components/view/FontFitTextView;->a(Ljava/lang/String;I)V

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/santander/app/components/view/FontFitTextView;->setMeasuredDimension(II)V

    .line 79
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 88
    if-eq p1, p3, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/santander/app/components/view/FontFitTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/santander/app/components/view/FontFitTextView;->a(Ljava/lang/String;I)V

    .line 91
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/santander/app/components/view/FontFitTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/santander/app/components/view/FontFitTextView;->a(Ljava/lang/String;I)V

    .line 84
    return-void
.end method
