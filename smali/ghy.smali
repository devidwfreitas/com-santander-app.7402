.class public Lghy;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "request"
.end annotation


# instance fields
.field private agendamento:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoRetorno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contratoCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cotacaoDolar:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private despesaConvertida:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private despesaReal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private entidade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private referOper:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoParcelamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorPagamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorPagamentoMinimo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTotal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lghy;->codigoRetorno:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lghy;->agendamento:Z

    .line 65
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lghy;->agendamento:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lghy;->codigoRetorno:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lghy;->contratoCartao:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lghy;->contratoCartao:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lghy;->cotacaoDolar:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lghy;->cotacaoDolar:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lghy;->dataVencimento:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lghy;->dataVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lghy;->despesaConvertida:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lghy;->despesaConvertida:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lghy;->despesaReal:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lghy;->despesaReal:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lghy;->entidade:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lghy;->entidade:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lghy;->numeroCartao:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lghy;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lghy;->referOper:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lghy;->referOper:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lghy;->tipoParcelamento:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lghy;->tipoParcelamento:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lghy;->valorPagamento:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lghy;->valorPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lghy;->valorPagamentoMinimo:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lghy;->valorPagamentoMinimo:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lghy;->valorTotal:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lghy;->valorTotal:Ljava/lang/String;

    return-object v0
.end method
