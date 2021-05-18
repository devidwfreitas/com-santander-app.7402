.class public Lazq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<",
            "Lbaj;",
            "Lbaj;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Layy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Layy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbbr;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lazq;->a:Landroid/graphics/Matrix;

    .line 25
    invoke-virtual {p1}, Lbbr;->a()Lbba;

    move-result-object v0

    invoke-virtual {v0}, Lbba;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lazq;->b:Layy;

    .line 26
    invoke-virtual {p1}, Lbbr;->b()Lbbu;

    move-result-object v0

    invoke-interface {v0}, Lbbu;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lazq;->c:Layy;

    .line 27
    invoke-virtual {p1}, Lbbr;->c()Lbbf;

    move-result-object v0

    invoke-virtual {v0}, Lbbf;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lazq;->d:Layy;

    .line 28
    invoke-virtual {p1}, Lbbr;->d()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lazq;->e:Layy;

    .line 29
    invoke-virtual {p1}, Lbbr;->e()Lbaw;

    move-result-object v0

    invoke-virtual {v0}, Lbaw;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lazq;->f:Layy;

    .line 30
    invoke-virtual {p1}, Lbbr;->f()Lbao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Lbbr;->f()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lazq;->g:Layy;

    .line 35
    :goto_0
    invoke-virtual {p1}, Lbbr;->g()Lbao;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lbbr;->g()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lazq;->h:Layy;

    .line 40
    :goto_1
    return-void

    .line 33
    :cond_0
    iput-object v1, p0, Lazq;->g:Layy;

    goto :goto_0

    .line 38
    :cond_1
    iput-object v1, p0, Lazq;->h:Layy;

    goto :goto_1
.end method


# virtual methods
.method public a(F)Landroid/graphics/Matrix;
    .locals 10

    .prologue
    .line 111
    iget-object v0, p0, Lazq;->c:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 112
    iget-object v1, p0, Lazq;->b:Layy;

    invoke-virtual {v1}, Layy;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 113
    iget-object v2, p0, Lazq;->d:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbaj;

    .line 114
    iget-object v3, p0, Lazq;->e:Layy;

    invoke-virtual {v3}, Layy;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 116
    iget-object v4, p0, Lazq;->a:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 117
    iget-object v4, p0, Lazq;->a:Landroid/graphics/Matrix;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 118
    iget-object v0, p0, Lazq;->a:Landroid/graphics/Matrix;

    .line 119
    invoke-virtual {v2}, Lbaj;->a()F

    move-result v4

    float-to-double v4, v4

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 120
    invoke-virtual {v2}, Lbaj;->b()F

    move-result v2

    float-to-double v6, v2

    float-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v2, v6

    .line 118
    invoke-virtual {v0, v4, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 121
    iget-object v0, p0, Lazq;->a:Landroid/graphics/Matrix;

    mul-float v2, v3, p1

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 123
    iget-object v0, p0, Lazq;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public a()Layy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Layy",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lazq;->f:Layy;

    return-object v0
.end method

.method public a(Layz;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lazq;->b:Layy;

    invoke-virtual {v0, p1}, Layy;->a(Layz;)V

    .line 58
    iget-object v0, p0, Lazq;->c:Layy;

    invoke-virtual {v0, p1}, Layy;->a(Layz;)V

    .line 59
    iget-object v0, p0, Lazq;->d:Layy;

    invoke-virtual {v0, p1}, Layy;->a(Layz;)V

    .line 60
    iget-object v0, p0, Lazq;->e:Layy;

    invoke-virtual {v0, p1}, Layy;->a(Layz;)V

    .line 61
    iget-object v0, p0, Lazq;->f:Layy;

    invoke-virtual {v0, p1}, Layy;->a(Layz;)V

    .line 62
    iget-object v0, p0, Lazq;->g:Layy;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lazq;->g:Layy;

    invoke-virtual {v0, p1}, Layy;->a(Layz;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lazq;->h:Layy;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lazq;->h:Layy;

    invoke-virtual {v0, p1}, Layy;->a(Layz;)V

    .line 68
    :cond_1
    return-void
.end method

.method public a(Lbdy;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lazq;->b:Layy;

    invoke-virtual {p1, v0}, Lbdy;->a(Layy;)V

    .line 44
    iget-object v0, p0, Lazq;->c:Layy;

    invoke-virtual {p1, v0}, Lbdy;->a(Layy;)V

    .line 45
    iget-object v0, p0, Lazq;->d:Layy;

    invoke-virtual {p1, v0}, Lbdy;->a(Layy;)V

    .line 46
    iget-object v0, p0, Lazq;->e:Layy;

    invoke-virtual {p1, v0}, Lbdy;->a(Layy;)V

    .line 47
    iget-object v0, p0, Lazq;->f:Layy;

    invoke-virtual {p1, v0}, Lbdy;->a(Layy;)V

    .line 48
    iget-object v0, p0, Lazq;->g:Layy;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lazq;->g:Layy;

    invoke-virtual {p1, v0}, Lbdy;->a(Layy;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lazq;->h:Layy;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lazq;->h:Layy;

    invoke-virtual {p1, v0}, Lbdy;->a(Layy;)V

    .line 54
    :cond_1
    return-void
.end method

.method public b()Layy;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lazq;->g:Layy;

    return-object v0
.end method

.method public c()Layy;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lazq;->h:Layy;

    return-object v0
.end method

.method public d()Landroid/graphics/Matrix;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lazq;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 85
    iget-object v0, p0, Lazq;->c:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 86
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    iget-object v1, p0, Lazq;->a:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 90
    :cond_1
    iget-object v0, p0, Lazq;->e:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 91
    cmpl-float v1, v0, v3

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lazq;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 95
    :cond_2
    iget-object v0, p0, Lazq;->d:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbaj;

    .line 96
    invoke-virtual {v0}, Lbaj;->a()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lbaj;->b()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_4

    .line 97
    :cond_3
    iget-object v1, p0, Lazq;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lbaj;->a()F

    move-result v2

    invoke-virtual {v0}, Lbaj;->b()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 100
    :cond_4
    iget-object v0, p0, Lazq;->b:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 101
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_6

    .line 102
    :cond_5
    iget-object v1, p0, Lazq;->a:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 104
    :cond_6
    iget-object v0, p0, Lazq;->a:Landroid/graphics/Matrix;

    return-object v0
.end method
