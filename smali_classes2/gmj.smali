.class Lgmj;
.super Lgml;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lgml;-><init>(Landroid/content/Context;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "Cr\u00e9dito Pessoal"

    return-object v0
.end method

.method a(I)V
    .locals 3
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lgmj;->k()V

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lgmj;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "CreditoFinanciamento_CarrosselHomeLogada_Acao"

    const-string v1, "CreditoPessoal"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgmj;->a:Landroid/content/Context;

    const-class v2, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string v1, "extra_type_emprestimo"

    invoke-virtual {p0}, Lgmj;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lgmj;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lgmj;->a:Landroid/content/Context;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "Oferta especial"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "Limite Dispon\u00edvel:"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lgmj;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lgmj;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lgmj;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgmj;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lgmj;->j()Z

    move-result v0

    return v0
.end method
