.class public Lgih;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "request"
.end annotation


# instance fields
.field private agendamento:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private bandeiraCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoMoeda:Ljava/lang/String;
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

.field private dataAgendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataContabil:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataEfetivacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataPagamento:Ljava/lang/String;
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

.field private horaEfetivacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private indicadorElegibilidade:Ljava/lang/String;
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

.field private nomeClientePlasticoCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numReferDocumento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private produto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private referOper:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private subProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaJuros:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoFranquia:Ljava/lang/String;
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
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lgih;->tipoFranquia:Ljava/lang/String;

    return-object v0
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lgih;->valorFinanciado:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lgih;->tipoParcelamento:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lgih;->valorIOF:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lgih;->valorFinanciado:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lgih;->valorPagamento:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lgih;->valorIOF:Ljava/lang/String;

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lgih;->valorPagamentoMinimo:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lgih;->valorPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lgih;->valorTarifa:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lgih;->valorPagamentoMinimo:Ljava/lang/String;

    return-object v0
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lgih;->valorTotal:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lgih;->valorTarifa:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lgih;->valorTotal:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lgih;->bandeiraCartao:Ljava/lang/String;

    .line 136
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
    .line 263
    iput-object p1, p0, Lgih;->listaParcela:Ljava/util/List;

    .line 264
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lgih;->agendamento:Z

    .line 128
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lgih;->agendamento:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lgih;->bandeiraCartao:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lgih;->codigoMoeda:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lgih;->codigoMoeda:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lgih;->codigoRetorno:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lgih;->codigoRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lgih;->contratoCartao:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lgih;->contratoCartao:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lgih;->cotacaoDolar:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lgih;->cotacaoDolar:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lgih;->custoEfetivoTotal:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lgih;->custoEfetivoTotal:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lgih;->dataAgendamento:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lgih;->dataAgendamento:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lgih;->dataContabil:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lgih;->dataContabil:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lgih;->dataEfetivacao:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lgih;->dataEfetivacao:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lgih;->dataPagamento:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lgih;->dataPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lgih;->dataVencimento:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lgih;->dataVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lgih;->despesaConvertida:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lgih;->despesaConvertida:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lgih;->despesaReal:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lgih;->despesaReal:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lgih;->entidade:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lgih;->entidade:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lgih;->horaEfetivacao:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lgih;->horaEfetivacao:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lgih;->indicadorElegibilidade:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lgih;->indicadorElegibilidade:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lgih;->mensagemRetorno:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public r()Ljava/util/List;
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
    .line 259
    iget-object v0, p0, Lgih;->listaParcela:Ljava/util/List;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lgih;->nomeClientePlasticoCartao:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lgih;->mensagemRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lgih;->numReferDocumento:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lgih;->nomeClientePlasticoCartao:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lgih;->numeroCartao:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lgih;->numReferDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lgih;->produto:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lgih;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lgih;->referOper:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lgih;->produto:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lgih;->subProduto:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lgih;->referOper:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lgih;->taxaJuros:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lgih;->subProduto:Ljava/lang/String;

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lgih;->tipoFranquia:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lgih;->taxaJuros:Ljava/lang/String;

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lgih;->tipoParcelamento:Ljava/lang/String;

    .line 344
    return-void
.end method
