.class public Lghw;
.super Lgnb;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private agencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private agendamento:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contratoCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cotacaoDolar:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private custoEfetivoTotal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private despesaConvertida:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private despesaReal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private entidade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private listaParcela:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgif;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        required = false
    .end annotation
.end field

.field private mensagemRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private penumper:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private referOper:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaJuros:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoParcelamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorFinanciado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIOF:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorPagamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorPagamentoMinimo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTarifa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTotal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lghw;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lghw;->agencia:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgif;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    iput-object p1, p0, Lghw;->listaParcela:Ljava/util/List;

    .line 175
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lghw;->agendamento:Z

    .line 103
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lghw;->codigoRetorno:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lghw;->agendamento:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lghw;->codigoRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lghw;->contratoCartao:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lghw;->contratoCartao:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lghw;->cotacaoDolar:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lghw;->cotacaoDolar:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lghw;->custoEfetivoTotal:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lghw;->custoEfetivoTotal:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lghw;->dataVencimento:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lghw;->dataVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lghw;->despesaConvertida:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lghw;->despesaConvertida:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lghw;->despesaReal:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lghw;->despesaReal:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lghw;->entidade:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lghw;->entidade:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lghw;->mensagemRetorno:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgif;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lghw;->listaParcela:Ljava/util/List;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lghw;->numeroCartao:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lghw;->mensagemRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lghw;->penumper:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lghw;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lghw;->referOper:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lghw;->penumper:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lghw;->taxaJuros:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lghw;->referOper:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lghw;->tipoParcelamento:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lghw;->taxaJuros:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lghw;->valorFinanciado:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lghw;->tipoParcelamento:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lghw;->valorIOF:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lghw;->valorFinanciado:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lghw;->valorPagamento:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lghw;->valorIOF:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lghw;->valorPagamentoMinimo:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lghw;->valorPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lghw;->valorTarifa:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lghw;->valorPagamentoMinimo:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lghw;->valorTotal:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lghw;->valorTarifa:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lghw;->valorTotal:Ljava/lang/String;

    return-object v0
.end method
