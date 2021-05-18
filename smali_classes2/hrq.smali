.class public Lhrq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhrp;


# instance fields
.field private a:Lhqo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lhpd;


# direct methods
.method public constructor <init>(Lhqo;)V
    .locals 1
    .param p1    # Lhqo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lhrq;->a:Lhqo;

    .line 29
    new-instance v0, Lhpg;

    invoke-direct {v0}, Lhpg;-><init>()V

    iput-object v0, p0, Lhrq;->b:Lhpd;

    .line 30
    return-void
.end method

.method static synthetic a(Lhrq;)Lhqo;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lhrq;->a:Lhqo;

    return-object v0
.end method

.method static synthetic b(Lhrq;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lhrq;->e()V

    return-void
.end method

.method static synthetic c(Lhrq;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lhrq;->f()V

    return-void
.end method

.method static synthetic d(Lhrq;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lhrq;->g()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lhrq;->a:Lhqo;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lhrq;->a:Lhqo;

    const-string v1, "Pagamento de at\u00e9 R$ 140 mil em caso de morte ou invalidez, para quitar a d\u00edvida em aberto"

    invoke-interface {v0, v1, v3, v2}, Lhqo;->a(Ljava/lang/String;ZZ)V

    .line 79
    iget-object v0, p0, Lhrq;->a:Lhqo;

    const-string v1, "Se seu empr\u00e9stimo for quitado antes, garantimos at\u00e9 R$ 140 mil para sua fam\u00edlia, em caso de morte ou invalidez"

    invoke-interface {v0, v1, v3, v2}, Lhqo;->a(Ljava/lang/String;ZZ)V

    .line 82
    iget-object v0, p0, Lhrq;->a:Lhqo;

    const-string v1, "Sorteios mensais de R$ 20 mil durante 12 meses"

    invoke-interface {v0, v1, v3, v2}, Lhqo;->a(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method static synthetic e(Lhrq;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lhrq;->h()V

    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lhrq;->a:Lhqo;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lhrq;->a:Lhqo;

    const-string v1, "Pagamento de at\u00e9 R$ 100 mil em caso de morte ou invalidez, para quitar a d\u00edvida em aberto"

    invoke-interface {v0, v1, v3, v2}, Lhqo;->a(Ljava/lang/String;ZZ)V

    .line 94
    iget-object v0, p0, Lhrq;->a:Lhqo;

    const-string v1, "Se seu empr\u00e9stimo for quitado antes, garantimos at\u00e9 R$ 100 mil para sua fam\u00edlia, em caso de morte ou invalidez"

    invoke-interface {v0, v1, v3, v2}, Lhqo;->a(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lhrq;->a:Lhqo;

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lhrq;->a:Lhqo;

    const-string v1, "Pagamento de at\u00e9 3 parcelas do seu empr\u00e9stimo limitadas a R$ 3 mil, em caso de desemprego involunt\u00e1rio"

    invoke-interface {v0, v1, v3, v2}, Lhqo;->a(Ljava/lang/String;ZZ)V

    .line 106
    iget-object v0, p0, Lhrq;->a:Lhqo;

    const-string v1, "Pagamento de at\u00e9 R$ 100 mil em caso de morte ou invalidez, para quitar a d\u00edvida em aberto"

    invoke-interface {v0, v1, v3, v2}, Lhqo;->a(Ljava/lang/String;ZZ)V

    .line 110
    iget-object v0, p0, Lhrq;->a:Lhqo;

    const-string v1, "Se seu empr\u00e9stimo for quitado antes, garantimos at\u00e9 R$ 100 mil para sua fam\u00edlia, em caso de morte ou invalidez"

    invoke-interface {v0, v1, v3, v2}, Lhqo;->a(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lhrq;->a:Lhqo;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lhrq;->b:Lhpd;

    invoke-interface {v0}, Lhpd;->b()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v0

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->isRefinanciamento()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lhrq;->a:Lhqo;

    invoke-interface {v0}, Lhqo;->f()V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lhrq;->a:Lhqo;

    invoke-interface {v0}, Lhqo;->e()V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lhrq;->b:Lhpd;

    invoke-interface {v0}, Lhpd;->b()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v0

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lhrq;->b:Lhpd;

    invoke-interface {v0}, Lhpd;->b()Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;

    move-result-object v0

    invoke-interface {v0}, Lcom/santander/app/emprestimo/creditopessoal/domain/CPContratacao;->isRefinanciamento()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Popup_Acao"

    const-string v1, "Refinanciamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Popup_Acao"

    const-string v1, "Consignado"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Popup_Acao"

    const-string v1, "CreditoPessoal"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lhrq;->a:Lhqo;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-direct {p0}, Lhrq;->i()V

    .line 37
    iget-object v0, p0, Lhrq;->a:Lhqo;

    invoke-interface {v0}, Lhqo;->b()V

    .line 38
    iget-object v0, p0, Lhrq;->a:Lhqo;

    invoke-interface {v0}, Lhqo;->c()V

    .line 39
    iget-object v0, p0, Lhrq;->b:Lhpd;

    new-instance v1, Lhrr;

    invoke-direct {v1, p0}, Lhrr;-><init>(Lhrq;)V

    invoke-interface {v0, v1}, Lhpd;->a(Lhpe;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lhrq;->a:Lhqo;

    .line 71
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lhrq;->a:Lhqo;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Popup_Acao"

    const-string v1, "Manter"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lhrq;->b:Lhpd;

    invoke-interface {v0}, Lhpd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-direct {p0}, Lhrq;->h()V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lhrq;->a:Lhqo;

    invoke-interface {v0}, Lhqo;->c()V

    .line 126
    iget-object v0, p0, Lhrq;->b:Lhpd;

    const/4 v1, 0x1

    new-instance v2, Lhrs;

    invoke-direct {v2, p0}, Lhrs;-><init>(Lhrq;)V

    invoke-interface {v0, v1, v2}, Lhpd;->a(ZLhpf;)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lhrq;->a:Lhqo;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v0, "CreditoFinanciamento_Emprestimos_Contratacao_SimularSemSeguro_Popup_Acao"

    const-string v1, "Excluir"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lhrq;->b:Lhpd;

    invoke-interface {v0}, Lhpd;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-direct {p0}, Lhrq;->h()V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lhrq;->a:Lhqo;

    invoke-interface {v0}, Lhqo;->c()V

    .line 150
    iget-object v0, p0, Lhrq;->b:Lhpd;

    const/4 v1, 0x0

    new-instance v2, Lhrt;

    invoke-direct {v2, p0}, Lhrt;-><init>(Lhrq;)V

    invoke-interface {v0, v1, v2}, Lhpd;->a(ZLhpf;)V

    goto :goto_0
.end method
