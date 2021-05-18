.class public Lkbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "listaDispositivos"
.end annotation


# instance fields
.field private apelido:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private autenticacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoIMEI:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataDesbloqueio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataHoraTransacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataInclusao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoStatus:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoTipoDispositivo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoDispositivo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lkbq;->autenticacao:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lkbq;->apelido:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lkbq;->apelido:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lkbq;->codigoIMEI:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lkbq;->codigoIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lkbq;->dataDesbloqueio:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lkbq;->dataDesbloqueio:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lkbq;->dataInclusao:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lkbq;->dataInclusao:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lkbq;->status:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lkbq;->status:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lkbq;->tipoDispositivo:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lkbq;->tipoDispositivo:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lkbq;->autenticacao:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lkbq;->dataHoraTransacao:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lkbq;->dataHoraTransacao:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lkbq;->descricaoStatus:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lkbq;->descricaoStatus:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lkbq;->descricaoTipoDispositivo:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lkbq;->descricaoTipoDispositivo:Ljava/lang/String;

    .line 126
    return-void
.end method
