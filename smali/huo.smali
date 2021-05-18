.class public Lhuo;
.super Lgnb;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field public codigoAutenticacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public dataTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public dataVencimentoPrimeiraParcela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public horaTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public numeroComprovate:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public quantidadeParcelas:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public taxaCETAno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public taxaCETMes:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public taxaJurosAnual:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public taxaJurosMensal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public valorCoberturaComSeguro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public valorIOF:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public valorParcela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lgnb;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lhuo;->codigoAutenticacao:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lhuo;->codigoAutenticacao:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lhuo;->dataTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lhuo;->dataTransacao:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lhuo;->horaTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lhuo;->horaTransacao:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lhuo;->dataVencimentoPrimeiraParcela:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lhuo;->dataVencimentoPrimeiraParcela:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lhuo;->numeroComprovate:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lhuo;->numeroComprovate:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lhuo;->quantidadeParcelas:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lhuo;->quantidadeParcelas:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lhuo;->taxaCETAno:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lhuo;->taxaCETAno:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public getMensagemErro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lgnb;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-super {p0}, Lgnb;->getFaultstring()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 168
    :cond_0
    invoke-super {p0}, Lgnb;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    invoke-super {p0}, Lgnb;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lhuo;->taxaCETMes:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lhuo;->taxaCETMes:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lhuo;->taxaJurosMensal:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lhuo;->taxaJurosMensal:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lhuo;->taxaJurosAnual:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lhuo;->taxaJurosAnual:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lhuo;->valorCoberturaComSeguro:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lhuo;->valorCoberturaComSeguro:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lhuo;->valorIOF:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lhuo;->valorIOF:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lhuo;->valorParcela:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lhuo;->valorParcela:Ljava/lang/String;

    .line 162
    return-void
.end method
