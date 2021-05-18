.class Lqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lpy;


# direct methods
.method constructor <init>(Lpy;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lqa;->a:Lpy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lqa;->a:Lpy;

    iget-object v0, v0, Lpy;->a:Lpc;

    invoke-static {v0}, Lpc;->ar(Lpc;)V

    .line 1342
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 1346
    iget-object v0, p0, Lqa;->a:Lpy;

    iget-object v0, v0, Lpy;->a:Lpc;

    invoke-static {v0}, Lpc;->aq(Lpc;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1347
    iget-object v0, p0, Lqa;->a:Lpy;

    iget-object v0, v0, Lpy;->a:Lpc;

    invoke-static {v0}, Lpc;->as(Lpc;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    return-void
.end method
