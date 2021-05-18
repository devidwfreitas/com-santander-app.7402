.class public Lmje;
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
    .line 81
    iget-object v0, p0, Lmje;->agendamento:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lmje;->agendamento:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lmje;->autenticacaoBancaria:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lmje;->autenticacaoBancaria:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lmje;->dataAgendamento:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lmje;->dataAgendamento:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmje;->dataAplicacao:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lmje;->dataAplicacao:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lmje;->dataContabil:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lmje;->dataContabil:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmje;->numeroOperacao:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lmje;->numeroOperacao:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmje;->penumper:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lmje;->penumper:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lmje;->percentual:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lmje;->percentual:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lmje;->prazo:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lmje;->prazo:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmje;->produto:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lmje;->produto:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lmje;->subProduto:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lmje;->subProduto:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lmje;->taxaCDI:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lmje;->taxaCDI:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lmje;->tipoAplicacao:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lmje;->tipoAplicacao:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lmje;->tipoInteresse:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lmje;->tipoInteresse:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lmje;->valorAgendado:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lmje;->valorAgendado:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lmje;->valorAplicado:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lmje;->valorAplicado:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lmje;->valorInformado:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lmje;->valorInformado:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lmje;->valorParcial:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lmje;->valorParcial:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lmje;->valorResgate:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lmje;->valorResgate:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lmje;->valorTotal:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lmje;->valorTotal:Ljava/lang/String;

    .line 238
    return-void
.end method
