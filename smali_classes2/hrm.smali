.class public Lhrm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhrl;


# instance fields
.field private a:Lhql;

.field private b:Lhox;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lhql;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lhrm;->a:Lhql;

    .line 40
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lhrm;->c:Landroid/app/Activity;

    .line 41
    new-instance v0, Lhoz;

    iget-object v1, p0, Lhrm;->c:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lhoz;-><init>(Landroid/app/Activity;Lhrl;)V

    iput-object v0, p0, Lhrm;->b:Lhox;

    .line 42
    return-void
.end method

.method static synthetic a(Lhrm;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhrm;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lhrm;->b:Lhox;

    invoke-interface {v0}, Lhox;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Refinanciamento"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lhrm;->b:Lhox;

    .line 46
    invoke-interface {v0}, Lhox;->g()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    const-string v0, "Consignado"

    goto :goto_0

    :cond_1
    const-string v0, "CreditoPessoal"

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lhrm;->b:Lhox;

    invoke-interface {v0}, Lhox;->f()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lhrm;->a:Lhql;

    invoke-interface {v0}, Lhql;->c()V

    .line 168
    :cond_0
    iget-object v0, p0, Lhrm;->b:Lhox;

    invoke-interface {v0}, Lhox;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lhrm;->a:Lhql;

    invoke-interface {v0}, Lhql;->e()V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lhrm;->a:Lhql;

    invoke-interface {v0}, Lhql;->d()V

    .line 172
    iget-object v0, p0, Lhrm;->a:Lhql;

    invoke-interface {v0}, Lhql;->c()V

    goto :goto_0
.end method

.method private n()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    const-string v0, ""

    .line 178
    iget-object v1, p0, Lhrm;->b:Lhox;

    invoke-interface {v1}, Lhox;->i()Z

    move-result v1

    .line 179
    iget-object v2, p0, Lhrm;->b:Lhox;

    invoke-interface {v2}, Lhox;->g()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 180
    iget-object v2, p0, Lhrm;->b:Lhox;

    invoke-interface {v2}, Lhox;->f()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 206
    :goto_0
    return-object v0

    .line 182
    :pswitch_0
    iget-object v0, p0, Lhrm;->c:Landroid/app/Activity;

    const v1, 0x7f090a5e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 185
    :pswitch_1
    if-eqz v1, :cond_0

    .line 186
    iget-object v0, p0, Lhrm;->c:Landroid/app/Activity;

    const v1, 0x7f090a5d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lhrm;->c:Landroid/app/Activity;

    const v1, 0x7f090a61

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :pswitch_2
    if-eqz v1, :cond_1

    .line 193
    iget-object v0, p0, Lhrm;->c:Landroid/app/Activity;

    const v1, 0x7f090a5c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lhrm;->c:Landroid/app/Activity;

    const v1, 0x7f090a60

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_2
    if-eqz v1, :cond_3

    .line 201
    iget-object v0, p0, Lhrm;->c:Landroid/app/Activity;

    const v1, 0x7f090a5b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lhrm;->c:Landroid/app/Activity;

    const v1, 0x7f090a5f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 52
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_ContratarComSeguro_Acao"

    .line 53
    invoke-direct {p0}, Lhrm;->l()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    iget-object v0, p0, Lhrm;->b:Lhox;

    invoke-interface {v0}, Lhox;->g()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lmiq;->f(Z)V

    .line 55
    iget-object v0, p0, Lhrm;->b:Lhox;

    invoke-interface {v0}, Lhox;->a()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhrm;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V

    .line 56
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lhrm;->a:Lhql;

    invoke-direct {p0}, Lhrm;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhql;->b(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lhrm;->a:Lhql;

    invoke-interface {v0, p1}, Lhql;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V

    .line 79
    iget-object v0, p0, Lhrm;->a:Lhql;

    invoke-interface {v0}, Lhql;->a()V

    .line 80
    invoke-direct {p0}, Lhrm;->m()V

    .line 81
    return-void
.end method

.method public a(Lgvb;)V
    .locals 2

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_Produto"

    .line 159
    invoke-direct {p0}, Lhrm;->l()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lhrm;->a:Lhql;

    invoke-interface {v0, p1}, Lhql;->a(Lgvb;)V

    .line 162
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lhrm;->c:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lhys;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_SimularComSeguro_Acao"

    .line 213
    invoke-direct {p0}, Lhrm;->l()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_ContratarSemSeguro_Acao"

    .line 216
    invoke-direct {p0}, Lhrm;->l()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lhrm;->a:Lhql;

    invoke-interface {v0, p2}, Lhql;->a(Ljava/util/ArrayList;)V

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lhrm;->a:Lhql;

    invoke-interface {v0, p2}, Lhql;->b(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiq;->f(Z)V

    .line 61
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lhrm;->b:Lhox;

    invoke-interface {v0}, Lhox;->b()V

    .line 86
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lhrm;->b:Lhox;

    invoke-interface {v0}, Lhox;->c()V

    .line 91
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 95
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_InformativoResumoContratual_Acao"

    .line 96
    invoke-direct {p0}, Lhrm;->l()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lhrm;->b:Lhox;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "condicoes_gerais_emprestimo"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lhox;->a([Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    .line 109
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_InformativoCondicoesGeraisEmprestimo_Acao"

    .line 110
    invoke-direct {p0}, Lhrm;->l()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lhrm;->b:Lhox;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "condicoes_gerais_contrato"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lhox;->a([Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 116
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_InformativoCondicoesGeraisSeguro_Acao"

    .line 117
    invoke-direct {p0}, Lhrm;->l()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lhrm;->b:Lhox;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "condicoes_seguro"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "4"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lhox;->a([Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_InformativoCET_Acao"

    .line 103
    invoke-direct {p0}, Lhrm;->l()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lhrm;->b:Lhox;

    invoke-interface {v0}, Lhox;->e()V

    .line 105
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lhrm;->b:Lhox;

    invoke-interface {v0}, Lhox;->d()V

    .line 124
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lhrm;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0903b7

    .line 129
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090aa8

    .line 130
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a54

    new-instance v2, Lhrn;

    invoke-direct {v2, p0}, Lhrn;-><init>(Lhrm;)V

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 137
    new-instance v1, Lhro;

    invoke-direct {v1, p0}, Lhro;-><init>(Lhrm;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 144
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 145
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_SimularComSeguro_Acao"

    .line 66
    invoke-direct {p0}, Lhrm;->l()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lhrm;->d()V

    .line 68
    return-void
.end method
