.class public Lhhr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Contratacao_DiaVencimento"

.field private static final B:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Contratacao_Valor"

.field private static final C:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Contratacao_ValorParcela"

.field private static final D:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Contratacao_Comprovante_Acao"

.field private static final a:Ljava/lang/String; = "DetalhamentoDasDividas"

.field private static final b:Ljava/lang/String; = "DebitoEmConta"

.field private static final c:Ljava/lang/String; = "Boleto"

.field private static final d:Ljava/lang/String; = "Parcelado"

.field private static final e:Ljava/lang/String; = "AVista"

.field private static final f:Ljava/lang/String; = "Simular"

.field private static final g:Ljava/lang/String; = "Continuar"

.field private static final h:Ljava/lang/String; = "CET"

.field private static final i:Ljava/lang/String; = "ContratoRenegociacao"

.field private static final j:Ljava/lang/String; = "CondicoesGerais"

.field private static final k:Ljava/lang/String; = "LiConcordo"

.field private static final l:Ljava/lang/String; = "Confirmar"

.field private static final m:Ljava/lang/String; = "Compartilhar"

.field private static final n:Ljava/lang/String; = "Fechar"

.field private static final o:Ljava/lang/String; = "CopiarCodigoDeBarras"

.field private static final p:Ljava/lang/String; = "PagarBoleto"

.field private static final q:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Simulacao_Acao"

.field private static final r:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Simulacao_NumeroDeParcelas_Acao"

.field private static final s:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Simulacao_DiaVencimento_Acao"

.field private static final t:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Simulacao_ValorParcela_Acao"

.field private static final u:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Simulacao_Pagamento_Acao"

.field private static final v:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Simulacao_Parcelado_Acao"

.field private static final w:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Contratacao_LerAgora_Acao"

.field private static final x:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Contratacao_Compartilhar_Acao"

.field private static final y:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Contratacao_Acao"

.field private static final z:Ljava/lang/String; = "CreditoFinanciamento_Acordo_Contratacao_NumeroDeParcelas"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "CreditoFinanciamento_Acordo_Simulacao_Acao"

    const-string v1, "DetalhamentoDasDividas"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private static a(I)V
    .locals 3

    .prologue
    .line 96
    const-string v0, "CreditoFinanciamento_Acordo_Contratacao_NumeroDeParcelas"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static a(Lhfy;)V
    .locals 1

    .prologue
    .line 89
    invoke-interface {p0}, Lhfy;->n()I

    move-result v0

    invoke-static {v0}, Lhhr;->a(I)V

    .line 90
    invoke-interface {p0}, Lhfy;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhhr;->e(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Lhfy;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhhr;->f(Ljava/lang/String;)V

    .line 92
    invoke-interface {p0}, Lhfy;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhhr;->g(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static a(Lhgb;)V
    .locals 2

    .prologue
    .line 150
    invoke-interface {p0}, Lhgb;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 152
    :pswitch_0
    const-string v0, "CreditoFinanciamento_Acordo_Contratacao_LerAgora_Acao"

    const-string v1, "CondicoesGerais"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_1
    const-string v0, "CreditoFinanciamento_Acordo_Contratacao_LerAgora_Acao"

    const-string v1, "ContratoRenegociacao"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_2
    const-string v0, "CreditoFinanciamento_Acordo_Contratacao_LerAgora_Acao"

    const-string v1, "CET"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    const-string v0, "CreditoFinanciamento_Acordo_Simulacao_NumeroDeParcelas_Acao"

    invoke-static {v0, p0}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lfrq;->a(Ljava/lang/String;D)V

    .line 169
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    invoke-static {p0, p1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 64
    const-string v1, "CreditoFinanciamento_Acordo_Simulacao_Pagamento_Acao"

    if-eqz p0, :cond_0

    const-string v0, "DebitoEmConta"

    :goto_0
    invoke-static {v1, v0}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 64
    :cond_0
    const-string v0, "Boleto"

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "CreditoFinanciamento_Acordo_Simulacao_Acao"

    const-string v1, "Simular"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    const-string v0, "CreditoFinanciamento_Acordo_Simulacao_DiaVencimento_Acao"

    invoke-static {v0, p0}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static b(Z)V
    .locals 2

    .prologue
    .line 68
    const-string v1, "CreditoFinanciamento_Acordo_Simulacao_Parcelado_Acao"

    if-eqz p0, :cond_0

    const-string v0, "Parcelado"

    :goto_0
    invoke-static {v1, v0}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 68
    :cond_0
    const-string v0, "AVista"

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "CreditoFinanciamento_Acordo_Simulacao_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 84
    invoke-static {p0}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 85
    const-string v1, "CreditoFinanciamento_Acordo_Simulacao_ValorParcela_Acao"

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lfrq;->a(Ljava/lang/String;D)V

    .line 86
    return-void
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "CreditoFinanciamento_Acordo_Contratacao_Acao"

    const-string v1, "Confirmar"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 134
    const-string v0, ""

    .line 135
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 146
    :goto_1
    const-string v1, "CreditoFinanciamento_Acordo_Contratacao_Compartilhar_Acao"

    invoke-static {v1, v0}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 135
    :sswitch_0
    const-string v2, "Condi\u00e7\u00f5es Gerais."

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "Contrato de Renegocia\u00e7\u00e3o."

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Custo Efetivo Total"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 137
    :pswitch_0
    const-string v0, "CondicoesGerais"

    goto :goto_1

    .line 140
    :pswitch_1
    const-string v0, "ContratoRenegociacao"

    goto :goto_1

    .line 143
    :pswitch_2
    const-string v0, "CET"

    goto :goto_1

    .line 135
    :sswitch_data_0
    .sparse-switch
        -0xabf358e -> :sswitch_2
        0xc0fe3c9 -> :sswitch_1
        0x5c0cd65a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "CreditoFinanciamento_Acordo_Contratacao_Comprovante_Acao"

    const-string v1, "Compartilhar"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    const-string v0, "CreditoFinanciamento_Acordo_Contratacao_DiaVencimento"

    invoke-static {v0, p0}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "CreditoFinanciamento_Acordo_Contratacao_Comprovante_Acao"

    const-string v1, "Fechar"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    invoke-static {p0}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 105
    const-string v1, "CreditoFinanciamento_Acordo_Contratacao_Valor"

    invoke-static {v1, v0}, Lhhr;->a(Ljava/lang/String;Ljava/lang/Double;)V

    .line 106
    return-void
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "CreditoFinanciamento_Acordo_Contratacao_Comprovante_Acao"

    const-string v1, "CopiarCodigoDeBarras"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    invoke-static {p0}, Lnaj;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 110
    const-string v1, "CreditoFinanciamento_Acordo_Contratacao_ValorParcela"

    invoke-static {v1, v0}, Lhhr;->a(Ljava/lang/String;Ljava/lang/Double;)V

    .line 111
    return-void
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "CreditoFinanciamento_Acordo_Contratacao_Comprovante_Acao"

    const-string v1, "PagarBoleto"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "CreditoFinanciamento_Acordo_Contratacao_Acao"

    const-string v1, "LiConcordo"

    invoke-static {v0, v1}, Lhhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method
