.class public Libm;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "Sim"

.field public static final b:Ljava/lang/String; = "Nao"

.field public static final c:Ljava/lang/String; = "FaleConosco"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 27
    return-void
.end method

.method public static a(Lhze;Libo;)V
    .locals 4

    .prologue
    .line 262
    const-string v0, ""

    .line 263
    invoke-virtual {p1}, Libo;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 279
    :goto_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lhze;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_1
    return-void

    .line 263
    :sswitch_0
    const-string v3, "Conta Corrente"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "Cart\u00e3o de Cr\u00e9dito"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "Canais Digitais"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "Seguran\u00e7a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "Demais servi\u00e7os"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 265
    :pswitch_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Outros_FAQ_ContaCorrente_FaleConosco_Motivo_Acao"

    goto :goto_1

    :cond_2
    const-string v0, "Outros_HomeNaoLogada_FAQ_ContaCorrente_FaleConosco_Motivo_Acao"

    goto :goto_1

    .line 268
    :pswitch_1
    const-string v0, "Outros_FAQ_CartaoDeCredito_FaleConosco_Motivo_Acao"

    goto :goto_1

    .line 271
    :pswitch_2
    const-string v0, "Outros_FAQ_CanaisDigitais_FaleConosco_Motivo_Acao"

    goto :goto_1

    .line 274
    :pswitch_3
    const-string v0, "Outros_FAQ_Seguranca_FaleConosco_Motivo_Acao"

    goto :goto_1

    .line 263
    :sswitch_data_0
    .sparse-switch
        -0x28951bfd -> :sswitch_2
        -0xea35431 -> :sswitch_1
        0x1c723639 -> :sswitch_4
        0x24c3d1d9 -> :sswitch_3
        0x4ef45457 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lhzp;Libo;)V
    .locals 4

    .prologue
    .line 284
    const-string v0, ""

    .line 285
    invoke-virtual {p1}, Libo;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 298
    :goto_1
    :pswitch_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    invoke-virtual {p0}, Lhzp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_1
    return-void

    .line 285
    :sswitch_0
    const-string v3, "Conta Corrente"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "Cart\u00e3o de Cr\u00e9dito"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "Canais Digitais"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "Seguran\u00e7a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "Demais servi\u00e7os"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 295
    :pswitch_1
    const-string v0, "Outros_FAQ_DemaisServicos_ServicoProduto_Acao"

    goto :goto_1

    .line 285
    :sswitch_data_0
    .sparse-switch
        -0x28951bfd -> :sswitch_2
        -0xea35431 -> :sswitch_1
        0x1c723639 -> :sswitch_4
        0x24c3d1d9 -> :sswitch_3
        0x4ef45457 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Libo;)V
    .locals 4

    .prologue
    .line 31
    const-string v0, ""

    .line 32
    invoke-virtual {p0}, Libo;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 46
    :goto_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    const-string v1, "FaleConosco"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    return-void

    .line 32
    :sswitch_0
    const-string v3, "Conta Corrente"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "Cart\u00e3o de Cr\u00e9dito"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "Canais Digitais"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "Seguran\u00e7a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 34
    :pswitch_0
    const-string v0, "Outros_FAQ_ContaCorrente_Acao"

    goto :goto_1

    .line 37
    :pswitch_1
    const-string v0, "Outros_FAQ_CartaoDeCredito_Acao"

    goto :goto_1

    .line 40
    :pswitch_2
    const-string v0, "Outros_FAQ_CanaisDigitais_Acao"

    goto :goto_1

    .line 43
    :pswitch_3
    const-string v0, "Outros_FAQ_Seguranca_Acao"

    goto :goto_1

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        -0x28951bfd -> :sswitch_2
        -0xea35431 -> :sswitch_1
        0x24c3d1d9 -> :sswitch_3
        0x4ef45457 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Libp;Libo;)V
    .locals 5

    .prologue
    .line 107
    const-string v0, ""

    const-string v1, ""

    .line 108
    invoke-virtual {p1}, Libo;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 181
    :goto_1
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1
    return-void

    .line 108
    :sswitch_0
    const-string v4, "Conta Corrente"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "Cart\u00e3o de Cr\u00e9dito"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "Canais Digitais"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "Seguran\u00e7a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Outros_FAQ_ContaCorrente_Acao"

    .line 111
    :goto_2
    invoke-virtual {p0}, Libp;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 113
    :pswitch_1
    const-string v1, "ComoCadastrarOsPagamentosEmDebitoAutomatico"

    goto :goto_1

    .line 110
    :cond_2
    const-string v0, "Outros_HomeNaoLogada_FAQ_ContaCorrente_Acao"

    goto :goto_2

    .line 116
    :pswitch_2
    const-string v1, "ComoReemitirUmBoletoMesmoParaNaoCorrentista"

    goto :goto_1

    .line 119
    :pswitch_3
    const-string v1, "ComoPossoAdquirirMeusExtratosDaContaCorrenteDosMesesAnteriores"

    goto :goto_1

    .line 122
    :pswitch_4
    const-string v1, "QuaisOsDocumentosNecessariosParaSeAbrirUmaContaPoupanca"

    goto :goto_1

    .line 127
    :pswitch_5
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Outros_FAQ_CartaoDeCredito_Acao"

    .line 128
    :goto_3
    invoke-virtual {p0}, Libp;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 130
    :pswitch_6
    const-string v1, "ComoObterConsultarAFaturaDeCartaoDeCredito"

    goto :goto_1

    .line 127
    :cond_3
    const-string v0, "Outros_HomeNaoLogada_FAQ_CartaoDeCredito_Acao"

    goto :goto_3

    .line 133
    :pswitch_7
    const-string v1, "NaoConsigoPagarOValorTotalDaMinhaFaturaComoPossoParcelar"

    goto :goto_1

    .line 136
    :pswitch_8
    const-string v1, "ComoDesbloquearOCartaoDeCreditoOuDebito"

    goto :goto_1

    .line 139
    :pswitch_9
    const-string v1, "ComoEuFacoParaDesbloquearUmCartaoBloqueadoPorPerdaOuRoubo"

    goto/16 :goto_1

    .line 142
    :pswitch_a
    const-string v1, "ComoFacoParaResgatarOsBonusDoCartaoDeCreditoDoSantanderEQuantoValeBonusEmDinheiroReal"

    goto/16 :goto_1

    .line 147
    :pswitch_b
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Outros_FAQ_CanaisDigitais_Acao"

    .line 148
    :goto_4
    invoke-virtual {p0}, Libp;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_1

    .line 150
    :pswitch_c
    const-string v1, "NuncaAcesseiOInternetBankingComoFacoParaAcessarPelaPrimeiraVez"

    goto/16 :goto_1

    .line 147
    :cond_4
    const-string v0, "Outros_HomeNaoLogada_FAQ_CanaisDigitais_Acao"

    goto :goto_4

    .line 153
    :pswitch_d
    const-string v1, "EstouTentandoFazerUmaTransacaoNoInternetBankingEEleMePedeOCartaoDeSegurancaOnlineCSOOQueEIsso"

    goto/16 :goto_1

    .line 156
    :pswitch_e
    const-string v1, "OQueESMSTokenEParaQueServe"

    goto/16 :goto_1

    .line 159
    :pswitch_f
    const-string v1, "ComoFuncionaANavegacaoGratisDoAppSantander"

    goto/16 :goto_1

    .line 164
    :pswitch_10
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Outros_FAQ_Seguranca_Acao"

    .line 165
    :goto_5
    invoke-virtual {p0}, Libp;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_1

    .line 167
    :pswitch_11
    const-string v1, "EstouTentandoFazerUmaTransacaoNoInternetBankingEEleMePedeOCartaoDeSegurancaOnlineCSOOQueEIssoPrecisoAtivaLo"

    goto/16 :goto_1

    .line 164
    :cond_5
    const-string v0, "Outros_HomeNaoLogada_FAQ_Seguranca_Acao"

    goto :goto_5

    .line 170
    :pswitch_12
    const-string v1, "ComoFacoParaDesbloquearUmCartaoBloqueadoPorPerdaOuRoubo"

    goto/16 :goto_1

    .line 173
    :pswitch_13
    const-string v1, "OQueESMSTokenEParaQueServe"

    goto/16 :goto_1

    .line 176
    :pswitch_14
    const-string v1, "EstouComProblemasEmInstalarOModuloDeProtecaoDeSegurancaComoDevoProceder"

    goto/16 :goto_1

    .line 108
    :sswitch_data_0
    .sparse-switch
        -0x28951bfd -> :sswitch_2
        -0xea35431 -> :sswitch_1
        0x24c3d1d9 -> :sswitch_3
        0x4ef45457 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_b
        :pswitch_10
    .end packed-switch

    .line 111
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 128
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 148
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 165
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Libp;Libo;)V
    .locals 4

    .prologue
    .line 186
    const-string v0, ""

    .line 188
    invoke-virtual {p2}, Libo;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 257
    :goto_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    invoke-static {v0, p0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    return-void

    .line 188
    :sswitch_0
    const-string v3, "Conta Corrente"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "Cart\u00e3o de Cr\u00e9dito"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "Canais Digitais"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "Seguran\u00e7a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 190
    :pswitch_0
    invoke-virtual {p1}, Libp;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 192
    :pswitch_1
    const-string v0, "Outros_FAQ_ContaCorrente_ComoCadastrarOsPagamentosEmDebitoAutomatico_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 195
    :pswitch_2
    const-string v0, "Outros_FAQ_ContaCorrente_ComoReemitirUmBoletoMesmoParaNaoCorrentista_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 198
    :pswitch_3
    const-string v0, "Outros_FAQ_ContaCorrente_ComoPossoAdquirirMeusExtratosDaContaCorrenteDosMesesAnteriores_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 201
    :pswitch_4
    const-string v0, "Outros_FAQ_ContaCorrente_QuaisOsDocumentosNecessariosParaSeAbrirUmaContaPoupanca_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 206
    :pswitch_5
    invoke-virtual {p1}, Libp;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    goto :goto_1

    .line 208
    :pswitch_6
    const-string v0, "Outros_FAQ_CartaoDeCredito_ComoObterConsultarAFaturaDeCartaoDeCredito_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 211
    :pswitch_7
    const-string v0, "Outros_FAQ_CartaoDeCredito_NaoConsigoPagarOValorTotalDaMinhaFaturaComoPossoParcelar_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 214
    :pswitch_8
    const-string v0, "Outros_FAQ_CartaoDeCredito_ComoDesbloquearOCartaoDeCreditoOuDebito_Acao"

    goto :goto_1

    .line 217
    :pswitch_9
    const-string v0, "Outros_FAQ_CartaoDeCredito_ComoEuFacoParaDesbloquearUmCartaoBloqueadoPorPerdaOuRoubo_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 220
    :pswitch_a
    const-string v0, "Outros_FAQ_CartaoDeCredito_ComoFacoParaResgatarOsBonusDoCartaoDeCreditoDoSantanderEQuantoValeBonusEmDinheiroReal_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 225
    :pswitch_b
    invoke-virtual {p1}, Libp;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_3

    goto :goto_1

    .line 227
    :pswitch_c
    const-string v0, "Outros_FAQ_CanaisDigitais_NuncaAcesseiOInternetBankingComoFacoParaAcessarPelaPrimeiraVez_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 230
    :pswitch_d
    const-string v0, "Outros_FAQ_CanaisDigitais_EstouTentandoFazerUmaTransacaoNoInternetBankingEEleMePedeOCartaoDeSegurancaOnlineCSOOQueEIsso_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 233
    :pswitch_e
    const-string v0, "Outros_FAQ_CanaisDigitais_OQueESMSTokenEParaQueServe_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 236
    :pswitch_f
    const-string v0, "Outros_FAQ_CanaisDigitais_ComoFuncionaANavegacaoGratisDoAppSantander_EstaInformacaoFoiUtil_Acao"

    goto :goto_1

    .line 241
    :pswitch_10
    invoke-virtual {p1}, Libp;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_4

    goto/16 :goto_1

    .line 243
    :pswitch_11
    const-string v0, "Outros_FAQ_Seguranca_EstouTentandoFazerUmaTransacaoNoInternetBankingEEleMePedeOCartaoDeSegurancaOnlineCSOOQueEIssoPrecisoAtivaLo_EstaInformacaoFoiUtil_Acao"

    goto/16 :goto_1

    .line 246
    :pswitch_12
    const-string v0, "Outros_FAQ_Seguranca_ComoFacoParaDesbloquearUmCartaoBloqueadoPorPerdaOuRoubo_EstaInformacaoFoiUtil_Acao"

    goto/16 :goto_1

    .line 249
    :pswitch_13
    const-string v0, "Outros_FAQ_Seguranca_OQueESMSTokenEParaQueServe_EstaInformacaoFoiUtil_Acao"

    goto/16 :goto_1

    .line 252
    :pswitch_14
    const-string v0, "Outros_FAQ_Seguranca_EstouComProblemasEmInstalarOModuloDeProtecaoDeSegurancaComoDevoProceder_EstaInformacaoFoiUtil_Acao"

    goto/16 :goto_1

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        -0x28951bfd -> :sswitch_2
        -0xea35431 -> :sswitch_1
        0x24c3d1d9 -> :sswitch_3
        0x4ef45457 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_b
        :pswitch_10
    .end packed-switch

    .line 190
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 206
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 225
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 241
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static a(ZI)V
    .locals 2

    .prologue
    .line 51
    const-string v0, ""

    .line 52
    packed-switch p1, :pswitch_data_0

    .line 80
    :goto_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    if-eqz p0, :cond_9

    const-string v1, "Ocultar"

    :goto_1
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void

    .line 54
    :pswitch_0
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Outros_FAQ_EntreEmContatoConosco_AtendimentoDireto_Acao"

    goto :goto_0

    :cond_1
    const-string v0, "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_AtendimentoDireto_Acao"

    goto :goto_0

    .line 57
    :pswitch_1
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Outros_FAQ_EntreEmContatoConosco_SAC_Acao"

    goto :goto_0

    :cond_2
    const-string v0, "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_SAC_Acao"

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Outros_FAQ_EntreEmContatoConosco_Ouvidoria_Acao"

    goto :goto_0

    :cond_3
    const-string v0, "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_Ouvidoria_Acao"

    goto :goto_0

    .line 63
    :pswitch_3
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Outros_FAQ_EntreEmContatoConosco_CentralDeRenegociacao_Acao"

    goto :goto_0

    :cond_4
    const-string v0, "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_CentralDeRenegociacao_Acao"

    goto :goto_0

    .line 66
    :pswitch_4
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Outros_FAQ_EntreEmContatoConosco_Financeira_Acao"

    goto :goto_0

    :cond_5
    const-string v0, "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_Financeira_Acao"

    goto :goto_0

    .line 69
    :pswitch_5
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Outros_FAQ_EntreEmContatoConosco_SegurosAssistencia24h_Acao"

    goto :goto_0

    :cond_6
    const-string v0, "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_SegurosAssistencia24h_Acao"

    goto :goto_0

    .line 72
    :pswitch_6
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Outros_FAQ_EntreEmContatoConosco_SUSEP_Acao"

    goto :goto_0

    :cond_7
    const-string v0, "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_SUSEP_Acao"

    goto :goto_0

    .line 75
    :pswitch_7
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Outros_FAQ_EntreEmContatoConosco_EnderecoCorrespondencia_Acao"

    goto/16 :goto_0

    :cond_8
    const-string v0, "Outros_HomeNaoLogada_FAQ_EntreEmContatoConosco_EnderecoCorrespondencia_Acao"

    goto/16 :goto_0

    .line 81
    :cond_9
    const-string v1, "Exibir"

    goto/16 :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static b(Libo;)V
    .locals 5

    .prologue
    .line 86
    const-string v0, ""

    const-string v1, ""

    .line 87
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Outros_FAQ_Acao"

    .line 88
    :goto_0
    invoke-virtual {p0}, Libo;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 102
    :goto_2
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    return-void

    .line 87
    :cond_2
    const-string v0, "Outros_HomeNaoLogada_FAQ_Acao"

    goto :goto_0

    .line 88
    :sswitch_0
    const-string v4, "Conta Corrente"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "Cart\u00e3o de Cr\u00e9dito"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "Canais Digitais"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "Seguran\u00e7a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    .line 90
    :pswitch_0
    const-string v1, "ContaCorrente"

    goto :goto_2

    .line 93
    :pswitch_1
    const-string v1, "CartaoDeCredito"

    goto :goto_2

    .line 96
    :pswitch_2
    const-string v1, "CanaisDigitais"

    goto :goto_2

    .line 99
    :pswitch_3
    const-string v1, "Seguranca"

    goto :goto_2

    .line 88
    :sswitch_data_0
    .sparse-switch
        -0x28951bfd -> :sswitch_2
        -0xea35431 -> :sswitch_1
        0x24c3d1d9 -> :sswitch_3
        0x4ef45457 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static c(Libo;)V
    .locals 4

    .prologue
    .line 303
    const-string v0, ""

    .line 304
    invoke-virtual {p0}, Libo;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 321
    :goto_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    const-string v1, "Enviar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_1
    return-void

    .line 304
    :sswitch_0
    const-string v3, "Conta Corrente"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "Cart\u00e3o de Cr\u00e9dito"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "Canais Digitais"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "Seguran\u00e7a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "Demais servi\u00e7os"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 306
    :pswitch_0
    const-string v0, "Outros_FAQ_ContaCorrente_FaleConosco_Acao"

    goto :goto_1

    .line 309
    :pswitch_1
    const-string v0, "Outros_FAQ_CartaoDeCredito_FaleConosco_Acao"

    goto :goto_1

    .line 312
    :pswitch_2
    const-string v0, "Outros_FAQ_CanaisDigitais_FaleConosco_Acao"

    goto :goto_1

    .line 315
    :pswitch_3
    const-string v0, "Outros_FAQ_Seguranca_FaleConosco_Acao"

    goto :goto_1

    .line 318
    :pswitch_4
    const-string v0, "Outros_FAQ_DemaisServicos_Acao"

    goto :goto_1

    .line 304
    :sswitch_data_0
    .sparse-switch
        -0x28951bfd -> :sswitch_2
        -0xea35431 -> :sswitch_1
        0x1c723639 -> :sswitch_4
        0x24c3d1d9 -> :sswitch_3
        0x4ef45457 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
