.class public Lkid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public agenciaDebito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public agendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public areaCelular:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public connUuid:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public contaDebito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public dataAgendamentoUnico:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public dataCadastroAgend:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public dataContabil:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public dataFim:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataHash:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public dataInicio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public excluirMantendoProximaRecarga:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public horaCadastroAgend:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public mensagemAea:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public numCelular:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public numProtocoloAgend:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public numeroAutenticacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public numeroOperacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public operadoraAgencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public operadoraBanco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public operadoraConta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public periodo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public periodoIndeterminado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public produto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public subProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public tipoContaDebito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public tokenSessao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public tokenTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public valorRecarga:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lkid;->dataHash:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lkid;->requestId:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lkid;->agenciaDebito:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lkid;->agendamento:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lkid;->areaCelular:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lkid;->connUuid:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lkid;->contaDebito:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lkid;->dataAgendamentoUnico:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lkid;->dataCadastroAgend:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lkid;->dataContabil:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lkid;->dataFim:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lkid;->dataInicio:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lkid;->excluirMantendoProximaRecarga:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lkid;->horaCadastroAgend:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lkid;->mensagemAea:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lkid;->numCelular:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lkid;->numeroAutenticacao:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lkid;->numeroOperacao:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lkid;->numProtocoloAgend:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lkid;->operadoraAgencia:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lkid;->operadoraBanco:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lkid;->operadoraConta:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lkid;->periodo:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lkid;->periodoIndeterminado:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lkid;->produto:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lkid;->subProduto:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lkid;->tipoContaDebito:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lkid;->tokenSessao:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lkid;->tokenTransacao:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lkid;->valorRecarga:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lkid;->periodoIndeterminado:Ljava/lang/String;

    return-object v0
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lkid;->tokenSessao:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lkid;->periodo:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lkid;->tokenTransacao:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lkid;->operadoraConta:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lkid;->valorRecarga:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 321
    iget-object v0, p0, Lkid;->numCelular:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkid;->numCelular:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkid;->numCelular:Ljava/lang/String;

    iget-object v1, p0, Lkid;->numCelular:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkid;->numCelular:Ljava/lang/String;

    goto :goto_0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lkid;->dataHash:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lkid;->requestId:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lkid;->agenciaDebito:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lkid;->a:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lkid;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lkid;->agenciaDebito:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lkid;->agendamento:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lkid;->agendamento:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lkid;->areaCelular:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lkid;->areaCelular:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lkid;->connUuid:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lkid;->connUuid:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lkid;->contaDebito:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lkid;->contaDebito:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lkid;->dataAgendamentoUnico:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lkid;->dataAgendamentoUnico:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lkid;->dataCadastroAgend:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lkid;->dataCadastroAgend:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lkid;->dataContabil:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lkid;->dataContabil:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lkid;->dataFim:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lkid;->dataFim:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lkid;->dataInicio:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lkid;->dataInicio:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lkid;->excluirMantendoProximaRecarga:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lkid;->excluirMantendoProximaRecarga:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lkid;->horaCadastroAgend:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lkid;->horaCadastroAgend:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lkid;->mensagemAea:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lkid;->mensagemAea:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lkid;->numCelular:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lkid;->numCelular:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lkid;->numeroAutenticacao:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lkid;->numeroAutenticacao:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lkid;->numProtocoloAgend:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lkid;->numeroOperacao:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lkid;->numeroOperacao:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lkid;->numProtocoloAgend:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lkid;->operadoraAgencia:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lkid;->operadoraAgencia:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lkid;->operadoraBanco:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lkid;->operadoraBanco:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lkid;->valorRecarga:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lkid;->operadoraConta:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lkid;->tokenTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lkid;->periodo:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lkid;->tokenSessao:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lkid;->periodoIndeterminado:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lkid;->tipoContaDebito:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lkid;->produto:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lkid;->subProduto:Ljava/lang/String;

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lkid;->subProduto:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lkid;->produto:Ljava/lang/String;

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lkid;->tipoContaDebito:Ljava/lang/String;

    .line 181
    return-void
.end method
