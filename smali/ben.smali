.class Lben;
.super Landroid/graphics/Paint;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbem;


# direct methods
.method constructor <init>(Lbem;I)V
    .locals 1

    .prologue
    .line 34
    iput-object p1, p0, Lben;->a:Lbem;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 35
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Lben;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    return-void
.end method
