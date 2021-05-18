.class public Lmlq;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
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

.field private agendamento:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private autorizado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private bancoDestino:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codNSU:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoMensagemSPB:Ljava/lang/String;
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

.field private cpfFavorecido:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataMovimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dtAgendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private especieConta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private historico:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private indicadorMesmoTitular:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeFavorecido:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeOrigem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroDocumento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private periodicidade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadeProgramacoes:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoContaDe:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoContaPara:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoTransferencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private transferenciaProgramada:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valor:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmlq;->agenciaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lmlq;->agenciaDestino:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lmlq;->agendamento:Z

    .line 114
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmlq;->agenciaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lmlq;->agenciaOrigem:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 241
    iput-boolean p1, p0, Lmlq;->transferenciaProgramada:Z

    .line 242
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lmlq;->bancoDestino:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lmlq;->agendamento:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmlq;->bancoDestino:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lmlq;->codNSU:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmlq;->codNSU:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lmlq;->contaDestino:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lmlq;->contaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lmlq;->contaOrigem:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lmlq;->contaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lmlq;->cpfFavorecido:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lmlq;->cpfFavorecido:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lmlq;->dtAgendamento:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lmlq;->dtAgendamento:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lmlq;->especieConta:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lmlq;->especieConta:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lmlq;->historico:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lmlq;->historico:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lmlq;->nomeFavorecido:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmlq;->nomeFavorecido:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lmlq;->numeroDocumento:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lmlq;->numeroDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lmlq;->periodicidade:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lmlq;->periodicidade:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lmlq;->quantidadeProgramacoes:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lmlq;->quantidadeProgramacoes:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lmlq;->tipoContaDe:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lmlq;->tipoContaDe:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lmlq;->tipoContaPara:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lmlq;->tipoContaPara:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lmlq;->tipoTransferencia:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lmlq;->tipoTransferencia:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lmlq;->valor:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lmlq;->dataMovimento:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lmlq;->transferenciaProgramada:Z

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lmlq;->valor:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lmlq;->nomeOrigem:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lmlq;->dataMovimento:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lmlq;->indicadorMesmoTitular:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lmlq;->nomeOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lmlq;->autorizado:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lmlq;->indicadorMesmoTitular:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lmlq;->codigoMensagemSPB:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lmlq;->autorizado:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lmlq;->codigoMensagemSPB:Ljava/lang/String;

    return-object v0
.end method
