.class public Lbek;
.super Lbdy;
.source "SourceFile"


# instance fields
.field private final e:Layf;


# direct methods
.method constructor <init>(Lawu;Lbee;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lbdy;-><init>(Lawu;Lbee;)V

    .line 23
    new-instance v0, Lbdj;

    invoke-virtual {p2}, Lbee;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbee;->n()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbdj;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 24
    new-instance v1, Layf;

    invoke-direct {v1, p1, p0, v0}, Layf;-><init>(Lawu;Lbdy;Lbdj;)V

    iput-object v1, p0, Lbek;->e:Layf;

    .line 25
    iget-object v0, p0, Lbek;->e:Layf;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Layf;->a(Ljava/util/List;Ljava/util/List;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lbdy;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 34
    iget-object v0, p0, Lbek;->e:Layf;

    iget-object v1, p0, Lbek;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Layf;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 35
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
    .line 39
    iget-object v0, p0, Lbek;->e:Layf;

    invoke-virtual {v0, p1, p2, p3}, Layf;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 40
    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    iget-object v0, p0, Lbek;->e:Layf;

    invoke-virtual {v0, p1, p2, p3}, Layf;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 30
    return-void
.end method
