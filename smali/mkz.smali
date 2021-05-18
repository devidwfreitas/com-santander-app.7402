.class public Lmkz;
.super Lgnb;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private agenciaDestino:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private agenciaOrigem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private bancoDestino:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaDestino:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaOrigem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cpfCnpj:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataInicio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private favorecido:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private finalidade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private historico:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private ispb:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private periodicidade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private quantidadeRecorrencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoContaDestino:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoTransferencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valor:Ljava/lang/String;
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
    .line 67
    iget-object v0, p0, Lmkz;->agenciaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lmkz;->agenciaDestino:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmkz;->agenciaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lmkz;->agenciaOrigem:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmkz;->bancoDestino:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lmkz;->bancoDestino:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmkz;->contaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lmkz;->contaDestino:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmkz;->contaOrigem:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lmkz;->contaOrigem:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lmkz;->cpfCnpj:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lmkz;->cpfCnpj:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lmkz;->dataInicio:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lmkz;->dataInicio:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmkz;->favorecido:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lmkz;->favorecido:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmkz;->finalidade:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lmkz;->finalidade:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lmkz;->ispb:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lmkz;->ispb:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lmkz;->historico:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lmkz;->historico:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lmkz;->periodicidade:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lmkz;->periodicidade:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lmkz;->quantidadeRecorrencia:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lmkz;->quantidadeRecorrencia:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lmkz;->tipoContaDestino:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lmkz;->tipoContaDestino:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lmkz;->tipoTransferencia:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lmkz;->tipoTransferencia:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lmkz;->valor:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lmkz;->valor:Ljava/lang/String;

    .line 192
    return-void
.end method
