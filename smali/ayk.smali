.class public Layk;
.super Layb;
.source "SourceFile"


# static fields
.field private static final b:I = 0x20


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/RectF;

.field private final g:Lbcl;

.field private final h:I

.field private final i:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<",
            "Lbce;",
            "Lbce;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Layy;
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

.field private final k:Layy;
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


# direct methods
.method public constructor <init>(Lawu;Lbdy;Lbci;)V
    .locals 9

    .prologue
    .line 40
    invoke-virtual {p3}, Lbci;->h()Lbdr;

    move-result-object v0

    invoke-virtual {v0}, Lbdr;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    .line 41
    invoke-virtual {p3}, Lbci;->i()Lbds;

    move-result-object v0

    invoke-virtual {v0}, Lbds;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual {p3}, Lbci;->d()Lbaw;

    move-result-object v5

    invoke-virtual {p3}, Lbci;->g()Lbao;

    move-result-object v6

    .line 42
    invoke-virtual {p3}, Lbci;->j()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Lbci;->k()Lbao;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 40
    invoke-direct/range {v0 .. v8}, Layb;-><init>(Lawu;Lbdy;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lbaw;Lbao;Ljava/util/List;Lbao;)V

    .line 28
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Layk;->d:Landroid/support/v4/util/LongSparseArray;

    .line 29
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Layk;->e:Landroid/support/v4/util/LongSparseArray;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Layk;->f:Landroid/graphics/RectF;

    .line 44
    invoke-virtual {p3}, Lbci;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Layk;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {p3}, Lbci;->b()Lbcl;

    move-result-object v0

    iput-object v0, p0, Layk;->g:Lbcl;

    .line 46
    invoke-virtual {p1}, Lawu;->s()Lawr;

    move-result-object v0

    invoke-virtual {v0}, Lawr;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Layk;->h:I

    .line 48
    invoke-virtual {p3}, Lbci;->c()Lbas;

    move-result-object v0

    invoke-virtual {v0}, Lbas;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layk;->i:Layy;

    .line 49
    iget-object v0, p0, Layk;->i:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 50
    iget-object v0, p0, Layk;->i:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 52
    invoke-virtual {p3}, Lbci;->e()Lbbc;

    move-result-object v0

    invoke-virtual {v0}, Lbbc;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layk;->j:Layy;

    .line 53
    iget-object v0, p0, Layk;->j:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 54
    iget-object v0, p0, Layk;->j:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 56
    invoke-virtual {p3}, Lbci;->f()Lbbc;

    move-result-object v0

    invoke-virtual {v0}, Lbbc;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layk;->k:Layy;

    .line 57
    iget-object v0, p0, Layk;->k:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 58
    iget-object v0, p0, Layk;->k:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 59
    return-void
.end method

.method private c()Landroid/graphics/LinearGradient;
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 82
    invoke-direct {p0}, Layk;->e()I

    move-result v8

    .line 83
    iget-object v0, p0, Layk;->d:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    .line 84
    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Layk;->j:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 88
    iget-object v1, p0, Layk;->k:Layy;

    invoke-virtual {v1}, Layy;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 89
    iget-object v2, p0, Layk;->i:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbce;

    .line 90
    invoke-virtual {v2}, Lbce;->b()[I

    move-result-object v5

    .line 91
    invoke-virtual {v2}, Lbce;->a()[F

    move-result-object v6

    .line 92
    iget-object v2, p0, Layk;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Layk;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 93
    iget-object v3, p0, Layk;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Layk;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    float-to-int v3, v0

    .line 94
    iget-object v0, p0, Layk;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Layk;->f:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v9

    add-float/2addr v0, v4

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v4

    float-to-int v4, v0

    .line 95
    iget-object v0, p0, Layk;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Layk;->f:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v9

    add-float/2addr v0, v7

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 96
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, v2

    int-to-float v2, v3

    int-to-float v3, v4

    int-to-float v4, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 97
    iget-object v1, p0, Layk;->d:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v8

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private d()Landroid/graphics/RadialGradient;
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 102
    invoke-direct {p0}, Layk;->e()I

    move-result v7

    .line 103
    iget-object v0, p0, Layk;->e:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v7

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    .line 104
    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-object v0, p0, Layk;->j:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 108
    iget-object v1, p0, Layk;->k:Layy;

    invoke-virtual {v1}, Layy;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 109
    iget-object v2, p0, Layk;->i:Layy;

    invoke-virtual {v2}, Layy;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbce;

    .line 110
    invoke-virtual {v2}, Lbce;->b()[I

    move-result-object v4

    .line 111
    invoke-virtual {v2}, Lbce;->a()[F

    move-result-object v5

    .line 112
    iget-object v2, p0, Layk;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Layk;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 113
    iget-object v3, p0, Layk;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Layk;->f:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v9

    add-float/2addr v3, v6

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    float-to-int v6, v0

    .line 114
    iget-object v0, p0, Layk;->f:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Layk;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v9

    add-float/2addr v0, v3

    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 115
    iget-object v3, p0, Layk;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Layk;->f:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v9

    add-float/2addr v3, v8

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 116
    sub-int/2addr v0, v2

    int-to-double v8, v0

    sub-int v0, v1, v6

    int-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v3, v0

    .line 117
    new-instance v0, Landroid/graphics/RadialGradient;

    int-to-float v1, v2

    int-to-float v2, v6

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 118
    iget-object v1, p0, Layk;->e:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private e()I
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Layk;->j:Layy;

    invoke-virtual {v0}, Layy;->c()F

    move-result v0

    iget v1, p0, Layk;->h:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 124
    iget-object v0, p0, Layk;->k:Layy;

    invoke-virtual {v0}, Layy;->c()F

    move-result v0

    iget v2, p0, Layk;->h:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 125
    iget-object v0, p0, Layk;->i:Layy;

    invoke-virtual {v0}, Layy;->c()F

    move-result v0

    iget v3, p0, Layk;->h:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 126
    const/16 v0, 0x11

    .line 127
    if-eqz v1, :cond_0

    .line 128
    mul-int/lit16 v0, v1, 0x20f

    .line 130
    :cond_0
    if-eqz v2, :cond_1

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v2

    .line 133
    :cond_1
    if-eqz v3, :cond_2

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v3

    .line 136
    :cond_2
    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Layk;->f:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p2}, Layk;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 63
    iget-object v0, p0, Layk;->g:Lbcl;

    sget-object v1, Lbcl;->Linear:Lbcl;

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Layk;->a:Landroid/graphics/Paint;

    invoke-direct {p0}, Layk;->c()Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 69
    :goto_0
    invoke-super {p0, p1, p2, p3}, Layb;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 70
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Layk;->a:Landroid/graphics/Paint;

    invoke-direct {p0}, Layk;->d()Landroid/graphics/RadialGradient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
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
    .line 75
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Layk;->c:Ljava/lang/String;

    return-object v0
.end method
