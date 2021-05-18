.class public Layv;
.super Layb;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Layy;
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


# direct methods
.method public constructor <init>(Lawu;Lbdy;Lbdo;)V
    .locals 9

    .prologue
    .line 19
    invoke-virtual {p3}, Lbdo;->g()Lbdr;

    move-result-object v0

    invoke-virtual {v0}, Lbdr;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    .line 20
    invoke-virtual {p3}, Lbdo;->h()Lbds;

    move-result-object v0

    invoke-virtual {v0}, Lbds;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual {p3}, Lbdo;->c()Lbaw;

    move-result-object v5

    invoke-virtual {p3}, Lbdo;->d()Lbao;

    move-result-object v6

    .line 21
    invoke-virtual {p3}, Lbdo;->e()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Lbdo;->f()Lbao;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Layb;-><init>(Lawu;Lbdy;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lbaw;Lbao;Ljava/util/List;Lbao;)V

    .line 22
    invoke-virtual {p3}, Lbdo;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Layv;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {p3}, Lbdo;->b()Lbal;

    move-result-object v0

    invoke-virtual {v0}, Lbal;->a()Layy;

    move-result-object v0

    iput-object v0, p0, Layv;->c:Layy;

    .line 24
    iget-object v0, p0, Layv;->c:Layy;

    invoke-virtual {v0, p0}, Layy;->a(Layz;)V

    .line 25
    iget-object v0, p0, Layv;->c:Layy;

    invoke-virtual {p2, v0}, Lbdy;->a(Layy;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Layv;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Layv;->c:Layy;

    invoke-virtual {v0}, Layy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-super {p0, p1, p2, p3}, Layb;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 37
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
    .line 31
    iget-object v0, p0, Layv;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 32
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Layv;->b:Ljava/lang/String;

    return-object v0
.end method
