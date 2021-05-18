.class public Lgie;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "request"
.end annotation


# instance fields
.field private contrato:Ljava/lang/String;
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

.field private listaParcela:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgif;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
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
    .line 18
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lgie;->contrato:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lgie;->contrato:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgif;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Lgie;->listaParcela:Ljava/util/List;

    .line 150
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lgie;->contratoCartao:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lgie;->contratoCartao:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgie;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lgie;->numeroCartao:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lgie;->cotacaoDolar:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lgie;->cotacaoDolar:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lgie;->dataVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lgie;->dataVencimento:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lgie;->despesaConvertida:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lgie;->despesaConvertida:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lgie;->despesaReal:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lgie;->despesaReal:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lgie;->tipoParcelamento:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lgie;->tipoParcelamento:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lgie;->valorPagamento:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lgie;->valorPagamento:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lgie;->valorPagamentoMinimo:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lgie;->valorPagamentoMinimo:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lgie;->valorTotal:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lgie;->valorTotal:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgif;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lgie;->listaParcela:Ljava/util/List;

    return-object v0
.end method
