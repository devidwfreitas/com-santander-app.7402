.class public Lkgl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


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

.field private connUuid:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaDebito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataAgendamentoUnico:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataCadastroAgend:Ljava/lang/String;
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

.field private horaCadastroAgend:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemAea:Ljava/lang/String;
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

.field private numeroAutenticacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroOperacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private operadoraAgencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private operadoraBanco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private operadoraConta:Ljava/lang/String;
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

.field private tipoContaDebito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tokenSessao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tokenTransacao:Ljava/lang/String;
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

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lkgl;->agenciaDebito:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lkgl;->agendamento:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lkgl;->areaCelular:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lkgl;->connUuid:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lkgl;->contaDebito:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lkgl;->dataAgendamentoUnico:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lkgl;->dataCadastroAgend:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lkgl;->dataContabil:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lkgl;->dataFim:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lkgl;->dataInicio:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lkgl;->excluirMantendoProximaRecarga:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lkgl;->horaCadastroAgend:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lkgl;->mensagemAea:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lkgl;->numCelular:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lkgl;->numeroAutenticacao:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lkgl;->numeroOperacao:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lkgl;->numProtocoloAgend:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lkgl;->operadoraAgencia:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lkgl;->operadoraBanco:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lkgl;->operadoraConta:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lkgl;->periodo:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lkgl;->periodoIndeterminado:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lkgl;->produto:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lkgl;->subProduto:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lkgl;->tipoContaDebito:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lkgl;->tokenSessao:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lkgl;->tokenTransacao:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lkgl;->valorRecarga:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lkgl;->tokenTransacao:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lkgl;->valorRecarga:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lkgl;->agenciaDebito:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lkgl;->agendamento:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lkgl;->areaCelular:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lkgl;->connUuid:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lkgl;->contaDebito:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lkgl;->dataAgendamentoUnico:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lkgl;->dataCadastroAgend:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lkgl;->dataContabil:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lkgl;->dataFim:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lkgl;->dataInicio:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lkgl;->excluirMantendoProximaRecarga:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lkgl;->horaCadastroAgend:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lkgl;->mensagemAea:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lkgl;->numCelular:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lkgl;->numeroAutenticacao:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lkgl;->numeroOperacao:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lkgl;->numProtocoloAgend:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lkgl;->operadoraAgencia:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lkgl;->operadoraBanco:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lkgl;->operadoraConta:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lkgl;->periodo:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lkgl;->periodoIndeterminado:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lkgl;->produto:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lkgl;->subProduto:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lkgl;->tipoContaDebito:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lkgl;->tokenSessao:Ljava/lang/String;

    .line 176
    return-void
.end method
