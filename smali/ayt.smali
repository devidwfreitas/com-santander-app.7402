.class public Layt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layg;
.implements Layl;
.implements Layp;
.implements Layz;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Path;

.field private final c:Lawu;

.field private final d:Lbdy;

.field private final e:Ljava/lang/String;

.field private final f:Layy;
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

.field private final g:Layy;
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

.field private final h:Lazq;

.field private i:Layf;


# direct methods
.method public constructor <init>(Lawu;Lbdy;Lbdb;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Layt;->a:Landroid/graphics/Matrix;

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Layt;->b:Landroid/graphics/Path;

    .line 37
    iput-object p1, p0, Layt;->c:Lawu;

    .line 38
    iput-object p2, p0, Layt;->d:Lbdy;

    .line 39
    invoke-virtual {p3}, Lbdb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Layt;->e:Ljava/lang/String;

    .line 40
    invoke-virtual {p3}, Lbdb;->b()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layt;->f:Layy;

    .line 41
    iget-object v0, p0, Layt;->f:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 42
    iget-object v0, p0, Layt;->f:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 44
    invoke-virtual {p3}, Lbdb;->c()Lbao;

    move-result-object v0

    invoke-virtual {v0}, Lbao;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layt;->g:Layy;

    .line 45
    iget-object v0, p0, Layt;->g:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 46
    iget-object v0, p0, Layt;->g:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 48
    invoke-virtual {p3}, Lbdb;->d()Lbbr;

    move-result-object v0

    invoke-virtual {v0}, Lbbr;->h()Lazq;

    move-result-object v0

    iput-object v0, p0, Layt;->h:Lazq;

    .line 49
    iget-object v0, p0, Layt;->h:Lazq;

    invoke-virtual {v0, p2}, Lazq;->a(Lbdy;)V

    .line 50
    iget-object v0, p0, Layt;->h:Lazq;

    invoke-virtual {v0, p0}, Lazq;->a(Layz;)V

    .line 51
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Layt;->c:Lawu;

    invoke-virtual {v0}, Lawu;->invalidateSelf()V

    .line 128
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 8

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 103
    iget-object v0, p0, Layt;->f:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 104
    iget-object v0, p0, Layt;->g:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 106
    iget-object v0, p0, Layt;->h:Lazq;

    invoke-virtual {v0}, Lazq;->b()Layy;

    move-result-object v0

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v3, v0, v4

    .line 108
    iget-object v0, p0, Layt;->h:Lazq;

    invoke-virtual {v0}, Lazq;->c()Layy;

    move-result-object v0

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v4, v0, v4

    .line 109
    float-to-int v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 110
    iget-object v5, p0, Layt;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 111
    iget-object v5, p0, Layt;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Layt;->h:Lazq;

    int-to-float v7, v0

    add-float/2addr v7, v2

    invoke-virtual {v6, v7}, Lazq;->a(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 112
    int-to-float v5, p3

    int-to-float v6, v0

    div-float/2addr v6, v1

    invoke-static {v3, v4, v6}, Lbex;->a(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    .line 113
    iget-object v6, p0, Layt;->i:Layf;

    iget-object v7, p0, Layt;->a:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Layf;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 109
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Layt;->i:Layf;

    invoke-virtual {v0, p1, p2}, Layf;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 119
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
    .line 123
    iget-object v0, p0, Layt;->i:Layf;

    invoke-virtual {v0, p1, p2, p3}, Layf;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 124
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    .line 87
    iget-object v0, p0, Layt;->i:Layf;

    invoke-virtual {v0, p1, p2}, Layf;->a(Ljava/util/List;Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public a(Ljava/util/ListIterator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Laye;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Layt;->i:Layf;

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 73
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 79
    new-instance v0, Layf;

    iget-object v1, p0, Layt;->c:Lawu;

    iget-object v2, p0, Layt;->d:Lbdy;

    const-string v3, "Repeater"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Layf;-><init>(Lawu;Lbdy;Ljava/lang/String;Ljava/util/List;Lbbr;)V

    iput-object v0, p0, Layt;->i:Layf;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Layt;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/graphics/Path;
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Layt;->i:Layf;

    invoke-virtual {v0}, Layf;->e()Landroid/graphics/Path;

    move-result-object v1

    .line 92
    iget-object v0, p0, Layt;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 93
    iget-object v0, p0, Layt;->f:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 94
    iget-object v0, p0, Layt;->g:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 95
    float-to-int v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 96
    iget-object v2, p0, Layt;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Layt;->h:Lazq;

    int-to-float v5, v0

    add-float/2addr v5, v3

    invoke-virtual {v4, v5}, Lazq;->a(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 97
    iget-object v2, p0, Layt;->b:Landroid/graphics/Path;

    iget-object v4, p0, Layt;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 95
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Layt;->b:Landroid/graphics/Path;

    return-object v0
.end method
