.class Lgmi;
.super Lgml;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lgml;-><init>(Landroid/content/Context;I)V

    .line 39
    return-void
.end method

.method private a(Lhxq;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lgmi;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    .line 53
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->C()Lipi;

    move-result-object v1

    .line 55
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhxq;->isMorno()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00000071"

    invoke-interface {v1, v0}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "Consignado"

    return-object v0
.end method

.method a(I)V
    .locals 3
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lgmi;->k()V

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lgmi;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgmi;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    invoke-interface {v0}, Lhxq;->isEligivel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "CreditoFinanciamento_CarrosselHomeLogada_Acao"

    const-string v1, "CreditoConsignado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgmi;->a:Landroid/content/Context;

    const-class v2, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string v1, "extra_type_emprestimo"

    invoke-virtual {p0}, Lgmi;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lgmi;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lgmi;->a:Landroid/content/Context;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "Oferta Especial"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "Limite dispon\u00edvel:"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lgmi;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lgmi;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    invoke-interface {v0}, Lhxq;->getValorLimiteMax()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lgmi;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    invoke-interface {v0}, Lhxq;->getValorLimiteMax()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lnaj;->a(D)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lgmi;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lgmi;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lgmi;->l()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lgmi;->j()Z

    move-result v0

    return v0
.end method
