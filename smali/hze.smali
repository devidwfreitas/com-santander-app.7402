.class public Lhze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkz;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "motivo"
.end annotation


# instance fields
.field private canalOcorrencia:Ljava/lang/String;
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

.field private descricaoSintoma:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private familia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeExibicao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private ordem:Ljava/lang/String;
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

.field private tipoManifestacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lhze;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lhze;->descricaoSintoma:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lhze;->descricaoSintoma:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lhze;->canalOcorrencia:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lhze;->canalOcorrencia:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lhze;->classificacaoEmpresa:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lhze;->classificacaoEmpresa:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lhze;->familia:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lhze;->familia:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lhze;->codigoMotivo:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lhze;->codigoMotivo:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lhze;->nomeExibicao:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lhze;->nomeExibicao:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lhze;->ordem:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lhze;->ordem:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lhze;->processo:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lhze;->processo:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lhze;->sintoma:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lhze;->sintoma:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lhze;->produtoServico:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lhze;->produtoServico:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lhze;->tipoManifestacao:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lhze;->tipoManifestacao:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lhze;->nomeExibicao:Ljava/lang/String;

    return-object v0
.end method
