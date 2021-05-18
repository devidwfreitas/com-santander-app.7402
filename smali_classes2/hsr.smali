.class Lhsr;
.super Lhtk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhtk",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhsq;


# direct methods
.method constructor <init>(Lhsq;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lhsr;->a:Lhsq;

    invoke-direct {p0}, Lhtk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lhsr;->a:Lhsq;

    iget-object v0, v0, Lhsq;->b:Lhso;

    invoke-interface {v0, p1}, Lhso;->b(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lhsr;->a:Lhsq;

    invoke-virtual {v0}, Lhsq;->d()V

    .line 74
    return-void
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lhsr;->a:Lhsq;

    iget-object v0, v0, Lhsq;->b:Lhso;

    invoke-interface {v0, p1}, Lhso;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V

    .line 79
    iget-object v0, p0, Lhsr;->a:Lhsq;

    invoke-virtual {v0}, Lhsq;->d()V

    .line 80
    return-void
.end method

.method public bridge synthetic a(Lhxv;)V
    .locals 0

    .prologue
    .line 69
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    invoke-virtual {p0, p1}, Lhsr;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)V

    return-void
.end method
