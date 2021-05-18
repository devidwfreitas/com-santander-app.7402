.class public Lkgj;
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

.field public b:Ljava/lang/String;

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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lkgj;->a:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lkgj;->b:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lkgj;->agenciaDebito:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lkgj;->agendamento:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lkgj;->areaCelular:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lkgj;->connUuid:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lkgj;->contaDebito:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lkgj;->dataAgendamentoUnico:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lkgj;->dataCadastroAgend:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lkgj;->dataContabil:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lkgj;->dataFim:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lkgj;->dataInicio:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lkgj;->excluirMantendoProximaRecarga:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lkgj;->horaCadastroAgend:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lkgj;->mensagemAea:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lkgj;->numCelular:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lkgj;->numeroAutenticacao:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lkgj;->numeroOperacao:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lkgj;->numProtocoloAgend:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lkgj;->operadoraAgencia:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lkgj;->operadoraBanco:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lkgj;->operadoraConta:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lkgj;->periodo:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lkgj;->periodoIndeterminado:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lkgj;->produto:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lkgj;->subProduto:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lkgj;->tipoContaDebito:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lkgj;->tokenSessao:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lkgj;->tokenTransacao:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lkgj;->valorRecarga:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lkgj;->periodo:Ljava/lang/String;

    return-object v0
.end method

.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lkgj;->tipoContaDebito:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lkgj;->operadoraConta:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lkgj;->tokenSessao:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lkgj;->operadoraBanco:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lkgj;->tokenTransacao:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lkgj;->operadoraAgencia:Ljava/lang/String;

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lkgj;->valorRecarga:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public E()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 317
    iget-object v0, p0, Lkgj;->numCelular:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkgj;->numCelular:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkgj;->numCelular:Ljava/lang/String;

    iget-object v1, p0, Lkgj;->numCelular:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkgj;->numCelular:Ljava/lang/String;

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lkgj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lkgj;->a:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lkgj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lkgj;->b:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lkgj;->agenciaDebito:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lkgj;->agenciaDebito:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lkgj;->agendamento:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lkgj;->agendamento:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lkgj;->areaCelular:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lkgj;->areaCelular:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lkgj;->connUuid:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lkgj;->connUuid:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lkgj;->contaDebito:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lkgj;->contaDebito:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lkgj;->dataAgendamentoUnico:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lkgj;->dataAgendamentoUnico:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lkgj;->dataCadastroAgend:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lkgj;->dataCadastroAgend:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lkgj;->dataFim:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lkgj;->dataContabil:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lkgj;->dataContabil:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lkgj;->dataFim:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lkgj;->excluirMantendoProximaRecarga:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lkgj;->dataInicio:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lkgj;->dataInicio:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lkgj;->excluirMantendoProximaRecarga:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lkgj;->horaCadastroAgend:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lkgj;->horaCadastroAgend:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lkgj;->numCelular:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lkgj;->mensagemAea:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lkgj;->mensagemAea:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lkgj;->numCelular:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lkgj;->numeroAutenticacao:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lkgj;->numeroAutenticacao:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lkgj;->numProtocoloAgend:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lkgj;->numeroOperacao:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lkgj;->numeroOperacao:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lkgj;->numProtocoloAgend:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lkgj;->valorRecarga:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lkgj;->operadoraAgencia:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lkgj;->tokenTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lkgj;->operadoraBanco:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lkgj;->tokenSessao:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lkgj;->operadoraConta:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lkgj;->tipoContaDebito:Ljava/lang/String;

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lkgj;->periodo:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lkgj;->subProduto:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lkgj;->periodoIndeterminado:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lkgj;->produto:Ljava/lang/String;

    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lkgj;->produto:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lkgj;->periodoIndeterminado:Ljava/lang/String;

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lkgj;->subProduto:Ljava/lang/String;

    .line 178
    return-void
.end method
