.class public Ljss;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private codigoBarra:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private dtAgendamentoYYYYMMDD:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private dtVencimentoYYYYMMDD:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagAgendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private nomeCedente:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numCartaoCredito:Ljava/lang/String;
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
    .line 18
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljss;->numCartaoCredito:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Ljss;->numCartaoCredito:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljss;->valor:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Ljss;->valor:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Ljss;->dtVencimentoYYYYMMDD:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Ljss;->dtVencimentoYYYYMMDD:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljss;->codigoBarra:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Ljss;->codigoBarra:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljss;->dtAgendamentoYYYYMMDD:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Ljss;->dtAgendamentoYYYYMMDD:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ljss;->flagAgendamento:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Ljss;->flagAgendamento:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ljss;->nomeCedente:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Ljss;->nomeCedente:Ljava/lang/String;

    .line 95
    return-void
.end method
