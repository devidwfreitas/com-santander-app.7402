.class public Liru;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private consultarAntecipacao13:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private consultarAntecipacaoIR:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private consultarCartoes:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private consultarCartoesBloqueados:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private consultarContasCorrentes:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private consultarEmprestimos:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private consultarFundos:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private consultarPoupanca:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private consultarRendaFixa:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private consultarRenegociacao:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private consultarSeguros:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lgoe;-><init>()V

    .line 17
    iput-boolean v0, p0, Liru;->consultarAntecipacao13:Z

    .line 20
    iput-boolean v0, p0, Liru;->consultarAntecipacaoIR:Z

    .line 22
    iput-boolean v0, p0, Liru;->consultarCartoes:Z

    .line 24
    iput-boolean v0, p0, Liru;->consultarCartoesBloqueados:Z

    .line 26
    iput-boolean v0, p0, Liru;->consultarContasCorrentes:Z

    .line 28
    iput-boolean v0, p0, Liru;->consultarEmprestimos:Z

    .line 30
    iput-boolean v0, p0, Liru;->consultarFundos:Z

    .line 32
    iput-boolean v0, p0, Liru;->consultarPoupanca:Z

    .line 34
    iput-boolean v0, p0, Liru;->consultarRendaFixa:Z

    .line 36
    iput-boolean v0, p0, Liru;->consultarSeguros:Z

    .line 38
    iput-boolean v0, p0, Liru;->consultarRenegociacao:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Liru;->consultarAntecipacao13:Z

    .line 47
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Liru;->consultarAntecipacao13:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Liru;->consultarAntecipacaoIR:Z

    .line 55
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Liru;->consultarAntecipacaoIR:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Liru;->consultarCartoes:Z

    .line 63
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Liru;->consultarCartoes:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Liru;->consultarCartoesBloqueados:Z

    .line 71
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Liru;->consultarCartoesBloqueados:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Liru;->consultarContasCorrentes:Z

    .line 79
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Liru;->consultarContasCorrentes:Z

    return v0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Liru;->consultarEmprestimos:Z

    .line 87
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Liru;->consultarEmprestimos:Z

    return v0
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Liru;->consultarFundos:Z

    .line 95
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Liru;->consultarFundos:Z

    return v0
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Liru;->consultarPoupanca:Z

    .line 103
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Liru;->consultarPoupanca:Z

    return v0
.end method

.method public i(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Liru;->consultarRendaFixa:Z

    .line 111
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Liru;->consultarRendaFixa:Z

    return v0
.end method

.method public j(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Liru;->consultarSeguros:Z

    .line 119
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Liru;->consultarSeguros:Z

    return v0
.end method

.method public k(Z)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Liru;->consultarRenegociacao:Z

    .line 127
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Liru;->consultarRenegociacao:Z

    return v0
.end method
