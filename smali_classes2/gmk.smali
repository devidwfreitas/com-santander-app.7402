.class Lgmk;
.super Lgml;
.source "SourceFile"


# instance fields
.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lgml;-><init>(Landroid/content/Context;I)V

    .line 34
    return-void
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lgmk;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    iget-object v1, p0, Lgmk;->b:Lhxo;

    .line 109
    invoke-virtual {v1}, Lhxo;->h()Lhxq;

    move-result-object v1

    invoke-interface {v1}, Lhxq;->isEligivel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v0}, Lhxq;->isMorno()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "Simular e Contratar"

    return-object v0
.end method

.method a(I)V
    .locals 4
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lgmk;->k()V

    .line 79
    :goto_0
    return-void

    .line 56
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 65
    :pswitch_1
    const-string v0, "CreditoFinanciamento_CarrosselHomeLogada_Acao"

    const-string v1, "SimularContratar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgmk;->a:Landroid/content/Context;

    const-class v2, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const-string v1, "extra_type_emprestimo"

    invoke-virtual {p0}, Lgmk;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lgmk;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgmk;->a:Landroid/content/Context;

    const-class v2, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string v1, "extra_type_emprestimo"

    invoke-virtual {p0}, Lgmk;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lgmk;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :pswitch_3
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    invoke-interface {v0}, Lhya;->d()Z

    move-result v0

    .line 73
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lgmk;->a:Landroid/content/Context;

    const-class v3, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v2, "extra_type_emprestimo"

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lgmk;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_1
    const/16 v0, 0xd

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "Oferta Especial"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "Limite dispon\u00edvel:"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    iget-object v0, p0, Lgmk;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgmk;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lgmk;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lgmk;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhyx;->b(Ljava/lang/String;)F

    move-result v0

    .line 90
    iget-object v1, p0, Lgmk;->b:Lhxo;

    invoke-virtual {v1}, Lhxo;->h()Lhxq;

    move-result-object v1

    invoke-interface {v1}, Lhxq;->getValorLimiteMax()F

    move-result v1

    .line 91
    iput-boolean v2, p0, Lgmk;->d:Z

    .line 92
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    float-to-double v0, v0

    .line 93
    invoke-static {v0, v1}, Lnaj;->a(D)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 94
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lgmk;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    iput-boolean v2, p0, Lgmk;->d:Z

    .line 97
    iget-object v0, p0, Lgmk;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lgmk;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lgmk;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iput-boolean v2, p0, Lgmk;->d:Z

    .line 100
    iget-object v0, p0, Lgmk;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->h()Lhxq;

    move-result-object v0

    invoke-interface {v0}, Lhxq;->getValorLimiteMax()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lnaj;->a(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_3
    const-string v0, "Oferta Especial"

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lgmk;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lgmk;->j()Z

    move-result v0

    return v0
.end method
