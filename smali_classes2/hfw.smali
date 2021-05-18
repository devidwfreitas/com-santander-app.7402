.class public Lhfw;
.super Lhfn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lhfy;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lhfn;-><init>(Lhfy;)V

    .line 19
    return-void
.end method

.method private k()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0}, Lhfw;->c()Landroid/text/style/AlignmentSpan;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x10

    .line 127
    invoke-virtual {p0, v2}, Lhfw;->a(I)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 128
    invoke-virtual {p0}, Lhfw;->e()Landroid/text/style/StyleSpan;

    move-result-object v2

    aput-object v2, v0, v1

    .line 125
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "empre-reneg-ler2"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "Contrato de Renegocia\u00e7\u00e3o."

    return-object v0
.end method

.method public i()Lbfj;
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lhfw;->a:Lhfy;

    invoke-interface {v0}, Lhfy;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhfw;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 39
    new-instance v1, Lbfj;

    invoke-direct {v1}, Lbfj;-><init>()V

    .line 41
    const-string v2, "CONTRATOS RENEGOCIADOS"

    invoke-direct {p0}, Lhfw;->k()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 42
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 44
    const-string v2, "N\u00fameros de contratos renegociados: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 45
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->C()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 46
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 48
    const-string v2, "VALORES E JUROS"

    invoke-direct {p0}, Lhfw;->k()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 49
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 51
    const-string v2, "Valor Renegociado: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 52
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 53
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 55
    const-string v2, "Quantidade de Parcelas: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 56
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 57
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 59
    const-string v2, "Valor do Desconto: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 60
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 61
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 63
    const-string v2, "Valor das Parcelas: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 64
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 65
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 67
    const-string v2, "Dia de d\u00e9bito: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 68
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->E()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 69
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 71
    const-string v2, "Vencimento 1\u00aa parcela: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 72
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 73
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 75
    const-string v2, "Valor do IOF: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 76
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 77
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 79
    const-string v2, "Forma de pagamento: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 80
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 81
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 83
    const-string v2, "Taxa de juros mensal: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 84
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 85
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 87
    const-string v2, "CET: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 88
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 89
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 91
    const-string v2, "PAGAMENTOS E PARCELAS"

    invoke-direct {p0}, Lhfw;->k()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 92
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 94
    const-string v2, "N\u00fameros de Parcelas: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 95
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 96
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 98
    const-string v2, "Vencimento 1\u00aa parcela: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 99
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 100
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 102
    const-string v2, "Vencimento das Demais Parcelas: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 103
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->E()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 104
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 106
    const-string v2, "Forma de pagamento: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 107
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 108
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 110
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->e()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 111
    const-string v2, "Endere\u00e7o de Cobran\u00e7a: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 112
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 113
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 120
    :goto_0
    invoke-virtual {v1, v0}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 121
    return-object v1

    .line 115
    :cond_0
    const-string v2, "Conta corrente: "

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    .line 116
    iget-object v2, p0, Lhfw;->a:Lhfy;

    invoke-interface {v2}, Lhfy;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lhfw;->f()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbfj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lbfj;

    .line 117
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Lbfj;->a(Ljava/lang/CharSequence;)Lbfj;

    goto :goto_0
.end method

.method public synthetic j()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lhfw;->i()Lbfj;

    move-result-object v0

    return-object v0
.end method
