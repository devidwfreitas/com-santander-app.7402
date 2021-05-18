.class public Layi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layg;
.implements Layz;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layp;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Layy;
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

.field private final g:Lawu;


# direct methods
.method public constructor <init>(Lawu;Lbdy;Lbdg;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Layi;->a:Landroid/graphics/Path;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Layi;->b:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layi;->d:Ljava/util/List;

    .line 30
    invoke-virtual {p3}, Lbdg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Layi;->c:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Layi;->g:Lawu;

    .line 32
    invoke-virtual {p3}, Lbdg;->b()Lbal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lbdg;->c()Lbaw;

    move-result-object v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    iput-object v2, p0, Layi;->e:Layy;

    .line 34
    iput-object v2, p0, Layi;->f:Layy;

    .line 46
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Layi;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Lbdg;->d()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 40
    invoke-virtual {p3}, Lbdg;->b()Lbal;

    move-result-object v0

    invoke-virtual {v0}, Lbal;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layi;->e:Layy;

    .line 41
    iget-object v0, p0, Layi;->e:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 42
    iget-object v0, p0, Layi;->e:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 43
    invoke-virtual {p3}, Lbdg;->c()Lbaw;

    move-result-object v0

    invoke-virtual {v0}, Lbaw;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layi;->f:Layy;

    .line 44
    iget-object v0, p0, Layi;->f:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 45
    iget-object v0, p0, Layi;->f:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Layi;->g:Lawu;

    invoke-virtual {v0}, Lawu;->invalidateSelf()V

    .line 50
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 71
    const-string v0, "FillContent#draw"

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Layi;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Layi;->e:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    int-to-float v0, p3

    div-float v1, v0, v2

    iget-object v0, p0, Layi;->f:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 74
    iget-object v1, p0, Layi;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    iget-object v0, p0, Layi;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 77
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Layi;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 78
    iget-object v2, p0, Layi;->a:Landroid/graphics/Path;

    iget-object v0, p0, Layi;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layp;

    invoke-interface {v0}, Layp;->e()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Layi;->a:Landroid/graphics/Path;

    iget-object v1, p0, Layi;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 82
    const-string v0, "FillContent#draw"

    invoke-static {v0}, Lawm;->b(Ljava/lang/String;)F

    .line 83
    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 86
    iget-object v0, p0, Layi;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    move v1, v2

    .line 87
    :goto_0
    iget-object v0, p0, Layi;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 88
    iget-object v3, p0, Layi;->a:Landroid/graphics/Path;

    iget-object v0, p0, Layi;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layp;

    invoke-interface {v0}, Layp;->e()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Layi;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 92
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 98
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
    .line 67
    iget-object v0, p0, Layi;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 68
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
    .line 53
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 54
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laye;

    .line 55
    instance-of v2, v0, Layp;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Layi;->d:Ljava/util/List;

    check-cast v0, Layp;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Layi;->c:Ljava/lang/String;

    return-object v0
.end method
