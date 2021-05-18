.class public Lkdj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "plano"
.end annotation


# instance fields
.field private agencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private banco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private beneficiarios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkdb;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        required = false
    .end annotation
.end field

.field private coberturas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkcv;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        required = false
    .end annotation
.end field

.field private conta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataContratacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataInicioRenda:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataInicioVigencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataNascimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private diaPagamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private formaCobranca:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroBeneficio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroCertificado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private periodicidade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private situacaoPlano:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoPlano:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoRenda:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorBeneficio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorContribuicaoPremio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorSaldoBruto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lkdj;->banco:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lkdj;->banco:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkdb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    iput-object p1, p0, Lkdj;->beneficiarios:Ljava/util/List;

    .line 224
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lkdj;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lkdj;->agencia:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkcv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    iput-object p1, p0, Lkdj;->coberturas:Ljava/util/List;

    .line 232
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lkdj;->conta:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lkdj;->conta:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lkdj;->dataContratacao:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lkdj;->dataContratacao:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lkdj;->dataInicioRenda:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lkdj;->dataInicioRenda:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lkdj;->dataInicioVigencia:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lkdj;->dataInicioVigencia:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lkdj;->dataNascimento:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lkdj;->dataNascimento:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lkdj;->diaPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lkdj;->diaPagamento:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lkdj;->formaCobranca:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lkdj;->formaCobranca:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lkdj;->nomeProduto:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lkdj;->nomeProduto:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lkdj;->numeroBeneficio:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lkdj;->numeroBeneficio:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lkdj;->numeroCertificado:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lkdj;->numeroCertificado:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lkdj;->periodicidade:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lkdj;->periodicidade:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lkdj;->situacaoPlano:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lkdj;->situacaoPlano:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lkdj;->tipoPlano:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lkdj;->tipoPlano:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lkdj;->tipoRenda:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lkdj;->tipoRenda:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lkdj;->valorBeneficio:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lkdj;->valorBeneficio:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lkdj;->valorContribuicaoPremio:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lkdj;->valorContribuicaoPremio:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lkdj;->valorSaldoBruto:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lkdj;->valorSaldoBruto:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkdb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lkdj;->beneficiarios:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkcv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lkdj;->coberturas:Ljava/util/List;

    return-object v0
.end method
