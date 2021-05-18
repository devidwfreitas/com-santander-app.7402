.class public Lhjb;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private cet13:Lhja;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataSolicitacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private horaSolicitacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private prazoTotalOperacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorEmprestimo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorIOF:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorParcelaVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTotalComEncargos:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorTotalFinanciado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private vlTotalJuros:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lhjb;->dataSolicitacao:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lhja;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lhjb;->cet13:Lhja;

    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lhjb;->dataSolicitacao:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lhjb;->dataVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lhjb;->dataVencimento:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lhjb;->horaSolicitacao:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lhjb;->horaSolicitacao:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lhjb;->prazoTotalOperacao:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lhjb;->prazoTotalOperacao:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lhjb;->valorEmprestimo:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lhjb;->valorEmprestimo:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lhjb;->valorIOF:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lhjb;->valorIOF:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lhjb;->valorParcelaVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lhjb;->valorParcelaVencimento:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lhjb;->valorTotalComEncargos:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lhjb;->valorTotalComEncargos:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lhjb;->valorTotalFinanciado:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lhjb;->valorTotalFinanciado:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lhjb;->vlTotalJuros:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lhjb;->vlTotalJuros:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public k()Lhja;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lhjb;->cet13:Lhja;

    return-object v0
.end method
