.class Lhtf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgkv",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhtd;


# direct methods
.method constructor <init>(Lhtd;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lhtf;->a:Lhtd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;)V
    .locals 3

    .prologue
    .line 63
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getCodigoRetorno()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    invoke-interface {v0}, Lhya;->h()V

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v1, 0x0

    sget-object v2, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmzp;->RELOAD_EMPRESTIMOS:Lmzp;

    aput-object v2, v0, v1

    .line 71
    new-instance v1, Lmzn;

    invoke-direct {v1}, Lmzn;-><init>()V

    .line 72
    new-instance v2, Lhtg;

    invoke-direct {v2, p0, p1}, Lhtg;-><init>(Lhtf;Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;)V

    invoke-virtual {v1, v0, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lhtf;->a:Lhtd;

    invoke-static {v0}, Lhtd;->a(Lhtd;)Lhoy;

    move-result-object v0

    invoke-interface {v0, p1}, Lhoy;->b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    iget-object v0, p0, Lhtf;->a:Lhtd;

    invoke-static {v0}, Lhtd;->a(Lhtd;)Lhoy;

    move-result-object v0

    invoke-interface {v0, p1}, Lhoy;->b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;

    invoke-virtual {p0, p1}, Lhtf;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;)V

    return-void
.end method
