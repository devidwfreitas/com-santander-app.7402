.class public Lhxi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "CreditoFinanciamento_Reorganizacao_Contratacao_DiaVencimento"

.field private static final B:Ljava/lang/String; = "CreditoFinanciamento_Reorganizacao_Contratacao_Valor"

.field private static final C:Ljava/lang/String; = "CreditoFinanciamento_Reorganizacao_Contratacao_ValorParcela"

.field private static final D:Ljava/lang/String; = "CreditoFinanciamento_Reorganizacao_Contratacao_Comprovante_Acao"

.field private static final E:Ljava/lang/String; = "CreditoFinanciamento_Renegociacao_Acao"

.field private static final a:Ljava/lang/String; = "CreditoFinanciamento"

.field private static final b:Ljava/lang/String; = "Renegociacao_CPU"

.field private static final c:Ljava/lang/String; = "Renegociacao_Reorganizacao"

.field private static final d:Ljava/lang/String; = "CreditoFinanciamento_CarrosselHomeLogada_Acao"

.field private static final e:Ljava/lang/String; = "CreditoFinanciamento_MenuLateral_Acao"

.field private static final f:Ljava/lang/String; = "CreditoFinanciamento_MenuLateral_Submenu_Acao"

.field private static final g:Ljava/lang/String; = "CreditoFinanciamento_Cancelamento_Acao"

.field private static final h:Ljava/lang/String; = "CreditoFinanciamento_Cancelamento_Popup_Acao"

.field private static final i:Ljava/lang/String; = "CreditoFinanciamento_CPU_Simulacao_Acao"

.field private static final j:Ljava/lang/String; = "CreditoFinanciamento_CPU_Simulacao_NumeroDeParcelas_Acao"

.field private static final k:Ljava/lang/String; = "CreditoFinanciamento_CPU_Simulacao_DiaVencimento_Acao"

.field private static final l:Ljava/lang/String; = "CreditoFinanciamento_CPU_Contratacao_LerAgora_Acao"

.field private static final m:Ljava/lang/String; = "CreditoFinanciamento_CPU_Contratacao_Acao"

.field private static final n:Ljava/lang/String; = "CreditoFinanciamento_CPU_Contratacao_NumeroDeParcelas"

.field private static final o:Ljava/lang/String; = "CreditoFinanciamento_CPU_Contratacao_DiaVencimento"

.field private static final p:Ljava/lang/String; = "CreditoFinanciamento_CPU_Contratacao_Valor"

.field private static final q:Ljava/lang/String; = "CreditoFinanciamento_CPU_Contratacao_ValorParcela"

.field private static final r:Ljava/lang/String; = "CreditoFinanciamento_CPU_Contratacao_Comprovante_Acao"

.field private static final s:Ljava/lang/String; = "CreditoFinanciamento_CPU_Contratacao_SeguroContratado"

.field private static final t:Ljava/lang/String; = "CreditoFinanciamento_CPU_Contratacao_PopUpSeguro_Acao"

.field private static final u:Ljava/lang/String; = "CreditoFinanciamento_Reorganizacao_Simulacao_Acao"

.field private static final v:Ljava/lang/String; = "CreditoFinanciamento_Reorganizacao_Simulacao_NumeroDeParcelas_Acao"

.field private static final w:Ljava/lang/String; = "CreditoFinanciamento_Reorganizacao_Simulacao_DiaVencimento_Acao"

.field private static final x:Ljava/lang/String; = "CreditoFinanciamento_Reorganizacao_Contratacao_LerAgora_Acao"

.field private static final y:Ljava/lang/String; = "CreditoFinanciamento_Reorganizacao_Contratacao_Acao"

.field private static final z:Ljava/lang/String; = "CreditoFinanciamento_Reorganizacao_Contratacao_NumeroDeParcelas"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "CreditoFinanciamento"

    invoke-static {v0}, Lfrq;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static a(Lhxn;)V
    .locals 2

    .prologue
    .line 61
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Renegociacao_Reorganizacao"

    .line 63
    :goto_0
    const-string v1, "CreditoFinanciamento"

    invoke-static {v1, v0}, Lfrq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void

    .line 61
    :cond_0
    const-string v0, "Renegociacao_CPU"

    goto :goto_0
.end method

