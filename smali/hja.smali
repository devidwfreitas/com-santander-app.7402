.class public Lhja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "cet13"
.end annotation


# instance fields
.field private cetAnual:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cetMensal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataHora:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataPrimeiroVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataUltimoVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoTaxa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private percentualContratacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private percentualIOF:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private percentualLiberado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadeParcelas:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaJurosAnual:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaJurosMensal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoTaxa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorContratacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIOF:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorLiberado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorParcelas:Ljava/lang/String;
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
    .line 69
    iget-object v0, p0, Lhja;->cetAnual:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lhja;->cetAnual:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lhja;->cetMensal:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lhja;->cetMensal:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lhja;->descricaoTaxa:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lhja;->descricaoTaxa:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lhja;->taxaJurosAnual:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lhja;->taxaJurosAnual:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lhja;->taxaJurosMensal:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lhja;->taxaJurosMensal:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lhja;->tipoTaxa:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lhja;->tipoTaxa:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lhja;->dataHora:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lhja;->dataHora:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lhja;->dataPrimeiroVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lhja;->dataPrimeiroVencimento:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lhja;->dataUltimoVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lhja;->dataUltimoVencimento:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lhja;->percentualContratacao:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lhja;->percentualContratacao:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lhja;->percentualIOF:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lhja;->percentualIOF:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lhja;->percentualLiberado:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lhja;->percentualLiberado:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lhja;->quantidadeParcelas:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lhja;->quantidadeParcelas:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lhja;->valorContratacao:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lhja;->valorContratacao:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lhja;->valorIOF:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lhja;->valorIOF:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lhja;->valorLiberado:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lhja;->valorLiberado:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lhja;->valorParcelas:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lhja;->valorParcelas:Ljava/lang/String;

    .line 202
    return-void
.end method
