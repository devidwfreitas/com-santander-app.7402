.class Lfbe;
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

.field final synthetic f:Lfba;


# direct methods
.method constructor <init>(Lfba;Landroid/view/animation/Interpolator;IIII)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lfbe;->f:Lfba;

    iput-object p2, p0, Lfbe;->a:Landroid/view/animation/Interpolator;

    iput p3, p0, Lfbe;->b:I

    iput p4, p0, Lfbe;->c:I

    iput p5, p0, Lfbe;->d:I

    iput p6, p0, Lfbe;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;F)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lfbe;->f:Lfba;

    invoke-static {v0}, Lfba;->a(Lfba;)Lfcb;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lfcb;->a(Landroid/graphics/Canvas;F)V

    .line 57
    iget-object v0, p0, Lfbe;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 58
    iget v1, p0, Lfbe;->b:I

    iget v2, p0, Lfbe;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lfbe;->c:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lfbe;->d:I

    int-to-float v1, v1

    iget v2, p0, Lfbe;->e:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 60
    return-void
.end method
