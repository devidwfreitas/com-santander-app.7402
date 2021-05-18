.class public Lbej;
.super Lbdy;
.source "SourceFile"


# direct methods
.method constructor <init>(Lawu;Lbee;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lbdy;-><init>(Lawu;Lbee;)V

    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-super {p0, p1, p2}, Lbdy;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 20
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21
    return-void
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    .prologue
    .line 16
    return-void
.end method
