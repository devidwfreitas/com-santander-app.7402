.class public abstract Layy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Layz;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Laxz",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field private d:F

.field private e:Laxz;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laxz",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Laxz",
            "<TK;>;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layy;->a:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Layy;->b:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Layy;->d:F

    .line 30
    iput-object p1, p0, Layy;->c:Ljava/util/List;

    .line 31
    return-void
.end method

.method private d()Laxz;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laxz",
            "<TK;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Layy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There are no keyframes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Layy;->e:Laxz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Layy;->e:Laxz;

    iget v2, p0, Layy;->d:F

    invoke-virtual {v0, v2}, Laxz;->a(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Layy;->e:Laxz;

    .line 79
    :goto_0
    return-object v0

    .line 68
    :cond_1
    iget-object v0, p0, Layy;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;

    .line 69
    iget v2, p0, Layy;->d:F

    invoke-virtual {v0}, Laxz;->a()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 70
    iput-object v0, p0, Layy;->e:Laxz;

    goto :goto_0

    .line 74
    :cond_2
    :goto_1
    iget v2, p0, Layy;->d:F

    invoke-virtual {v0, v2}, Laxz;->a(F)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Layy;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 75
    iget-object v0, p0, Layy;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :cond_3
    iput-object v0, p0, Layy;->e:Laxz;

    goto :goto_0
.end method

.method private e()F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-boolean v1, p0, Layy;->b:Z

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    invoke-direct {p0}, Layy;->d()Laxz;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Laxz;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget v0, p0, Layy;->d:F

    invoke-virtual {v1}, Laxz;->a()F

    move-result v2

    sub-float/2addr v0, v2

    .line 96
    invoke-virtual {v1}, Laxz;->b()F

    move-result v2

    invoke-virtual {v1}, Laxz;->a()F

    move-result v3

    sub-float/2addr v2, v3

    .line 98
    iget-object v1, v1, Laxz;->c:Landroid/view/animation/Interpolator;

    div-float/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0
.end method

.method private f()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Layy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Layy;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;

    invoke-virtual {v0}, Laxz;->a()F

    move-result v0

    goto :goto_0
.end method

.method private g()F
    .locals 2
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Layy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Layy;->c:Ljava/util/List;

    iget-object v1, p0, Layy;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;

    invoke-virtual {v0}, Laxz;->b()F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method abstract a(Laxz;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxz",
            "<TK;>;F)TA;"
        }
    .end annotation
.end method

.method public a()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Layy;->b:Z

    .line 35
    return-void
.end method

.method public a(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Layy;->f()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 43
    const/4 p1, 0x0

    .line 48
    :cond_0
    :goto_0
    iget v0, p0, Layy;->d:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 56
    :cond_1
    return-void

    .line 44
    :cond_2
    invoke-direct {p0}, Layy;->g()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 45
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 51
    :cond_3
    iput p1, p0, Layy;->d:F

    .line 53
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Layy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 54
    iget-object v0, p0, Layy;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layz;

    invoke-interface {v0}, Layz;->a()V

    .line 53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(Layz;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Layy;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Layy;->d()Laxz;

    move-result-object v0

    invoke-direct {p0}, Layy;->e()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Layy;->a(Laxz;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Layy;->d:F

    return v0
.end method
