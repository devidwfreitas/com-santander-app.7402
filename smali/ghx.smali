.class public Lghx;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "request"
.end annotation


# instance fields
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

.field private numeroCartao:Ljava/lang/String;
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
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lghx;->contratoCartao:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lghx;->contratoCartao:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lghx;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lghx;->numeroCartao:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lghx;->tipoParcelamento:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lghx;->tipoParcelamento:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lghx;->valorPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lghx;->valorPagamento:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lghx;->valorPagamentoMinimo:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lghx;->valorPagamentoMinimo:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lghx;->valorTotal:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lghx;->valorTotal:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lghx;->cotacaoDolar:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lghx;->cotacaoDolar:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lghx;->dataVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lghx;->dataVencimento:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lghx;->despesaConvertida:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lghx;->despesaConvertida:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lghx;->despesaReal:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lghx;->despesaReal:Ljava/lang/String;

    .line 125
    return-void
.end method
