.class public Lkdk;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private codigoErro:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private contrato:Lkda;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoOperacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroSolicAporte:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tokenSessao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorAporte:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorDeRendaComAporte:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorDeRendaSemAporte:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorDeReservaComAporte:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorDeReservaSemAporte:Ljava/lang/String;
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
    .line 49
    iget-object v0, p0, Lkdk;->tokenSessao:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lkdk;->tokenSessao:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public a(Lkda;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lkdk;->contrato:Lkda;

    .line 70
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lkdk;->codigoErro:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lkdk;->codigoErro:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public c()Lkda;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lkdk;->contrato:Lkda;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lkdk;->descricaoOperacao:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lkdk;->descricaoOperacao:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lkdk;->numeroSolicAporte:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lkdk;->numeroSolicAporte:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lkdk;->valorAporte:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lkdk;->valorAporte:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lkdk;->valorDeRendaComAporte:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lkdk;->valorDeRendaComAporte:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lkdk;->valorDeRendaSemAporte:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lkdk;->valorDeRendaSemAporte:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lkdk;->valorDeReservaComAporte:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lkdk;->valorDeReservaComAporte:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lkdk;->valorDeReservaSemAporte:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lkdk;->valorDeReservaSemAporte:Ljava/lang/String;

    return-object v0
.end method
