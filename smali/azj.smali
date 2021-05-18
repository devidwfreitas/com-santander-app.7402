.class public Lazj;
.super Laze;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laze",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/PointF;

.field private final c:[F

.field private d:Lazg;

.field private e:Landroid/graphics/PathMeasure;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Laxz",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Laze;-><init>(Ljava/util/List;)V

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lazj;->b:Landroid/graphics/PointF;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lazj;->c:[F

    .line 19
    return-void
.end method


# virtual methods
.method public synthetic a(Laxz;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lazj;->b(Laxz;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public b(Laxz;F)Landroid/graphics/PointF;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxz",
            "<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 22
    move-object v0, p1

    check-cast v0, Lazg;

    .line 23
    invoke-virtual {v0}, Lazg;->e()Landroid/graphics/Path;

    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    iget-object v0, p1, Laxz;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    .line 35
    :goto_0
    return-object v0

    .line 28
    :cond_0
    iget-object v2, p0, Lazj;->d:Lazg;

    if-eq v2, v0, :cond_1

    .line 29
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v1, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v2, p0, Lazj;->e:Landroid/graphics/PathMeasure;

    .line 30
    iput-object v0, p0, Lazj;->d:Lazg;

    .line 33
    :cond_1
    iget-object v0, p0, Lazj;->e:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lazj;->e:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    mul-float/2addr v1, p2

    iget-object v2, p0, Lazj;->c:[F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 34
    iget-object v0, p0, Lazj;->b:Landroid/graphics/PointF;

    iget-object v1, p0, Lazj;->c:[F

    aget v1, v1, v4

    iget-object v2, p0, Lazj;->c:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 35
    iget-object v0, p0, Lazj;->b:Landroid/graphics/PointF;

    goto :goto_0
.end method
