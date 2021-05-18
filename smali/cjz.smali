.class Lcjz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcjx;

.field private b:Landroid/graphics/Path;

.field private c:[Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcjx;)V
    .locals 1

    .prologue
    .line 724
    iput-object p1, p0, Lcjz;->a:Lcjx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcjz;->b:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcjx;Lcjy;)V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lcjz;-><init>(Lcjx;)V

    return-void
.end method


# virtual methods
.method protected a(I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcjz;->c:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcjz;->c:[Landroid/graphics/Bitmap;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected a(Lcip;ZZ)V
    .locals 10

    .prologue
    const-wide v8, 0x4000cccccccccccdL    # 2.1

    .line 761
    invoke-interface {p1}, Lcip;->S()I

    move-result v1

    .line 762
    invoke-interface {p1}, Lcip;->d()F

    move-result v2

    .line 763
    invoke-interface {p1}, Lcip;->e()F

    move-result v3

    .line 765
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 767
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 768
    float-to-double v6, v2

    mul-double/2addr v6, v8

    double-to-int v5, v6

    float-to-double v6, v2

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v5, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 770
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 771
    iget-object v6, p0, Lcjz;->c:[Landroid/graphics/Bitmap;

    aput-object v4, v6, v0

    .line 772
    iget-object v4, p0, Lcjz;->a:Lcjx;

    iget-object v4, v4, Lcjx;->h:Landroid/graphics/Paint;

    invoke-interface {p1, v0}, Lcip;->a(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 774
    if-eqz p3, :cond_1

    .line 776
    iget-object v4, p0, Lcjz;->b:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 778
    iget-object v4, p0, Lcjz;->b:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v2, v2, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 785
    iget-object v4, p0, Lcjz;->b:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v2, v2, v3, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 792
    iget-object v4, p0, Lcjz;->b:Landroid/graphics/Path;

    iget-object v6, p0, Lcjz;->a:Lcjx;

    iget-object v6, v6, Lcjx;->h:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 765
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    :cond_1
    iget-object v4, p0, Lcjz;->a:Lcjx;

    iget-object v4, v4, Lcjx;->h:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v2, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 801
    if-eqz p2, :cond_0

    .line 802
    iget-object v4, p0, Lcjz;->a:Lcjx;

    iget-object v4, v4, Lcjx;->b:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 810
    :cond_2
    return-void
.end method

.method protected a(Lcip;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 738
    invoke-interface {p1}, Lcip;->S()I

    move-result v2

    .line 739
    const/4 v1, 0x0

    .line 741
    iget-object v3, p0, Lcjz;->c:[Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 742
    new-array v1, v2, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcjz;->c:[Landroid/graphics/Bitmap;

    .line 749
    :goto_0
    return v0

    .line 744
    :cond_0
    iget-object v3, p0, Lcjz;->c:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-eq v3, v2, :cond_1

    .line 745
    new-array v1, v2, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcjz;->c:[Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
