.class public Lgaq;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private agenciaDebito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private agenciaDestino:Ljava/lang/String;
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

.field private cidadeDestino:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoMoeda:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoMoedaLocal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoNatureza:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoPais:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoSwift:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoTaxaMoeda:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaDebito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaDestino:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataDebito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataEnvio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoMotivo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private documentoCliente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private moedaEstrangeira:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private moedaSantander:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeBeneficiario:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeCliente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomePais:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private observacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private segmentoCliente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private telefone:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valor:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorCorrespondente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIR:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIof:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorRespostaMotivo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTarifaContrato:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTaxaCambial:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTotal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorVET:Ljava/lang/String;
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
    .line 332
    iget-object v0, p0, Lgaq;->telefone:Ljava/lang/String;

    return-object v0
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lgaq;->valor:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lgaq;->valor:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lgaq;->valorCorrespondente:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lgaq;->valorCorrespondente:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lgaq;->valorIR:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lgaq;->valorIR:Ljava/lang/String;

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lgaq;->valorIof:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lgaq;->valorIof:Ljava/lang/String;

    return-object v0
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lgaq;->valorTarifaContrato:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lgaq;->valorTarifaContrato:Ljava/lang/String;

    return-object v0
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lgaq;->valorTaxaCambial:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lgaq;->valorTaxaCambial:Ljava/lang/String;

    return-object v0
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lgaq;->valorTotal:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lgaq;->valorTotal:Ljava/lang/String;

    return-object v0
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lgaq;->valorVET:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lgaq;->valorVET:Ljava/lang/String;

    return-object v0
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lgaq;->a:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lgaq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Lgaq;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgaq;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lgaq;->moedaSantander:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lgaq;->moedaSantander:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lgaq;->moedaEstrangeira:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lgaq;->moedaEstrangeira:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lgaq;->nomePais:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lgaq;->a()Lgaq;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lgaq;->nomePais:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lgaq;->descricaoMotivo:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lgaq;->descricaoMotivo:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lgaq;->valorRespostaMotivo:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lgaq;->valorRespostaMotivo:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lgaq;->agenciaDebito:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lgaq;->agenciaDebito:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lgaq;->agenciaDestino:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lgaq;->agenciaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lgaq;->autenticacao:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lgaq;->autenticacao:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lgaq;->bancoDestino:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lgaq;->bancoDestino:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lgaq;->cidadeDestino:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lgaq;->cidadeDestino:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lgaq;->codigoMoeda:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lgaq;->codigoMoeda:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lgaq;->codigoMoedaLocal:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lgaq;->codigoMoedaLocal:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lgaq;->codigoNatureza:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lgaq;->codigoNatureza:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lgaq;->codigoPais:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lgaq;->codigoPais:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lgaq;->codigoSwift:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lgaq;->codigoSwift:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lgaq;->codigoTaxaMoeda:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lgaq;->codigoTaxaMoeda:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lgaq;->contaDebito:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lgaq;->contaDebito:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lgaq;->contaDestino:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lgaq;->contaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lgaq;->dataDebito:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lgaq;->dataDebito:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lgaq;->dataEnvio:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lgaq;->dataEnvio:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lgaq;->documentoCliente:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lgaq;->documentoCliente:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lgaq;->nomeBeneficiario:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lgaq;->nomeBeneficiario:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lgaq;->nomeCliente:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lgaq;->nomeCliente:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lgaq;->observacao:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lgaq;->observacao:Ljava/lang/String;

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lgaq;->segmentoCliente:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lgaq;->segmentoCliente:Ljava/lang/String;

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lgaq;->telefone:Ljava/lang/String;

    .line 337
    return-void
.end method
