.class public Lmja;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "entrada"
.end annotation


# instance fields
.field private agendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private autenticacaoBancaria:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataAgendamento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataAplicacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataContabil:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private listaEmail:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroOperacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private penumper:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private percentual:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private prazo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private produto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private subProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private taxaCDI:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoAplicacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipoInteresse:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorAgendado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorAplicado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorInformado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorParcial:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorResgate:Ljava/lang/String;
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
    .line 85
    iget-object v0, p0, Lmja;->agendamento:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lmja;->agendamento:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmja;->autenticacaoBancaria:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lmja;->autenticacaoBancaria:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmja;->dataAgendamento:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lmja;->dataAgendamento:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmja;->dataAplicacao:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lmja;->dataAplicacao:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmja;->dataContabil:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lmja;->dataContabil:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lmja;->listaEmail:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lmja;->listaEmail:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lmja;->numeroOperacao:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lmja;->numeroOperacao:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lmja;->percentual:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lmja;->percentual:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lmja;->penumper:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lmja;->penumper:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lmja;->prazo:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lmja;->prazo:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lmja;->produto:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lmja;->produto:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lmja;->subProduto:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lmja;->subProduto:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lmja;->taxaCDI:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lmja;->taxaCDI:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lmja;->tipoAplicacao:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lmja;->tipoAplicacao:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lmja;->tipoInteresse:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lmja;->tipoInteresse:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lmja;->valorAgendado:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lmja;->valorAgendado:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lmja;->valorAplicado:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lmja;->valorAplicado:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lmja;->valorInformado:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lmja;->valorInformado:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lmja;->valorParcial:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lmja;->valorParcial:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lmja;->valorTotal:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lmja;->valorTotal:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lmja;->valorResgate:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lmja;->valorResgate:Ljava/lang/String;

    .line 250
    return-void
.end method
