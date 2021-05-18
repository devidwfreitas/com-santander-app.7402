.class public Lgig;
.super Lgnb;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "cartaoFaturaPagamentoResponse"
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
    .line 87
    iget-object v0, p0, Lgig;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lgig;->agencia:Ljava/lang/String;

    .line 92
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
    .line 171
    iput-object p1, p0, Lgig;->listaParcela:Ljava/util/List;

    .line 172
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lgig;->agendamento:Z

    .line 100
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lgig;->codigoRetorno:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lgig;->agendamento:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lgig;->codigoRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lgig;->contratoCartao:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lgig;->contratoCartao:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lgig;->cotacaoDolar:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lgig;->cotacaoDolar:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lgig;->custoEfetivoTotal:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lgig;->custoEfetivoTotal:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lgig;->dataVencimento:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lgig;->dataVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lgig;->despesaConvertida:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lgig;->despesaConvertida:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lgig;->despesaReal:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lgig;->despesaReal:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lgig;->entidade:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lgig;->entidade:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lgig;->mensagemRetorno:Ljava/lang/String;

    .line 180
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
    .line 167
    iget-object v0, p0, Lgig;->listaParcela:Ljava/util/List;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lgig;->numeroCartao:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lgig;->mensagemRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lgig;->referOper:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lgig;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lgig;->taxaJuros:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lgig;->referOper:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lgig;->tipoParcelamento:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lgig;->taxaJuros:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lgig;->valorFinanciado:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lgig;->tipoParcelamento:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lgig;->valorIOF:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lgig;->valorFinanciado:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lgig;->valorPagamento:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lgig;->valorIOF:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lgig;->valorPagamentoMinimo:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lgig;->valorPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lgig;->valorTarifa:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lgig;->valorPagamentoMinimo:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lgig;->valorTotal:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lgig;->valorTarifa:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lgig;->valorTotal:Ljava/lang/String;

    return-object v0
.end method
