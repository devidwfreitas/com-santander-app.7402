.class Lhtu;
.super Lhtn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhtn",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;",
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
    .line 122
    iput-object p1, p0, Lhtu;->b:Lhtq;

    iput-object p3, p0, Lhtu;->a:Lhtm;

    invoke-direct {p0, p2}, Lhtn;-><init>(Lir;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;)V
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->l()V

    .line 126
    iget-object v0, p0, Lhtu;->a:Lhtm;

    invoke-interface {v0, p1, p2}, Lhtm;->a(ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    check-cast p2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;

    invoke-virtual {p0, p1, p2}, Lhtu;->a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContratacaoResponse;)V

    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->y()Lmwy;

    move-result-object v0

    invoke-virtual {v0}, Lmwy;->l()V

    .line 132
    iget-object v0, p0, Lhtu;->a:Lhtm;

    invoke-interface {v0, p1}, Lhtm;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 133
    return-void
.end method
