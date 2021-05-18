.class Lvq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj;


# instance fields
.field final synthetic a:Lvp;


# direct methods
.method constructor <init>(Lvp;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lvq;->a:Lvp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 2

    .prologue
    .line 52
    check-cast p1, Ltq;

    .line 53
    invoke-static {}, Laca;->a()Laca;

    move-result-object v0

    invoke-virtual {p1}, Ltq;->b()Lsx;

    move-result-object v1

    invoke-virtual {v1}, Lsx;->c()Ltp;

    move-result-object v1

    invoke-virtual {v0, v1}, Laca;->a(Ltp;)V

    .line 54
    iget-object v0, p0, Lvq;->a:Lvp;

    invoke-static {v0}, Lvp;->a(Lvp;)V

    .line 55
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lvq;->a:Lvp;

    invoke-virtual {v0}, Lvp;->e()Lack;

    move-result-object v0

    new-instance v1, Lvr;

    invoke-direct {v1, p0}, Lvr;-><init>(Lvq;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 69
    return-void
.end method
