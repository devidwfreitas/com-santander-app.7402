.class Lhtg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;

.field final synthetic b:Lhtf;


# direct methods
.method constructor <init>(Lhtf;Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lhtg;->b:Lhtf;

    iput-object p2, p0, Lhtg;->a:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lhtg;->b:Lhtf;

    iget-object v0, v0, Lhtf;->a:Lhtd;

    invoke-static {v0}, Lhtd;->a(Lhtd;)Lhoy;

    move-result-object v0

    iget-object v1, p0, Lhtg;->a:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;

    invoke-interface {v0, v1}, Lhoy;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;)V

    .line 76
    return-void
.end method
