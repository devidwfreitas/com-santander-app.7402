.class public Lbbc;
.super Lbby;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Landroid/graphics/PointF;",
            ">;>;",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lbby;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/graphics/PointF;Lbbd;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lbbc;-><init>(Ljava/util/List;Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public a()Layy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Layy",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lbbc;->a_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lazo;

    iget-object v1, p0, Lbbc;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lazo;-><init>(Ljava/lang/Object;)V

    .line 25
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lazk;

    iget-object v1, p0, Lbbc;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lazk;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
