.class public Lclf;
.super Lcle;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lclh;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcle;-><init>(Lclh;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .prologue
    .line 22
    iget-object v0, p0, Lclf;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 26
    if-nez p1, :cond_0

    .line 27
    iget-object v0, p0, Lclf;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lclf;->c:Lclh;

    invoke-virtual {v1}, Lclh;->b()F

    move-result v1

    iget-object v2, p0, Lclf;->c:Lclh;

    .line 28
    invoke-virtual {v2}, Lclh;->n()F

    move-result v2

    iget-object v3, p0, Lclf;->c:Lclh;

    invoke-virtual {v3}, Lclh;->e()F

    move-result v3

    sub-float/2addr v2, v3

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 43
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lclf;->b:Landroid/graphics/Matrix;

    iget-object v1, p0, Lclf;->c:Lclh;

    .line 32
    invoke-virtual {v1}, Lclh;->o()F

    move-result v1

    iget-object v2, p0, Lclf;->c:Lclh;

    invoke-virtual {v2}, Lclh;->c()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    iget-object v2, p0, Lclf;->c:Lclh;

    .line 33
    invoke-virtual {v2}, Lclh;->n()F

    move-result v2

    iget-object v3, p0, Lclf;->c:Lclh;

    invoke-virtual {v3}, Lclh;->e()F

    move-result v3

    sub-float/2addr v2, v3

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 34
    iget-object v0, p0, Lclf;->b:Landroid/graphics/Matrix;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0
.end method
