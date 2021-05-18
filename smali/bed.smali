.class public Lbed;
.super Lbdy;
.source "SourceFile"


# instance fields
.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:F


# direct methods
.method constructor <init>(Lawu;Lbee;F)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lbdy;-><init>(Lawu;Lbee;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lbed;->e:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbed;->f:Landroid/graphics/Rect;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbed;->g:Landroid/graphics/Rect;

    .line 24
    iput p3, p0, Lbed;->h:F

    .line 25
    return-void
.end method

.method private f()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lbed;->c:Lbee;

    invoke-virtual {v0}, Lbee;->g()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lbed;->b:Lawu;

    invoke-virtual {v1, v0}, Lawu;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lbdy;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 43
    invoke-direct {p0}, Lbed;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 45
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 51
    iget-object v0, p0, Lbed;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    iget-object v0, p0, Lbed;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 65
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 28
    invoke-direct {p0}, Lbed;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lbed;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 34
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 35
    iget-object v1, p0, Lbed;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    iget-object v1, p0, Lbed;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lbed;->h:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lbed;->h:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    iget-object v1, p0, Lbed;->f:Landroid/graphics/Rect;

    iget-object v2, p0, Lbed;->g:Landroid/graphics/Rect;

    iget-object v3, p0, Lbed;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method