.method public static a(Lhxn;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Simulacao_NumeroDeParcelas_Acao"

    .line 140
    :goto_0
    invoke-static {v0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 138
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Simulacao_NumeroDeParcelas_Acao"

    goto :goto_0
.end method

.method public static a(Lhxn;Z)V
    .locals 2

    .prologue
    .line 182
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Contratacao_Acao"

    .line 184
    :goto_0
    const-string v1, "LiConcordo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void

    .line 182
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_Acao"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "CreditoFinanciamento"

    invoke-static {v0, p0}, Lfrq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "CreditoFinanciamento_CarrosselHomeLogada_Acao"

    const-string v1, "RenegocieSuasDividas"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static b(Lhxn;)V
    .locals 2

    .prologue
    .line 126
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Simulacao_Acao"

    .line 128
    :goto_0
    const-string v1, "DetalhamentoDasDividas"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 126
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Simulacao_Acao"

    goto :goto_0
.end method

.method public static b(Lhxn;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Simulacao_DiaVencimento_Acao"

    .line 146
    :goto_0
    invoke-static {v0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 144
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Simulacao_DiaVencimento_Acao"

    goto :goto_0
.end method

.method public static b(Lhxn;Z)V
    .locals 2

    .prologue
    .line 188
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_Acao"

    .line 191
    if-eqz p1, :cond_1

    .line 192
    const-string v1, "SimularComSeguro"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    const-string v1, "SimularSemSeguro"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "CreditoFinanciamento_MenuLateral_Acao"

    const-string v1, "Renegocia\u00e7\u00e3o"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static c(Lhxn;)V
    .locals 2

    .prologue
    .line 132
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Simulacao_Acao"

    .line 134
    :goto_0
    const-string v1, "InformacoesCompletasSobreDivida"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 132
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Simulacao_Acao"

    goto :goto_0
.end method

.method public static c(Lhxn;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lhuw;
        .end annotation
    .end param

    .prologue
    .line 160
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CreditoFinanciamento_Reorganizacao_Contratacao_LerAgora_Acao"

    .line 162
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 179
    :goto_2
    return-void

    .line 160
    :cond_1
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_LerAgora_Acao"

    goto :goto_0

    .line 162
    :sswitch_0
    const-string v2, "cpu_condicoes_gerais_emprestimo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "cpu_condicoes_seguro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "cpu_cet"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "cpu_resumo_contratual"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    .line 164
    :pswitch_0
    const-string v1, "CondicoesGeraisEmprestimo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 168
    :pswitch_1
    const-string v1, "CondicoesGeraisSeguro"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 172
    :pswitch_2
    const-string v1, "CET"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 176
    :pswitch_3
    const-string v1, "ResumoContratual"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 162
    nop

    :sswitch_data_0
    .sparse-switch
        -0xcfebb02 -> :sswitch_3
        -0x5686f6e -> :sswitch_1
        0x3ac51d3b -> :sswitch_2
        0x43971ac2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "CreditoFinanciamento_MenuLateral_Submenu_Acao"

    const-string v1, "SimularRenegocia\u00e7\u00e3o"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static d(Lhxn;)V
    .locals 2

    .prologue
    .line 150
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Simulacao_Acao"

    .line 152
    :goto_0
    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void

    .line 150
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Simulacao_Acao"

    goto :goto_0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "CreditoFinanciamento_MenuLateral_Submenu_Acao"

    const-string v1, "Cancelamento"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static e(Lhxn;)V
    .locals 2

    .prologue
    .line 200
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "CreditoFinanciamento_Reorganizacao_Contratacao_Acao"

    .line 202
    const-string v1, "FinalizarContratacao"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_Acao"

    .line 205
    invoke-interface {p0}, Lhxn;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    const-string v1, "ContratarComSeguro"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    const-string v1, "ContratarSemSeguro"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f()Lhnl;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lhxj;

    invoke-direct {v0}, Lhxj;-><init>()V

    return-object v0
.end method

.method public static f(Lhxn;)V
    .locals 2

    .prologue
    .line 214
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_PopUpSeguro_Acao"

    const-string v1, "ManterSeguro"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static g(Lhxn;)V
    .locals 2

    .prologue
    .line 220
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_PopUpSeguro_Acao"

    const-string v1, "ExcluirSeguro"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static h(Lhxn;)V
    .locals 0

    .prologue
    .line 226
    invoke-static {p0}, Lhxi;->k(Lhxn;)V

    .line 227
    invoke-static {p0}, Lhxi;->l(Lhxn;)V

    .line 228
    invoke-static {p0}, Lhxi;->m(Lhxn;)V

    .line 229
    invoke-static {p0}, Lhxi;->n(Lhxn;)V

    .line 230
    invoke-static {p0}, Lhxi;->o(Lhxn;)V

    .line 231
    return-void
.end method

.method public static i(Lhxn;)V
    .locals 2

    .prologue
    .line 269
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Contratacao_Comprovante_Acao"

    .line 271
    :goto_0
    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void

    .line 269
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_Comprovante_Acao"

    goto :goto_0
.end method

.method public static j(Lhxn;)V
    .locals 2

    .prologue
    .line 275
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Contratacao_Comprovante_Acao"

    .line 277
    :goto_0
    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void

    .line 275
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_Comprovante_Acao"

    goto :goto_0
.end method

.method private static k(Lhxn;)V
    .locals 4

    .prologue
    .line 234
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Contratacao_NumeroDeParcelas"

    .line 236
    :goto_0
    invoke-interface {p0}, Lhxn;->m()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 237
    return-void

    .line 234
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_NumeroDeParcelas"

    goto :goto_0
.end method

.method private static l(Lhxn;)V
    .locals 4

    .prologue
    .line 240
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Contratacao_DiaVencimento"

    .line 242
    :goto_0
    invoke-interface {p0}, Lhxn;->q()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 243
    return-void

    .line 240
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_DiaVencimento"

    goto :goto_0
.end method

.method private static m(Lhxn;)V
    .locals 2

    .prologue
    .line 246
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Contratacao_Valor"

    .line 248
    :goto_0
    invoke-interface {p0}, Lhxn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 246
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_Valor"

    goto :goto_0
.end method

.method private static n(Lhxn;)V
    .locals 2

    .prologue
    .line 252
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreditoFinanciamento_Reorganizacao_Contratacao_ValorParcela"

    .line 254
    :goto_0
    invoke-interface {p0}, Lhxn;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void

    .line 252
    :cond_0
    const-string v0, "CreditoFinanciamento_CPU_Contratacao_ValorParcela"

    goto :goto_0
.end method

.method private static o(Lhxn;)V
    .locals 2

    .prologue
    .line 258
    invoke-interface {p0}, Lhxn;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    const-string v1, "CreditoFinanciamento_CPU_Contratacao_SeguroContratado"

    .line 261
    invoke-interface {p0}, Lhxn;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Sim"

    .line 260
    :goto_1
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_1
    const-string v0, "Nao"

    goto :goto_1
.end method
