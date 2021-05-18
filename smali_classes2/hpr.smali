.class Lhpr;
.super Lhpy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhpy",
        "<",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;",
        "Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhpm;

.field final synthetic b:Lhpp;


# direct methods
.method constructor <init>(Lhpp;ZZLhpm;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lhpr;->b:Lhpp;

    iput-object p4, p0, Lhpr;->a:Lhpm;

    invoke-direct {p0, p1, p2, p3}, Lhpy;-><init>(Lhpp;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lhpr;->b:Lhpp;

    invoke-static {v0, p1}, Lhpp;->a(Lhpp;Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    .line 133
    if-eqz p2, :cond_0

    .line 134
    iget-object v0, p0, Lhpr;->b:Lhpp;

    invoke-static {v0, p2}, Lhpp;->a(Lhpp;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    .line 135
    iget-object v0, p0, Lhpr;->b:Lhpp;

    invoke-static {v0}, Lhpp;->b(Lhpp;)Lhqa;

    move-result-object v0

    iget-object v1, p0, Lhpr;->b:Lhpp;

    invoke-static {v1}, Lhpp;->a(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lhqa;->a(Lhxq;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lhpr;->b:Lhpp;

    invoke-static {v0}, Lhpp;->d(Lhpp;)Lhpc;

    move-result-object v0

    iget-object v1, p0, Lhpr;->b:Lhpp;

    invoke-static {v1}, Lhpp;->c(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhpc;->a(Lhxm;)V

    .line 138
    iget-object v0, p0, Lhpr;->b:Lhpp;

    invoke-static {v0}, Lhpp;->d(Lhpp;)Lhpc;

    move-result-object v0

    iget-object v1, p0, Lhpr;->b:Lhpp;

    invoke-static {v1}, Lhpp;->a(Lhpp;)Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhpc;->a(Lhxq;)V

    .line 139
    iget-object v0, p0, Lhpr;->b:Lhpp;

    iget-object v1, p0, Lhpr;->a:Lhpm;

    invoke-static {v0, v1}, Lhpp;->a(Lhpp;Lhpm;)V

    .line 140
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;

    check-cast p2, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;

    invoke-virtual {p0, p1, p2}, Lhpr;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPConsultarLimiteResponse;Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoSimulationResponse;)V

    return-void
.end method

.method public c(Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;)V
    .locals 1

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lhpr;->a:Lhpm;

    invoke-interface {v0}, Lhpm;->a()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lhpr;->a:Lhpm;

    invoke-interface {v0}, Lhpm;->b()V

    goto :goto_0
.end method
