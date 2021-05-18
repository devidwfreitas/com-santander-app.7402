.class public Lbdd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lazy;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/PointF;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbdd;->a:Ljava/util/List;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lazy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbdd;->a:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lbdd;->b:Landroid/graphics/PointF;

    .line 24
    iput-boolean p2, p0, Lbdd;->c:Z

    .line 25
    iget-object v0, p0, Lbdd;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;Lbde;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lbdd;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-void
.end method

.method private a(FF)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lbdd;->b:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lbdd;->b:Landroid/graphics/PointF;

    .line 35
    :cond_0
    iget-object v0, p0, Lbdd;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 36
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lbdd;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method public a(Lbdd;Lbdd;F)V
    .locals 10
    .param p3    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 52
    iget-object v0, p0, Lbdd;->b:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lbdd;->b:Landroid/graphics/PointF;

    .line 55
    :cond_0
    invoke-virtual {p1}, Lbdd;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lbdd;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lbdd;->c:Z

    .line 57
    iget-object v0, p0, Lbdd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbdd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lbdd;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lbdd;->a:Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2}, Lbdd;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Curves must have the same number of control points. This: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lbdd;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tShape 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lbdd;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tShape 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    invoke-virtual {p2}, Lbdd;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lbdd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {p1}, Lbdd;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 65
    iget-object v1, p0, Lbdd;->a:Ljava/util/List;

    new-instance v2, Lazy;

    invoke-direct {v2}, Lazy;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {p1}, Lbdd;->a()Landroid/graphics/PointF;

    move-result-object v0

    .line 70
    invoke-virtual {p2}, Lbdd;->a()Landroid/graphics/PointF;

    move-result-object v1

    .line 72
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3, p3}, Lbex;->a(FFF)F

    move-result v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 73
    invoke-static {v0, v1, p3}, Lbex;->a(FFF)F

    move-result v0

    .line 72
    invoke-direct {p0, v2, v0}, Lbdd;->a(FF)V

    .line 75
    iget-object v0, p0, Lbdd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_5

    .line 76
    invoke-virtual {p1}, Lbdd;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazy;

    .line 77
    invoke-virtual {p2}, Lbdd;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lazy;

    .line 79
    invoke-virtual {v0}, Lazy;->a()Landroid/graphics/PointF;

    move-result-object v3

    .line 80
    invoke-virtual {v0}, Lazy;->b()Landroid/graphics/PointF;

    move-result-object v4

    .line 81
    invoke-virtual {v0}, Lazy;->c()Landroid/graphics/PointF;

    move-result-object v5

    .line 83
    invoke-virtual {v1}, Lazy;->a()Landroid/graphics/PointF;

    move-result-object v6

    .line 84
    invoke-virtual {v1}, Lazy;->b()Landroid/graphics/PointF;

    move-result-object v7

    .line 85
    invoke-virtual {v1}, Lazy;->c()Landroid/graphics/PointF;

    move-result-object v1

    .line 87
    iget-object v0, p0, Lbdd;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazy;

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v6, Landroid/graphics/PointF;->x:F

    .line 88
    invoke-static {v8, v9, p3}, Lbex;->a(FFF)F

    move-result v8

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v6, p3}, Lbex;->a(FFF)F

    move-result v3

    .line 87
    invoke-virtual {v0, v8, v3}, Lazy;->a(FF)V

    .line 90
    iget-object v0, p0, Lbdd;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazy;

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v6, v7, Landroid/graphics/PointF;->x:F

    .line 91
    invoke-static {v3, v6, p3}, Lbex;->a(FFF)F

    move-result v3

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v6, p3}, Lbex;->a(FFF)F

    move-result v4

    .line 90
    invoke-virtual {v0, v3, v4}, Lazy;->b(FF)V

    .line 93
    iget-object v0, p0, Lbdd;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazy;

    iget v3, v5, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 94
    invoke-static {v3, v4, p3}, Lbex;->a(FFF)F

    move-result v3

    iget v4, v5, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v1, p3}, Lbex;->a(FFF)F

    move-result v1

    .line 93
    invoke-virtual {v0, v3, v1}, Lazy;->c(FF)V

    .line 75
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_2

    .line 97
    :cond_5
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lbdd;->c:Z

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lazy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lbdd;->a:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeData{numCurves="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbdd;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbdd;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
