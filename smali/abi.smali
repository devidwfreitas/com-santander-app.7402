.class Labi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Labb;


# direct methods
.method constructor <init>(Labb;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Labi;->a:Labb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    .prologue
    const/16 v8, 0x30

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/high16 v7, 0x40000000    # 2.0f

    .line 335
    iget-object v0, p0, Labi;->a:Labb;

    invoke-static {v0}, Labb;->i(Labb;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, p0}, Labl;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 337
    iget-object v0, p0, Labi;->a:Labb;

    invoke-static {v0}, Labb;->b(Labb;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Labl;->a(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 338
    iget-object v1, p0, Labi;->a:Labb;

    invoke-static {v1}, Labb;->i(Labb;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v1}, Labl;->a(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v4

    .line 340
    iget-object v1, p0, Labi;->a:Labb;

    invoke-static {v1}, Labb;->l(Labb;)I

    move-result v1

    const/16 v5, 0x50

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Labi;->a:Labb;

    invoke-static {v1}, Labb;->l(Labb;)I

    move-result v1

    if-ne v1, v8, :cond_3

    .line 341
    :cond_0
    iget-object v1, p0, Labi;->a:Labb;

    invoke-static {v1}, Labb;->i(Labb;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v7}, Labl;->b(F)F

    move-result v5

    add-float/2addr v1, v5

    .line 342
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v7

    iget-object v6, p0, Labi;->a:Labb;

    invoke-static {v6}, Labb;->m(Labb;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 343
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float v0, v6, v0

    sub-float v0, v5, v0

    .line 344
    cmpl-float v5, v0, v1

    if-lez v5, :cond_7

    .line 345
    iget-object v5, p0, Labi;->a:Labb;

    invoke-static {v5}, Labb;->m(Labb;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    add-float/2addr v5, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 346
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v4, p0, Labi;->a:Labb;

    invoke-static {v4}, Labb;->m(Labb;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    sub-float/2addr v0, v1

    .line 351
    :cond_1
    :goto_0
    iget-object v1, p0, Labi;->a:Labb;

    invoke-static {v1}, Labb;->m(Labb;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v4, v1

    .line 352
    iget-object v1, p0, Labi;->a:Labb;

    invoke-static {v1}, Labb;->l(Labb;)I

    move-result v1

    if-ne v1, v8, :cond_2

    move v1, v2

    :goto_1
    int-to-float v1, v1

    add-float/2addr v1, v4

    move v9, v1

    move v1, v0

    move v0, v9

    .line 367
    :goto_2
    iget-object v2, p0, Labi;->a:Labb;

    invoke-static {v2}, Labb;->m(Labb;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 368
    iget-object v1, p0, Labi;->a:Labb;

    invoke-static {v1}, Labb;->m(Labb;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 369
    return-void

    :cond_2
    move v1, v3

    .line 352
    goto :goto_1

    .line 354
    :cond_3
    iget-object v1, p0, Labi;->a:Labb;

    invoke-static {v1}, Labb;->i(Labb;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v7}, Labl;->b(F)F

    move-result v5

    add-float/2addr v1, v5

    .line 355
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v7

    iget-object v6, p0, Labi;->a:Labb;

    invoke-static {v6}, Labb;->m(Labb;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 356
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float v0, v6, v0

    sub-float v0, v5, v0

    .line 357
    cmpl-float v5, v0, v1

    if-lez v5, :cond_6

    .line 358
    iget-object v5, p0, Labi;->a:Labb;

    invoke-static {v5}, Labb;->m(Labb;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    add-float/2addr v5, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 359
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v4, p0, Labi;->a:Labb;

    invoke-static {v4}, Labb;->m(Labb;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    sub-float/2addr v0, v1

    .line 364
    :cond_4
    :goto_3
    iget-object v1, p0, Labi;->a:Labb;

    invoke-static {v1}, Labb;->m(Labb;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 365
    iget-object v4, p0, Labi;->a:Labb;

    invoke-static {v4}, Labb;->l(Labb;)I

    move-result v4

    const v5, 0x800003

    if-ne v4, v5, :cond_5

    :goto_4
    int-to-float v2, v2

    add-float/2addr v1, v2

    goto/16 :goto_2

    :cond_5
    move v2, v3

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method
