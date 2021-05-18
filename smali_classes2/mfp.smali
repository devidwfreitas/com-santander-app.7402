.class public Lmfp;
.super Lmfq;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lmfq;-><init>(Landroid/widget/SeekBar;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method private d(I)I
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lmfp;->c(I)I

    move-result v0

    iget-object v1, p0, Lmfp;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmfp;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private j()I
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lmfp;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    iget-object v1, p0, Lmfp;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lmfp;->e:I

    add-int/2addr v0, v1

    neg-int v0, v0

    return v0
.end method


# virtual methods
.method protected a()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lmfp;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lmfp;->d(I)I

    move-result v0

    .line 30
    invoke-direct {p0}, Lmfp;->j()I

    move-result v1

    .line 31
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method protected a(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lmfp;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 24
    iget-object v1, p0, Lmfp;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getY()F

    move-result v1

    .line 25
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method protected b()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lmfp;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lmfp;->d(I)I

    move-result v0

    .line 36
    invoke-direct {p0}, Lmfp;->j()I

    move-result v1

    .line 37
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method
