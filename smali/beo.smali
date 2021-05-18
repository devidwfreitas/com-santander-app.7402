.class Lbeo;
.super Landroid/graphics/Paint;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbem;


# direct methods
.method constructor <init>(Lbem;I)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lbeo;->a:Lbem;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 38
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Lbeo;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    return-void
.end method
