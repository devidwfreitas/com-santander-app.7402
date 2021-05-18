.class Lhpi;
.super Lhpk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhpe;

.field final synthetic b:Lhpg;


# direct methods
.method constructor <init>(Lhpg;Lhpe;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lhpi;->b:Lhpg;

    iput-object p2, p0, Lhpi;->a:Lhpe;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhpk;-><init>(Lhpg;Lhph;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lhpi;->b:Lhpg;

    iget-object v1, p0, Lhpi;->c:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-static {v0, v1}, Lhpg;->b(Lhpg;Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    .line 56
    iget-object v0, p0, Lhpi;->a:Lhpe;

    iget-object v1, p0, Lhpi;->b:Lhpg;

    invoke-static {v1}, Lhpg;->a(Lhpg;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v1

    iget-object v2, p0, Lhpi;->b:Lhpg;

    invoke-static {v2}, Lhpg;->b(Lhpg;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lhpe;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V

    .line 57
    return-void
.end method
