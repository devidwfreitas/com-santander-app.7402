.class public Lays;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layp;
.implements Layz;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/RectF;

.field private final c:Ljava/lang/String;

.field private final d:Lawu;

.field private final e:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Layy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layy",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private h:Layw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Lawu;Lbdy;Lbcy;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lays;->a:Landroid/graphics/Path;

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lays;->b:Landroid/graphics/RectF;

    .line 31
    invoke-virtual {p3}, Lbcy;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lays;->c:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lays;->d:Lawu;

    .line 33
    invoke-virtual {p3}, Lbcy;->d()Lbbu;

    move-result-object v0

    invoke-interface {v0}, Lbbu;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lays;->e:Layy;

    .line 34
    invoke-virtual {p3}, Lbcy;->c()Lbbc;

    move-result-object v0

    invoke-virtual {v0}, Lbbc;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lays;->f:Layy;

    .line 35
    invoke-virtual {p3}, Lbcy;->b()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Lays;->g:Layy;

    .line 37
    iget-object v0, p0, Lays;->e:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 38
    iget-object v0, p0, Lays;->f:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 39
    iget-object v0, p0, Lays;->g:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 41
    iget-object v0, p0, Lays;->e:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 42
    iget-object v0, p0, Lays;->f:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 43
    iget-object v0, p0, Lays;->g:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 44
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lays;->i:Z

    .line 56
    iget-object v0, p0, Lays;->d:Lawu;

    invoke-virtual {v0}, Lawu;->invalidateSelf()V

    .line 57
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lays;->c()V

    .line 52
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
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
    .line 60
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 61
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 62
    instance-of v1, v0, Layw;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Layw;

    .line 63
    invoke-virtual {v1}, Layw;->c()Lbdw;

    move-result-object v1

    sget-object v3, Lbdw;->Simultaneously:Lbdw;

    if-ne v1, v3, :cond_0

    .line 64
    check-cast v0, Layw;

    iput-object v0, p0, Lays;->h:Layw;

    .line 65
    iget-object v0, p0, Lays;->h:Layw;

    invoke-virtual {v0, p0}, Layw;->a(Layz;)V

    .line 60
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lays;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/graphics/Path;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 71
    iget-boolean v0, p0, Lays;->i:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lays;->a:Landroid/graphics/Path;

    .line 135
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lays;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 77
    iget-object v0, p0, Lays;->f:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 78
    iget v2, v0, Landroid/graphics/PointF;->x:F

    div-float v3, v2, v11

    .line 79
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v4, v0, v11

    .line 80
    iget-object v0, p0, Lays;->g:Layy;

    if-nez v0, :cond_5

    move v0, v1

    .line 81
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 82
    cmpl-float v5, v0, v2

    if-lez v5, :cond_6

    .line 87
    :goto_2
    iget-object v0, p0, Lays;->e:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 89
    iget-object v5, p0, Lays;->a:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    add-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 91
    iget-object v5, p0, Lays;->a:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    sub-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    cmpl-float v5, v2, v1

    if-lez v5, :cond_1

    .line 94
    iget-object v5, p0, Lays;->b:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    mul-float v7, v11, v2

    sub-float/2addr v6, v7

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    mul-float v8, v11, v2

    sub-float/2addr v7, v8

    iget v8, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v3

    iget v9, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 98
    iget-object v5, p0, Lays;->a:Landroid/graphics/Path;

    iget-object v6, p0, Lays;->b:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v1, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 101
    :cond_1
    iget-object v5, p0, Lays;->a:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    add-float/2addr v6, v2

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    cmpl-float v5, v2, v1

    if-lez v5, :cond_2

    .line 104
    iget-object v5, p0, Lays;->b:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v4

    mul-float v8, v11, v2

    sub-float/2addr v7, v8

    iget v8, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v3

    mul-float v9, v11, v2

    add-float/2addr v8, v9

    iget v9, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    iget-object v5, p0, Lays;->a:Landroid/graphics/Path;

    iget-object v6, p0, Lays;->b:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v12, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 111
    :cond_2
    iget-object v5, p0, Lays;->a:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    add-float/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 113
    cmpl-float v5, v2, v1

    if-lez v5, :cond_3

    .line 114
    iget-object v5, p0, Lays;->b:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    iget v8, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v3

    mul-float v9, v11, v2

    add-float/2addr v8, v9

    iget v9, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v4

    mul-float v10, v11, v2

    add-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    iget-object v5, p0, Lays;->a:Landroid/graphics/Path;

    iget-object v6, p0, Lays;->b:Landroid/graphics/RectF;

    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v5, v6, v7, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 121
    :cond_3
    iget-object v5, p0, Lays;->a:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v3

    sub-float/2addr v6, v2

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    cmpl-float v1, v2, v1

    if-lez v1, :cond_4

    .line 124
    iget-object v1, p0, Lays;->b:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v3

    mul-float v6, v11, v2

    sub-float/2addr v5, v6

    iget v6, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v4

    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    mul-float/2addr v2, v11

    add-float/2addr v0, v2

    invoke-virtual {v1, v5, v6, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 128
    iget-object v0, p0, Lays;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lays;->b:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 130
    :cond_4
    iget-object v0, p0, Lays;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 132
    iget-object v0, p0, Lays;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lays;->h:Layw;

    invoke-static {v0, v1}, Lbey;->a(Landroid/graphics/Path;Layw;)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lays;->i:Z

    .line 135
    iget-object v0, p0, Lays;->a:Landroid/graphics/Path;

    goto/16 :goto_0

    .line 80
    :cond_5
    iget-object v0, p0, Lays;->g:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto/16 :goto_1

    :cond_6
    move v2, v0

    goto/16 :goto_2
.end method
