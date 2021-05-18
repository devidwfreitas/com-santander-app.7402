.class public Lhzk;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "request"
.end annotation


# instance fields
.field private anexo1:Lhyy;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "anexo1"
        required = false
    .end annotation
.end field

.field private anexo2:Lhyy;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "anexo2"
        required = false
    .end annotation
.end field

.field private anexo3:Lhyy;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "anexo3"
        required = false
    .end annotation
.end field

.field private canalOCorrencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private classificacaoEmpresa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoMotivo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cpfCnpj:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoObservacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private identificadorProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private infoContato1:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private infoContato2:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeAssunto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeCliente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeMotivo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private produtoServico:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private sintoma:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoManifestacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tituloObservacao:Ljava/lang/String;
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
    .line 82
    iget-object v0, p0, Lhzk;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lhyy;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lhzk;->anexo1:Lhyy;

    .line 135
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lhzk;->numeroCartao:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lhzk;->canalOCorrencia:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lhyy;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lhzk;->anexo2:Lhyy;

    .line 143
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lhzk;->canalOCorrencia:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lhzk;->nomeMotivo:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lhyy;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lhzk;->anexo3:Lhyy;

    .line 151
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lhzk;->nomeMotivo:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lhzk;->produtoServico:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lhzk;->produtoServico:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lhzk;->sintoma:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lhzk;->sintoma:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lhzk;->tipoManifestacao:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lhzk;->tipoManifestacao:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public g()Lhyy;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lhzk;->anexo1:Lhyy;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lhzk;->canalOCorrencia:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public h()Lhyy;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lhzk;->anexo2:Lhyy;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lhzk;->classificacaoEmpresa:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public i()Lhyy;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lhzk;->anexo3:Lhyy;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lhzk;->cpfCnpj:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lhzk;->canalOCorrencia:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lhzk;->descricao:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lhzk;->classificacaoEmpresa:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lhzk;->identificadorProduto:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lhzk;->cpfCnpj:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lhzk;->infoContato1:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lhzk;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lhzk;->infoContato2:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lhzk;->identificadorProduto:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lhzk;->codigoMotivo:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lhzk;->infoContato1:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lhzk;->nomeCliente:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lhzk;->infoContato2:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lhzk;->nomeAssunto:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lhzk;->codigoMotivo:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lhzk;->descricaoObservacao:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lhzk;->nomeCliente:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lhzk;->tituloObservacao:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lhzk;->nomeAssunto:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lhzk;->descricaoObservacao:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lhzk;->tituloObservacao:Ljava/lang/String;

    return-object v0
.end method
