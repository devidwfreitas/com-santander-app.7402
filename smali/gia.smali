.class public Lgia;
.super Lgnb;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private cotacaoDolar:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private custoEfetivoTotal:Ljava/lang/String;
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

.field private taxaJuros:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIOF:Ljava/lang/String;
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

.field private valorTarifa:Ljava/lang/String;
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
    .line 19
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lgia;->cotacaoDolar:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lgia;->cotacaoDolar:Ljava/lang/String;

    .line 63
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
    .line 94
    iput-object p1, p0, Lgia;->listaParcela:Ljava/util/List;

    .line 95
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lgia;->dataVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lgia;->dataVencimento:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lgia;->despesaConvertida:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lgia;->despesaConvertida:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lgia;->despesaReal:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lgia;->despesaReal:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public e()Ljava/util/List;
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
    .line 90
    iget-object v0, p0, Lgia;->listaParcela:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lgia;->valorPagamentoMinimo:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lgia;->valorPagamentoMinimo:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lgia;->taxaJuros:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lgia;->taxaJuros:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lgia;->valorIOF:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lgia;->valorIOF:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lgia;->valorTarifa:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lgia;->valorTarifa:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lgia;->custoEfetivoTotal:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lgia;->custoEfetivoTotal:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lgia;->valorTotal:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lgia;->valorTotal:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lgia;->valorPagamento:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lgia;->valorPagamento:Ljava/lang/String;

    return-object v0
.end method
