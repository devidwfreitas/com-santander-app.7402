.class public Lazk;
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Laze;-><init>(Ljava/util/List;)V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lazk;->b:Landroid/graphics/PointF;

    .line 14
    return-void
.end method


# virtual methods
.method public synthetic a(Laxz;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lazk;->b(Laxz;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public b(Laxz;F)Landroid/graphics/PointF;
    .locals 6
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
    .line 17
    iget-object v0, p1, Laxz;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Laxz;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    iget-object v0, p1, Laxz;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    .line 22
    iget-object v1, p1, Laxz;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    .line 24
    iget-object v2, p0, Lazk;->b:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v1, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 26
    iget-object v0, p0, Lazk;->b:Landroid/graphics/PointF;

    return-object v0
.end method
