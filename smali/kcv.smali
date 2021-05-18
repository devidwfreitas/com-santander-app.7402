.class public Lkcv;
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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lkcv;->banco:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lkcv;->banco:Ljava/lang/String;

    .line 68
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
    .line 219
    iput-object p1, p0, Lkcv;->beneficiarios:Ljava/util/List;

    .line 220
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lkcv;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lkcv;->agencia:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lkcv;->conta:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lkcv;->conta:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lkcv;->dataContratacao:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lkcv;->dataContratacao:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lkcv;->dataInicioRenda:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lkcv;->dataInicioRenda:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lkcv;->dataInicioVigencia:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lkcv;->dataInicioVigencia:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lkcv;->dataNascimento:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lkcv;->dataNascimento:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lkcv;->diaPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lkcv;->diaPagamento:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lkcv;->formaCobranca:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lkcv;->formaCobranca:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lkcv;->nomeProduto:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lkcv;->nomeProduto:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lkcv;->numeroBeneficio:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lkcv;->numeroBeneficio:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lkcv;->numeroCertificado:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lkcv;->numeroCertificado:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lkcv;->periodicidade:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lkcv;->periodicidade:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lkcv;->situacaoPlano:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lkcv;->situacaoPlano:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lkcv;->tipoPlano:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lkcv;->tipoPlano:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lkcv;->tipoRenda:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lkcv;->tipoRenda:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lkcv;->valorBeneficio:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lkcv;->valorBeneficio:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lkcv;->valorContribuicaoPremio:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lkcv;->valorContribuicaoPremio:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lkcv;->valorSaldoBruto:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lkcv;->valorSaldoBruto:Ljava/lang/String;

    .line 212
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
    .line 215
    iget-object v0, p0, Lkcv;->beneficiarios:Ljava/util/List;

    return-object v0
.end method
