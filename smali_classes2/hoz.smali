.class public Lhoz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhox;
.implements Lhoy;


# instance fields
.field private a:Lhrl;

.field private b:Lhtc;

.field private c:Lhtp;

.field private d:Lhpl;

.field private e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

.field private f:Lhqh;

.field private g:Lhqg;

.field private h:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lhrl;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lhoz;->a:Lhrl;

    .line 50
    iput-object p1, p0, Lhoz;->h:Landroid/app/Activity;

    .line 51
    new-instance v0, Lhtd;

    invoke-direct {v0, p1, p0}, Lhtd;-><init>(Landroid/app/Activity;Lhoy;)V

    iput-object v0, p0, Lhoz;->b:Lhtc;

    .line 52
    invoke-static {}, Lhpp;->n()Lhpl;

    move-result-object v0

    iput-object v0, p0, Lhoz;->d:Lhpl;

    .line 53
    new-instance v0, Lhtq;

    invoke-direct {v0}, Lhtq;-><init>()V

    iput-object v0, p0, Lhoz;->c:Lhtp;

    .line 54
    new-instance v0, Lhqh;

    invoke-direct {v0}, Lhqh;-><init>()V

    iput-object v0, p0, Lhoz;->f:Lhqh;

    .line 55
    new-instance v0, Lhqg;

    invoke-direct {v0}, Lhqg;-><init>()V

    iput-object v0, p0, Lhoz;->g:Lhqg;

    .line 56
    iget-object v0, p0, Lhoz;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->i()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v0

    iput-object v0, p0, Lhoz;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    .line 57
    return-void
.end method

.method static synthetic a(Lhoz;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lhoz;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    return-object v0
.end method

.method static synthetic a(Lhoz;Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lhoz;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    return-object p1
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lhoz;->h:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lhoz;->d:Lhpl;

    new-instance v2, Lhpa;

    invoke-direct {v2, p0, v0}, Lhpa;-><init>(Lhoz;Landroid/app/Dialog;)V

    invoke-interface {v1, p1, v2}, Lhpl;->a(ZLhpo;)V
    :try_end_0
    .catch Lhou; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 141
    iget-object v1, p0, Lhoz;->a:Lhrl;

    iget-object v2, p0, Lhoz;->h:Landroid/app/Activity;

    const v3, 0x7f09043f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lhrl;->a(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method static synthetic b(Lhoz;)Lhrl;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lhoz;->a:Lhrl;

    return-object v0
.end method

.method static synthetic c(Lhoz;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lhoz;->h:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lhoz;)Lhqg;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lhoz;->g:Lhqg;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lhoz;->h:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;

    iget-object v2, p0, Lhoz;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-direct {v1, v2}, Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;-><init>(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V

    .line 160
    iget-object v2, p0, Lhoz;->c:Lhtp;

    new-instance v3, Lhpb;

    invoke-direct {v3, p0, v0}, Lhpb;-><init>(Lhoz;Landroid/app/Dialog;)V

    invoke-interface {v2, v1, v3}, Lhtp;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/ConsignadoContractRequest;Lhtm;)V

    .line 196
    return-void
.end method


# virtual methods
.method public a()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lhoz;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    return-object v0
.end method

.method public a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;)V
    .locals 2

    .prologue
    .line 81
    const-string v0, ""

    .line 82
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getTipoSeguro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "Nao"

    .line 94
    :goto_0
    const-string v1, "CreditoFinanciamento_Emprestimos_Contratacao_SeguroContratado"

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_Valor"

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getValorEmprestimo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_ValorParcela"

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getValorParcela()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_CP_DiaVencimento"

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getDiaPagamentoFormatted()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_ReferOper"

    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getReferOper()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lhoz;->a:Lhrl;

    iget-object v1, p0, Lhoz;->g:Lhqg;

    invoke-virtual {v1, p1}, Lhqg;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lhrl;->a(Lgvb;)V

    .line 101
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;->getTipoSeguro()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "Sim"

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "NaoElegivel"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lhoz;->a:Lhrl;

    const/4 v1, 0x1

    iget-object v2, p0, Lhoz;->f:Lhqh;

    invoke-virtual {v2, p1}, Lhqh;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lhrl;->a(ZLjava/util/ArrayList;)V

    .line 67
    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lhoz;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lhoz;->b:Lhtc;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lhtc;->a(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lhoz;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTypeSecure()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 216
    :pswitch_0
    iget-object v0, p0, Lhoz;->b:Lhtc;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lhtc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v0, p0, Lhoz;->b:Lhtc;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lhtc;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhoz;->a(Z)V

    .line 111
    return-void
.end method

.method public b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoResponse;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lhoz;->a:Lhrl;

    iget-object v1, p0, Lhoz;->g:Lhqg;

    invoke-virtual {v1, p1}, Lhqg;->b(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lhrl;->a(Lgvb;)V

    .line 106
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lhoz;->a:Lhrl;

    invoke-interface {v0, p1}, Lhrl;->a(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lhoz;->a:Lhrl;

    iget-object v1, p0, Lhoz;->h:Landroid/app/Activity;

    const v2, 0x7f09043f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lhrl;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lhoz;->a(Z)V

    .line 116
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lhoz;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 149
    new-instance v0, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;

    iget-object v1, p0, Lhoz;->d:Lhpl;

    .line 150
    invoke-interface {v1}, Lhpl;->i()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;-><init>(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)V

    .line 151
    iget-object v1, p0, Lhoz;->b:Lhtc;

    invoke-interface {v1, v0}, Lhtc;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratarEmprestimoRequest;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lhoz;->j()V

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 200
    iget-object v0, p0, Lhoz;->a:Lhrl;

    const/4 v1, 0x0

    iget-object v2, p0, Lhoz;->f:Lhqh;

    iget-object v3, p0, Lhoz;->d:Lhpl;

    .line 202
    invoke-interface {v3}, Lhpl;->i()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhqh;->a(Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;)Ljava/util/ArrayList;

    move-result-object v2

    .line 200
    invoke-interface {v0, v1, v2}, Lhrl;->a(ZLjava/util/ArrayList;)V

    .line 203
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lhoz;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getTypeSecure()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lhoz;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getType()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lhoz;->e:Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->isRefinanciamento()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lhoz;->d:Lhpl;

    invoke-interface {v0}, Lhpl;->e()Z

    move-result v0

    return v0
.end method
