.class public Lhce;
.super Lhbt;
.source "SourceFile"


# instance fields
.field private b:Lhbw;

.field private c:Lhca;

.field private d:Lhch;

.field private e:Lhcf;

.field private f:Lhbz;


# direct methods
.method public constructor <init>(Lhbv;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lhbt;-><init>(Lhbv;)V

    .line 26
    new-instance v0, Lhbw;

    invoke-direct {v0, p1}, Lhbw;-><init>(Lhbv;)V

    iput-object v0, p0, Lhce;->b:Lhbw;

    .line 27
    new-instance v0, Lhca;

    invoke-direct {v0, p1}, Lhca;-><init>(Lhbv;)V

    iput-object v0, p0, Lhce;->c:Lhca;

    .line 28
    new-instance v0, Lhch;

    invoke-direct {v0, p1}, Lhch;-><init>(Lhbv;)V

    iput-object v0, p0, Lhce;->d:Lhch;

    .line 29
    new-instance v0, Lhcf;

    invoke-direct {v0, p1}, Lhcf;-><init>(Lhbv;)V

    iput-object v0, p0, Lhce;->e:Lhcf;

    .line 30
    new-instance v0, Lhbz;

    invoke-direct {v0, p1}, Lhbz;-><init>(Lhbv;)V

    iput-object v0, p0, Lhce;->f:Lhbz;

    .line 31
    return-void
.end method

.method private b(Landroid/content/Context;Lhbp;)V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lhce;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lhce;->b(Landroid/content/Context;)V

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "DeepLink_PagamentosCodigosBarras"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Lhbp;->b()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string v2, "codigoBarras"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    new-instance v0, Lhbu;

    invoke-direct {v0, v1}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 84
    iget-object v1, p0, Lhce;->a:Lhbv;

    invoke-interface {v1, p1, v0}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lhbp;)V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p2}, Lhbp;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 68
    iget-object v0, p0, Lhce;->a:Lhbv;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    .line 71
    :goto_1
    return-void

    .line 35
    :sswitch_0
    const-string v2, "pagamentocodigobarra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "pagamentosCodigosBarras"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "cartoesConsultaFatura"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "cartoesPagamentoFatura"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "cartoesParcelamentoFatura"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "emprestimos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "renegociacao"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "segurosListaProdutos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "segurosAcidentePessoal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v2, "segurosVida"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v2, "lojaOnline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v2, "contaCorrenteSaldoDetalhado"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "contaCorrenteExtrato"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    .line 38
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lhce;->b(Landroid/content/Context;Lhbp;)V

    goto/16 :goto_1

    .line 44
    :pswitch_1
    iget-object v0, p0, Lhce;->b:Lhbw;

    invoke-virtual {v0, p1, p2}, Lhbw;->a(Landroid/content/Context;Lhbp;)V

    goto/16 :goto_1

    .line 49
    :pswitch_2
    iget-object v0, p0, Lhce;->c:Lhca;

    invoke-virtual {v0, p1, p2}, Lhca;->a(Landroid/content/Context;Lhbp;)V

    goto/16 :goto_1

    .line 55
    :pswitch_3
    iget-object v0, p0, Lhce;->d:Lhch;

    invoke-virtual {v0, p1, p2}, Lhch;->a(Landroid/content/Context;Lhbp;)V

    goto/16 :goto_1

    .line 59
    :pswitch_4
    iget-object v0, p0, Lhce;->e:Lhcf;

    invoke-virtual {v0, p1, p2}, Lhcf;->a(Landroid/content/Context;Lhbp;)V

    goto/16 :goto_1

    .line 64
    :pswitch_5
    iget-object v0, p0, Lhce;->f:Lhbz;

    invoke-virtual {v0, p1, p2}, Lhbz;->a(Landroid/content/Context;Lhbp;)V

    goto/16 :goto_1

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        -0x794b6a39 -> :sswitch_7
        -0x775deb68 -> :sswitch_8
        -0x74a30b5c -> :sswitch_5
        -0x57de9d7f -> :sswitch_4
        -0x486a595a -> :sswitch_9
        -0x47452c42 -> :sswitch_1
        -0xd36e05d -> :sswitch_0
        -0xbcf7b13 -> :sswitch_a
        0xafe3a74 -> :sswitch_3
        0xc365148 -> :sswitch_6
        0x26d9959d -> :sswitch_2
        0x497c79b6 -> :sswitch_c
        0x49fb034e -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
