.class public Lmix;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "entrada"
.end annotation


# instance fields
.field private agendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private autenticacaoBancaria:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataAgendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataAplicacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataContabil:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private listaEmail:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroOperacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private penumper:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private percentual:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private prazo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private produto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private subProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaCDI:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoAplicacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoInteresse:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorAgendado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorAplicado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorInformado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorParcial:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorResgate:Ljava/lang/String;
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
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmix;->codProduto:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lmix;->codProduto:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmix;->agendamento:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lmix;->agendamento:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmix;->autenticacaoBancaria:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lmix;->autenticacaoBancaria:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmix;->dataAgendamento:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lmix;->dataAgendamento:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lmix;->dataAplicacao:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lmix;->dataAplicacao:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lmix;->dataContabil:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lmix;->dataContabil:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmix;->listaEmail:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lmix;->listaEmail:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmix;->numeroOperacao:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lmix;->numeroOperacao:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmix;->penumper:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lmix;->penumper:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmix;->percentual:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lmix;->percentual:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lmix;->prazo:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lmix;->prazo:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lmix;->produto:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lmix;->produto:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lmix;->subProduto:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lmix;->subProduto:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lmix;->taxaCDI:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lmix;->taxaCDI:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lmix;->tipoAplicacao:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lmix;->tipoAplicacao:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lmix;->tipoInteresse:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lmix;->tipoInteresse:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lmix;->valorAgendado:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lmix;->valorAgendado:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lmix;->valorAplicado:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lmix;->valorAplicado:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lmix;->valorInformado:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lmix;->valorInformado:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lmix;->valorParcial:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lmix;->valorParcial:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lmix;->valorResgate:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lmix;->valorResgate:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lmix;->valorTotal:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lmix;->valorTotal:Ljava/lang/String;

    .line 260
    return-void
.end method
