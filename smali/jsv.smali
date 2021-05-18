.class public Ljsv;
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
        required = false
    .end annotation
.end field

.field private dtAgendamentoYYYYMMDD:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dtVencimentoYYYYMMDD:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagAgendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numCartaoCredito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private objSerial:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private transacao:Ljava/lang/String;
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
    .line 45
    iget-object v0, p0, Ljsv;->codigoBarra:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Ljsv;->codigoBarra:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Ljsv;->dtVencimentoYYYYMMDD:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Ljsv;->dtVencimentoYYYYMMDD:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ljsv;->objSerial:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Ljsv;->objSerial:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ljsv;->numCartaoCredito:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Ljsv;->numCartaoCredito:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ljsv;->transacao:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Ljsv;->transacao:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ljsv;->valor:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Ljsv;->valor:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ljsv;->dtAgendamentoYYYYMMDD:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Ljsv;->dtAgendamentoYYYYMMDD:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ljsv;->flagAgendamento:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Ljsv;->flagAgendamento:Ljava/lang/String;

    .line 106
    return-void
.end method
