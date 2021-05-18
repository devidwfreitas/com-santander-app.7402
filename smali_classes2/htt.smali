.class Lhtt;
.super Lhtn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhtn",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhtm;

.field final synthetic b:Lhtq;


# direct methods
.method constructor <init>(Lhtq;Lir;Lhtm;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lhtt;->b:Lhtq;

    iput-object p3, p0, Lhtt;->a:Lhtm;

    invoke-direct {p0, p2}, Lhtn;-><init>(Lir;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {p0}, Lhtt;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmwy;->a(Ljava/util/Map;)V

    .line 99
    iget-object v0, p0, Lhtt;->a:Lhtm;

    invoke-interface {v0, p1, p2}, Lhtm;->a(ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;

    invoke-virtual {p0, p1, p2}, Lhtt;->a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoCalculateResponse;)V

    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lhtt;->a:Lhtm;

    invoke-interface {v0, p1}, Lhtm;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 105
    return-void
.end method
