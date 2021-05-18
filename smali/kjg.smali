.class public Lkjg;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private agenciaDebito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

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

.field private codigoRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private confirmarRecargar:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaDebito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataContabil:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataFim:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataInicio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private excluirMantendoProximaRecarga:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemAEA:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numCelular:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroOperacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private periodoIndeterminado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private produto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private subProduto:Ljava/lang/String;
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
    invoke-direct {p0}, Lgnb;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lkjg;->agenciaDebito:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lkjg;->agendamento:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lkjg;->areaCelular:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lkjg;->codigoRetorno:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lkjg;->contaDebito:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lkjg;->dataContabil:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lkjg;->dataFim:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lkjg;->dataInicio:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lkjg;->excluirMantendoProximaRecarga:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lkjg;->numCelular:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lkjg;->numeroOperacao:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lkjg;->periodoIndeterminado:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lkjg;->produto:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lkjg;->subProduto:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lkjg;->valorRecarga:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lkjg;->confirmarRecargar:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lkjg;->mensagemAEA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lkjg;->mensagemAEA:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lkjg;->agenciaDebito:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lkjg;->agendamento:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lkjg;->areaCelular:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lkjg;->codigoRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lkjg;->contaDebito:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lkjg;->dataContabil:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lkjg;->dataFim:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lkjg;->dataInicio:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lkjg;->excluirMantendoProximaRecarga:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lkjg;->numCelular:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lkjg;->numeroOperacao:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lkjg;->periodoIndeterminado:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lkjg;->produto:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lkjg;->subProduto:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lkjg;->valorRecarga:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lkjg;->confirmarRecargar:Ljava/lang/String;

    return-object v0
.end method
