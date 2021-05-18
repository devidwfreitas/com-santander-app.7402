.class public Lkla;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private autenticacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codNIO:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codSequencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codTabela:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contaCorrente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataFinal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataInicial:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private idComprovante:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private subTipoComprovante:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoComprovante:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkla;->dataInicial:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lkla;->dataInicial:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lkla;->dataFinal:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lkla;->dataFinal:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lkla;->autenticacao:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lkla;->autenticacao:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lkla;->tipoComprovante:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lkla;->tipoComprovante:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lkla;->codSequencia:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lkla;->codSequencia:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lkla;->codNIO:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lkla;->codNIO:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lkla;->codTabela:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lkla;->codTabela:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lkla;->idComprovante:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lkla;->idComprovante:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lkla;->subTipoComprovante:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lkla;->subTipoComprovante:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lkla;->contaCorrente:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lkla;->contaCorrente:Ljava/lang/String;

    .line 127
    return-void
.end method
