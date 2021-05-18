.class public Layj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layg;
.implements Layz;


# static fields
.field private static final a:I = 0x20


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/graphics/Matrix;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/RectF;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layp;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lbcl;

.field private final k:Layy;
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

.field private final l:Layy;
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

.field private final m:Layy;
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

.field private final n:Layy;
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

.field private final o:Lawu;

.field private final p:I


# direct methods
.method public constructor <init>(Lawu;Lbdy;Lbcf;)V
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Layj;->c:Landroid/support/v4/util/LongSparseArray;

    .line 34
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Layj;->d:Landroid/support/v4/util/LongSparseArray;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Layj;->e:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Layj;->f:Landroid/graphics/Path;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Layj;->g:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Layj;->h:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layj;->i:Ljava/util/List;

    .line 50
    invoke-virtual {p3}, Lbcf;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Layj;->b:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Layj;->o:Lawu;

    .line 52
    invoke-virtual {p3}, Lbcf;->b()Lbcl;

    move-result-object v0

    iput-object v0, p0, Layj;->j:Lbcl;

    .line 53
    iget-object v0, p0, Layj;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Lbcf;->c()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 54
    invoke-virtual {p1}, Lawu;->s()Lawr;

    move-result-object v0

    invoke-virtual {v0}, Lawr;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Layj;->p:I

    .line 56
    invoke-virtual {p3}, Lbcf;->d()Lbas;

    move-result-object v0

    invoke-virtual {v0}, Lbas;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layj;->k:Layy;

    .line 57
    iget-object v0, p0, Layj;->k:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 58
    iget-object v0, p0, Layj;->k:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 60
    invoke-virtual {p3}, Lbcf;->e()Lbaw;

    move-result-object v0

    invoke-virtual {v0}, Lbaw;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layj;->l:Layy;

    .line 61
    iget-object v0, p0, Layj;->l:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 62
    iget-object v0, p0, Layj;->l:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 64
    invoke-virtual {p3}, Lbcf;->f()Lbbc;

    move-result-object v0

    invoke-virtual {v0}, Lbbc;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layj;->m:Layy;

    .line 65
    iget-object v0, p0, Layj;->m:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 66
    iget-object v0, p0, Layj;->m:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 68
    invoke-virtual {p3}, Lbcf;->g()Lbbc;

    move-result-object v0

    invoke-virtual {v0}, Lbbc;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layj;->n:Layy;

    .line 69
    iget-object v0, p0, Layj;->n:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 70
    iget-object v0, p0, Layj;->n:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 71
    return-void
.end method

.method private c()Landroid/graphics/LinearGradient;
    .locals 9

    .prologue
    .line 138
    invoke-direct {p0}, Layj;->e()I

    move-result v8

    .line 139
    iget-object v0, p0, Layj;->c:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    .line 140
    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Layj;->m:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/PointF;

    .line 144
    iget-object v0, p0, Layj;->n:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/PointF;

    .line 145
    iget-object v0, p0, Layj;->k:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbce;

    .line 146
    invoke-virtual {v0}, Lbce;->b()[I

    move-result-object v5

    .line 147
    invoke-virtual {v0}, Lbce;->a()[F

    move-result-object v6

    .line 148
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 150
    iget-object v1, p0, Layj;->c:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v8

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private d()Landroid/graphics/RadialGradient;
    .locals 12

    .prologue
    .line 155
    invoke-direct {p0}, Layj;->e()I

    move-result v7

    .line 156
    iget-object v0, p0, Layj;->d:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v7

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    .line 157
    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Layj;->m:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 161
    iget-object v1, p0, Layj;->n:Layy;

    invoke-virtual {v1}, Layy;->b()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/PointF;

    .line 162
    iget-object v1, p0, Layj;->k:Layy;

    invoke-virtual {v1}, Layy;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbce;

    .line 163
    invoke-virtual {v1}, Lbce;->b()[I

    move-result-object v4

    .line 164
    invoke-virtual {v1}, Lbce;->a()[F

    move-result-object v5

    .line 165
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 166
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 167
    iget v0, v3, Landroid/graphics/PointF;->x:F

    .line 168
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 169
    sub-float/2addr v0, v1

    float-to-double v8, v0

    sub-float v0, v3, v2

    float-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v3, v8

    .line 170
    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 171
    iget-object v1, p0, Layj;->d:Landroid/support/v4/util/LongSparseArray;

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private e()I
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Layj;->m:Layy;

    invoke-virtual {v0}, Layy;->c()F

    move-result v0

    iget v1, p0, Layj;->p:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 177
    iget-object v0, p0, Layj;->n:Layy;

    invoke-virtual {v0}, Layy;->c()F

    move-result v0

    iget v2, p0, Layj;->p:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 178
    iget-object v0, p0, Layj;->k:Layy;

    invoke-virtual {v0}, Layy;->c()F

    move-result v0

    iget v3, p0, Layj;->p:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 179
    const/16 v0, 0x11

    .line 180
    if-eqz v1, :cond_0

    .line 181
    mul-int/lit16 v0, v1, 0x20f

    .line 183
    :cond_0
    if-eqz v2, :cond_1

    .line 184
    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v2

    .line 186
    :cond_1
    if-eqz v3, :cond_2

    .line 187
    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v3

    .line 189
    :cond_2
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Layj;->o:Lawu;

    invoke-virtual {v0}, Lawu;->invalidateSelf()V

    .line 75
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    .line 87
    const-string v0, "GradientFillContent#draw"

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Layj;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v1, v2

    .line 89
    :goto_0
    iget-object v0, p0, Layj;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 90
    iget-object v3, p0, Layj;->f:Landroid/graphics/Path;

    iget-object v0, p0, Layj;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layp;

    invoke-interface {v0}, Layp;->e()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Layj;->f:Landroid/graphics/Path;

    iget-object v1, p0, Layj;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 96
    iget-object v0, p0, Layj;->j:Lbcl;

    sget-object v1, Lbcl;->Linear:Lbcl;

    if-ne v0, v1, :cond_1

    .line 97
    invoke-direct {p0}, Layj;->c()Landroid/graphics/LinearGradient;

    move-result-object v0

    .line 101
    :goto_1
    iget-object v1, p0, Layj;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 102
    iget-object v1, p0, Layj;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 103
    iget-object v1, p0, Layj;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 105
    int-to-float v0, p3

    div-float v1, v0, v4

    iget-object v0, p0, Layj;->l:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 106
    iget-object v1, p0, Layj;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    iget-object v0, p0, Layj;->f:Landroid/graphics/Path;

    iget-object v1, p0, Layj;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 109
    const-string v0, "GradientFillContent#draw"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    .line 110
    return-void

    .line 99
    :cond_1
    invoke-direct {p0}, Layj;->d()Landroid/graphics/RadialGradient;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 113
    iget-object v0, p0, Layj;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v1, v2

    .line 114
    :goto_0
    iget-object v0, p0, Layj;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 115
    iget-object v3, p0, Layj;->f:Landroid/graphics/Path;

    iget-object v0, p0, Layj;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layp;

    invoke-interface {v0}, Layp;->e()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 114
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Layj;->f:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 120
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 126
    return-void
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
    .line 131
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laye;",
            ">;",
            "Ljava/util/List",
            "<",
            "Laye;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 79
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 80
    instance-of v2, v0, Layp;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Layj;->i:Ljava/util/List;

    check-cast v0, Layp;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Layj;->b:Ljava/lang/String;

    return-object v0
.end method
