.class public Lklv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "responseDTO"
.end annotation


# instance fields
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

.field private codigoBarra:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoISPB:Ljava/lang/String;
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

.field private dataHoraTransacao:Ljava/lang/String;
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

.field private empresa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private favorecido:Ljava/lang/String;
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

.field private ispb:Ljava/lang/String;
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

.field private numeroTelefone:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private operadora:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private protocoloAutorizado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private protocoloOperadora:Ljava/lang/String;
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
    .line 332
    iget-object v0, p0, Lklv;->tipoComprovante:Ljava/lang/String;

    return-object v0
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lklv;->tipoComprovante:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lklv;->tipoContaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lklv;->tipoContaOrigem:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lklv;->cpfCnpjFavorecido:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lklv;->cpfCnpjFavorecido:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lklv;->finalidade:Ljava/lang/String;

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lklv;->finalidade:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lklv;->idComprovante:Ljava/lang/String;

    return-object v0
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lklv;->idComprovante:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lklv;->tipoContaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lklv;->tipoContaDestino:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lklv;->titularidade:Ljava/lang/String;

    return-object v0
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lklv;->titularidade:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lklv;->dataVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lklv;->dataVencimento:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lklv;->cliente:Ljava/lang/String;

    return-object v0
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lklv;->cliente:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lklv;->protocoloOperadora:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lklv;->protocoloOperadora:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lklv;->codigoISPB:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lklv;->codigoISPB:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lklv;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lklv;->numeroCartao:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lklv;->valorCobrado:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lklv;->valorCobrado:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lklv;->favorecido:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lklv;->favorecido:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lklv;->ispb:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lklv;->ispb:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lklv;->numeroTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lklv;->numeroTransacao:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lklv;->protocoloAutorizado:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lklv;->protocoloAutorizado:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lklv;->numeroTelefone:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lklv;->numeroTelefone:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lklv;->operadora:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lklv;->operadora:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lklv;->autenticacao:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lklv;->autenticacao:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lklv;->canal:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lklv;->canal:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lklv;->codigoBarra:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lklv;->codigoBarra:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lklv;->convenio:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lklv;->convenio:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lklv;->dataPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lklv;->dataPagamento:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lklv;->dataTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lklv;->dataTransacao:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lklv;->empresa:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lklv;->empresa:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lklv;->horaTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lklv;->horaTransacao:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lklv;->valorTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lklv;->valorTransacao:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lklv;->agenciaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lklv;->agenciaDestino:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lklv;->agenciaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lklv;->agenciaOrigem:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lklv;->bancoDestino:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lklv;->bancoDestino:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lklv;->contaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lklv;->contaDestino:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lklv;->contaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lklv;->contaOrigem:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lklv;->dataHoraTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lklv;->dataHoraTransacao:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lklv;->nomeFavorecido:Ljava/lang/String;

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lklv;->nomeFavorecido:Ljava/lang/String;

    .line 329
    return-void
.end method
