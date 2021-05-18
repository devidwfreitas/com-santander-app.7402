.class public Lhkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "cetIR"
.end annotation


# instance fields
.field private dataCalculo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoTaxaJuros:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private horaCalculo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private pctIofemprest:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private pctLiberadoemprest:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private pctTotaldevido:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private percentualCetano:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private percentualCetmes:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaJurosano:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaJurosmes:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoTaxaJuros:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIof:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private vlJurocalC30Dias:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private vlrLiberadoemprest:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private vlrTotaldevido:Ljava/lang/String;
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
    .line 63
    iget-object v0, p0, Lhkl;->dataCalculo:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lhkl;->dataCalculo:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lhkl;->horaCalculo:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lhkl;->horaCalculo:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lhkl;->descricaoTaxaJuros:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lhkl;->descricaoTaxaJuros:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lhkl;->pctIofemprest:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lhkl;->pctIofemprest:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lhkl;->pctLiberadoemprest:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lhkl;->pctLiberadoemprest:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lhkl;->pctTotaldevido:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lhkl;->pctTotaldevido:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lhkl;->percentualCetano:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lhkl;->percentualCetano:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lhkl;->percentualCetmes:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lhkl;->percentualCetmes:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lhkl;->taxaJurosano:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lhkl;->taxaJurosano:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lhkl;->taxaJurosmes:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lhkl;->taxaJurosmes:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lhkl;->tipoTaxaJuros:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lhkl;->tipoTaxaJuros:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lhkl;->valorIof:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lhkl;->valorIof:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lhkl;->vlJurocalC30Dias:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lhkl;->vlJurocalC30Dias:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lhkl;->vlrLiberadoemprest:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lhkl;->vlrLiberadoemprest:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lhkl;->vlrTotaldevido:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lhkl;->vlrTotaldevido:Ljava/lang/String;

    .line 180
    return-void
.end method
