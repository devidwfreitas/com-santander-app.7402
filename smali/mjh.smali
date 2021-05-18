.class public Lmjh;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private agencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoBanco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoCanal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoFormulario:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoSubProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoTerminal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoUsuario:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataInclusaoDocumento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoErro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeTabela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroConta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroVersao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private penumpe:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private sqlCode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoAceite:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoDocumento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoOperacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lmjh;->tipoOperacao:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lmjh;->tipoOperacao:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmjh;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lmjh;->agencia:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmjh;->codigoBanco:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lmjh;->codigoBanco:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmjh;->numeroConta:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lmjh;->numeroConta:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmjh;->codigoProduto:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lmjh;->codigoProduto:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lmjh;->codigoSubProduto:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lmjh;->codigoSubProduto:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lmjh;->penumpe:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lmjh;->penumpe:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmjh;->tipoDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lmjh;->tipoDocumento:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmjh;->tipoAceite:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lmjh;->tipoAceite:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmjh;->codigoFormulario:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lmjh;->codigoFormulario:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmjh;->numeroVersao:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lmjh;->numeroVersao:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lmjh;->dataInclusaoDocumento:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lmjh;->dataInclusaoDocumento:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lmjh;->codigoUsuario:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lmjh;->codigoUsuario:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lmjh;->codigoCanal:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lmjh;->codigoCanal:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lmjh;->codigoTerminal:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lmjh;->codigoTerminal:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lmjh;->codigoRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lmjh;->codigoRetorno:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lmjh;->sqlCode:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lmjh;->sqlCode:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lmjh;->descricaoErro:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lmjh;->descricaoErro:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lmjh;->nomeTabela:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lmjh;->nomeTabela:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lmjh;->mensagemRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lmjh;->mensagemRetorno:Ljava/lang/String;

    .line 236
    return-void
.end method
