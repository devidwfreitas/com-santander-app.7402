.class public Lkgm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "programacoesRecarga"
.end annotation


# instance fields
.field private a:Z

.field private agendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private areaCelular:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoCanalProgramacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoConvenio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataCadastroAgend:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataFinalProgramacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataInicioProgramacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataProximaParcela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private diaCadastroProgramacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private excluirMantendoProximaRecarga:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private horaCadastroAgend:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private indicadorAdesaoEnvioSMS:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numCelular:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numProtocoloAgend:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroContaCorrente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private operadora:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private periodo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private periodoIndeterminado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private situacaoProgramacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private textoDescrProgRec:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorRecarga:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lkgm;->agendamento:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lkgm;->areaCelular:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lkgm;->codigoCanalProgramacao:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lkgm;->codigoConvenio:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lkgm;->dataCadastroAgend:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lkgm;->dataFinalProgramacao:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lkgm;->dataInicioProgramacao:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lkgm;->dataProximaParcela:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lkgm;->diaCadastroProgramacao:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lkgm;->excluirMantendoProximaRecarga:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lkgm;->horaCadastroAgend:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lkgm;->indicadorAdesaoEnvioSMS:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lkgm;->numCelular:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lkgm;->numProtocoloAgend:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lkgm;->numeroContaCorrente:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lkgm;->operadora:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lkgm;->periodo:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lkgm;->periodoIndeterminado:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lkgm;->situacaoProgramacao:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lkgm;->textoDescrProgRec:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lkgm;->valorRecarga:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lkgm;->agendamento:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lkgm;->agendamento:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 236
    iput-boolean p1, p0, Lkgm;->a:Z

    .line 237
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lkgm;->areaCelular:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lkgm;->areaCelular:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lkgm;->codigoCanalProgramacao:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lkgm;->codigoCanalProgramacao:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lkgm;->codigoConvenio:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lkgm;->codigoConvenio:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lkgm;->dataCadastroAgend:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lkgm;->dataCadastroAgend:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lkgm;->dataFinalProgramacao:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lkgm;->dataFinalProgramacao:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lkgm;->dataInicioProgramacao:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lkgm;->dataInicioProgramacao:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lkgm;->dataProximaParcela:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lkgm;->dataProximaParcela:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lkgm;->diaCadastroProgramacao:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lkgm;->diaCadastroProgramacao:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lkgm;->excluirMantendoProximaRecarga:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lkgm;->excluirMantendoProximaRecarga:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lkgm;->horaCadastroAgend:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lkgm;->horaCadastroAgend:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lkgm;->indicadorAdesaoEnvioSMS:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lkgm;->indicadorAdesaoEnvioSMS:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lkgm;->numCelular:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lkgm;->numCelular:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lkgm;->numProtocoloAgend:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lkgm;->numProtocoloAgend:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lkgm;->numeroContaCorrente:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lkgm;->numeroContaCorrente:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lkgm;->operadora:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lkgm;->operadora:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lkgm;->periodo:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lkgm;->periodo:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lkgm;->periodoIndeterminado:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lkgm;->periodoIndeterminado:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lkgm;->situacaoProgramacao:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lkgm;->situacaoProgramacao:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lkgm;->textoDescrProgRec:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lkgm;->textoDescrProgRec:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lkgm;->valorRecarga:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lkgm;->valorRecarga:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lkgm;->a:Z

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 240
    iget-object v0, p0, Lkgm;->numCelular:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkgm;->numCelular:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkgm;->numCelular:Ljava/lang/String;

    iget-object v1, p0, Lkgm;->numCelular:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkgm;->numCelular:Ljava/lang/String;

    goto :goto_0
.end method
