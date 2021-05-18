.class Lhtr;
.super Lhtn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhtn",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;",
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
    .line 37
    iput-object p1, p0, Lhtr;->b:Lhtq;

    iput-object p3, p0, Lhtr;->a:Lhtm;

    invoke-direct {p0, p2}, Lhtn;-><init>(Lir;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lhtr;->a:Lhtm;

    invoke-interface {v0, p1, p2}, Lhtm;->a(ILjava/lang/Object;)V

    .line 41
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {p0, p1, p2}, Lhtr;->a(ILcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V

    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lhtr;->a:Lhtm;

    invoke-interface {v0, p1}, Lhtm;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 46
    return-void
.end method
