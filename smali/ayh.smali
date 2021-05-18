.class public Layh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layp;
.implements Layz;


# static fields
.field private static final a:F = 0.55228f


# instance fields
.field private final b:Landroid/graphics/Path;

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

.field private g:Layw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Lawu;Lbdy;Lbca;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Layh;->b:Landroid/graphics/Path;

    .line 30
    invoke-virtual {p3}, Lbca;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Layh;->c:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Layh;->d:Lawu;

    .line 32
    invoke-virtual {p3}, Lbca;->c()Lbbc;

    move-result-object v0

    invoke-virtual {v0}, Lbbc;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layh;->e:Layy;

    .line 33
    invoke-virtual {p3}, Lbca;->b()Lbbu;

    move-result-object v0

    invoke-interface {v0}, Lbbu;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layh;->f:Layy;

    .line 35
    iget-object v0, p0, Layh;->e:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 36
    iget-object v0, p0, Layh;->f:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 38
    iget-object v0, p0, Layh;->e:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 39
    iget-object v0, p0, Layh;->f:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 40
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Layh;->h:Z

    .line 48
    iget-object v0, p0, Layh;->d:Lawu;

    invoke-virtual {v0}, Lawu;->invalidateSelf()V

    .line 49
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Layh;->c()V

    .line 44
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
    .line 52
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 53
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 54
    instance-of v1, v0, Layw;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Layw;

    .line 55
    invoke-virtual {v1}, Layw;->c()Lbdw;

    move-result-object v1

    sget-object v3, Lbdw;->Simultaneously:Lbdw;

    if-ne v1, v3, :cond_0

    .line 56
    check-cast v0, Layw;

    iput-object v0, p0, Layh;->g:Layw;

    .line 57
    iget-object v0, p0, Layh;->g:Layw;

    invoke-virtual {v0, p0}, Layw;->a(Layz;)V

    .line 52
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Layh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/graphics/Path;
    .locals 14

    .prologue
    .line 67
    iget-boolean v0, p0, Layh;->h:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Layh;->b:Landroid/graphics/Path;

    .line 97
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Layh;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 74
    iget-object v0, p0, Layh;->e:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 75
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    .line 76
    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v11, v0, v1

    .line 79
    const v0, 0x3f0d6239    # 0.55228f

    mul-float v12, v3, v0

    .line 80
    const v0, 0x3f0d6239    # 0.55228f

    mul-float v13, v11, v0

    .line 82
    iget-object v0, p0, Layh;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 83
    iget-object v0, p0, Layh;->b:Landroid/graphics/Path;

    const/4 v1, 0x0

    neg-float v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 84
    iget-object v0, p0, Layh;->b:Landroid/graphics/Path;

    const/4 v1, 0x0

    add-float/2addr v1, v12

    neg-float v2, v11

    const/4 v4, 0x0

    sub-float/2addr v4, v13

    const/4 v6, 0x0

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 85
    iget-object v2, p0, Layh;->b:Landroid/graphics/Path;

    const/4 v0, 0x0

    add-float v4, v0, v13

    const/4 v0, 0x0

    add-float v5, v0, v12

    const/4 v7, 0x0

    move v6, v11

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 86
    iget-object v4, p0, Layh;->b:Landroid/graphics/Path;

    const/4 v0, 0x0

    sub-float v5, v0, v12

    neg-float v7, v3

    const/4 v0, 0x0

    add-float v8, v0, v13

    neg-float v9, v3

    const/4 v10, 0x0

    move v6, v11

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 87
    iget-object v0, p0, Layh;->b:Landroid/graphics/Path;

    neg-float v1, v3

    const/4 v2, 0x0

    sub-float/2addr v2, v13

    const/4 v3, 0x0

    sub-float/2addr v3, v12

    neg-float v4, v11

    const/4 v5, 0x0

    neg-float v6, v11

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 89
    iget-object v0, p0, Layh;->f:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 90
    iget-object v1, p0, Layh;->b:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->offset(FF)V

    .line 92
    iget-object v0, p0, Layh;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 94
    iget-object v0, p0, Layh;->b:Landroid/graphics/Path;

    iget-object v1, p0, Layh;->g:Layw;

    invoke-static {v0, v1}, Lbey;->a(Landroid/graphics/Path;Layw;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Layh;->h:Z

    .line 97
    iget-object v0, p0, Layh;->b:Landroid/graphics/Path;

    goto/16 :goto_0
.end method
