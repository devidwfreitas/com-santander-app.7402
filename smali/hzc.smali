.class public Lhzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private agencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
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

.field private conta:Ljava/lang/String;
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

.field private motivo:Ljava/lang/String;
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

.field private processo:Ljava/lang/String;
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

.field private tipoCaso:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lhzc;->infoContato1:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lhzc;->infoContato1:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lhzc;->infoContato2:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lhzc;->infoContato2:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lhzc;->cpfCnpj:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lhzc;->cpfCnpj:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lhzc;->nomeCliente:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lhzc;->nomeCliente:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lhzc;->nomeMotivo:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lhzc;->nomeMotivo:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lhzc;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lhzc;->descricao:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lhzc;->nomeAssunto:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lhzc;->nomeAssunto:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lhzc;->motivo:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lhzc;->motivo:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lhzc;->tipoCaso:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lhzc;->tipoCaso:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lhzc;->classificacaoEmpresa:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lhzc;->classificacaoEmpresa:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lhzc;->identificadorProduto:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lhzc;->identificadorProduto:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lhzc;->produtoServico:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lhzc;->produtoServico:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lhzc;->canalOCorrencia:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lhzc;->canalOCorrencia:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lhzc;->sintoma:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lhzc;->sintoma:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lhzc;->processo:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lhzc;->processo:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lhzc;->conta:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lhzc;->conta:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lhzc;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lhzc;->numeroCartao:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lhzc;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lhzc;->agencia:Ljava/lang/String;

    .line 213
    return-void
.end method
