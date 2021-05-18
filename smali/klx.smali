.class public Lklx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "detalheList"
.end annotation


# instance fields
.field private a:Ljava/lang/Boolean;

.field private agenciaDestino:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private agenciaOrigem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private autenticacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private bancoDestino:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private canal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cliente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codNIO:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codSequencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codTabela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoBarra:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaDestino:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaOrigem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private convenio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cpfCnpjFavorecido:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataFinal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataHoraTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataInicial:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataPagamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoTipoComprovante:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private empresa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private finalidade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private horaTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private idComprovante:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeFavorecido:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private subTipoComprovante:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private textoHistorico:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoComprovante:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoContaDestino:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoContaOrigem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private titularidade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorCobrado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lklx;->cpfCnpjFavorecido:Ljava/lang/String;

    return-object v0
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lklx;->finalidade:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lklx;->finalidade:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lklx;->nomeFavorecido:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lklx;->nomeFavorecido:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lklx;->textoHistorico:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lklx;->textoHistorico:Ljava/lang/String;

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lklx;->tipoContaDestino:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lklx;->tipoContaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lklx;->titularidade:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lklx;->titularidade:Ljava/lang/String;

    return-object v0
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lklx;->convenio:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lklx;->convenio:Ljava/lang/String;

    return-object v0
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lklx;->empresa:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lklx;->empresa:Ljava/lang/String;

    return-object v0
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lklx;->numeroCartao:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lklx;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lklx;->subTipoComprovante:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lklx;->subTipoComprovante:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lklx;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lklx;->a:Ljava/lang/Boolean;

    .line 131
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lklx;->dataInicial:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lklx;->dataInicial:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lklx;->dataFinal:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lklx;->dataFinal:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lklx;->autenticacao:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lklx;->autenticacao:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lklx;->dataTransacao:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lklx;->dataTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lklx;->descricaoTipoComprovante:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lklx;->descricaoTipoComprovante:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lklx;->tipoComprovante:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lklx;->tipoComprovante:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lklx;->valorTransacao:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lklx;->valorTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lklx;->codNIO:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lklx;->codNIO:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lklx;->codSequencia:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lklx;->codSequencia:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lklx;->codTabela:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lklx;->codTabela:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lklx;->idComprovante:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lklx;->idComprovante:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lklx;->canal:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lklx;->canal:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lklx;->cliente:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lklx;->cliente:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lklx;->codigoBarra:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lklx;->codigoBarra:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lklx;->dataHoraTransacao:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lklx;->dataHoraTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lklx;->dataPagamento:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lklx;->dataPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lklx;->dataVencimento:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lklx;->dataVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lklx;->horaTransacao:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lklx;->horaTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lklx;->valorCobrado:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lklx;->valorCobrado:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lklx;->agenciaDestino:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lklx;->agenciaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lklx;->agenciaOrigem:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lklx;->agenciaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lklx;->bancoDestino:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lklx;->bancoDestino:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lklx;->contaDestino:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lklx;->contaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lklx;->contaOrigem:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lklx;->contaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lklx;->tipoContaOrigem:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lklx;->tipoContaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lklx;->cpfCnpjFavorecido:Ljava/lang/String;

    .line 339
    return-void
.end method
