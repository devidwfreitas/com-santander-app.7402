.class public Lazn;
.super Layy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Layy",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/PointF;

.field private final c:Layy;
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

.field private final d:Layy;
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


# direct methods
.method public constructor <init>(Layy;Layy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Layy",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Layy",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Layy;-><init>(Ljava/util/List;)V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lazn;->b:Landroid/graphics/PointF;

    .line 19
    iput-object p1, p0, Lazn;->c:Layy;

    .line 20
    iput-object p2, p0, Lazn;->d:Layy;

    .line 21
    return-void
.end method


# virtual methods
.method synthetic a(Laxz;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lazn;->b(Laxz;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lazn;->c:Layy;

    invoke-virtual {v0, p1}, Layy;->a(F)V

    .line 25
    iget-object v0, p0, Lazn;->d:Layy;

    invoke-virtual {v0, p1}, Layy;->a(F)V

    .line 26
    iget-object v1, p0, Lazn;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lazn;->c:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lazn;->d:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 27
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lazn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 28
    iget-object v0, p0, Lazn;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layz;

    invoke-interface {v0}, Layz;->a()V

    .line 27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method b(Laxz;F)Landroid/graphics/PointF;
    .locals 1
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
    .line 37
    iget-object v0, p0, Lazn;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lazn;->d()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lazn;->b(Laxz;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
