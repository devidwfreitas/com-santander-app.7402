.class Lvr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laar;


# instance fields
.field final synthetic a:Lvq;


# direct methods
.method constructor <init>(Lvq;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lvr;->a:Lvq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lvr;->a:Lvq;

    iget-object v0, v0, Lvq;->a:Lvp;

    invoke-static {v0}, Lvp;->b(Lvp;)V

    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lvr;->a:Lvq;

    iget-object v0, v0, Lvq;->a:Lvp;

    invoke-static {v0}, Lvp;->c(Lvp;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lvr;->a:Lvq;

    iget-object v0, v0, Lvq;->a:Lvp;

    invoke-virtual {v0}, Lvp;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    .line 67
    return-void
.end method
