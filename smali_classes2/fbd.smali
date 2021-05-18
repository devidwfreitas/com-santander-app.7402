.class Lfbd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfcb;


# instance fields
.field final synthetic a:Landroid/view/animation/Interpolator;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Lfba;


# direct methods
.method constructor <init>(Lfba;Landroid/view/animation/Interpolator;IIIIII)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lfbd;->h:Lfba;

    iput-object p2, p0, Lfbd;->a:Landroid/view/animation/Interpolator;

    iput p3, p0, Lfbd;->b:I

    iput p4, p0, Lfbd;->c:I

    iput p5, p0, Lfbd;->d:I

    iput p6, p0, Lfbd;->e:I

    iput p7, p0, Lfbd;->f:I

    iput p8, p0, Lfbd;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;F)V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lfbd;->h:Lfba;

    invoke-static {v0}, Lfba;->a(Lfba;)Lfcb;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lfcb;->a(Landroid/graphics/Canvas;F)V

    .line 38
    iget-object v0, p0, Lfbd;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 39
    iget v1, p0, Lfbd;->b:I

    iget v2, p0, Lfbd;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lfbd;->c:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lfbd;->d:I

    iget v3, p0, Lfbd;->e:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lfbd;->e:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lfbd;->f:I

    int-to-float v2, v2

    iget v3, p0, Lfbd;->g:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 41
    return-void
.end method
