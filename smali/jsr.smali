.class public Ljsr;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "pagamentoResponse"
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;"
        }
    .end annotation
.end field

.field private agencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private codigoBarra:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private conta:Ljava/lang/String;
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

.field private flagDtVencimento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagEditaValor:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagFavorecido:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagOfertaDebitoAutomatico:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private flagPagamentoCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private listaFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        name = "fields"
        required = false
    .end annotation
.end field

.field private nomeConvenio:Ljava/lang/String;
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

.field private valorTaxaCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljsr;->flagAgendamento:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Ljsr;->flagAgendamento:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    iput-object p1, p0, Ljsr;->listaFields:Ljava/util/ArrayList;

    .line 186
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    iput-object p1, p0, Ljsr;->a:Ljava/util/HashMap;

    .line 242
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ljsr;->conta:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Ljsr;->conta:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljsr;->agencia:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Ljsr;->agencia:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ljsr;->numCartaoCredito:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Ljsr;->numCartaoCredito:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ljsr;->codigoBarra:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Ljsr;->codigoBarra:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ljsr;->flagEditaValor:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Ljsr;->flagEditaValor:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ljsr;->nomeConvenio:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Ljsr;->nomeConvenio:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ljsr;->transacao:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Ljsr;->transacao:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ljsr;->flagPagamentoCartao:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Ljsr;->flagPagamentoCartao:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Ljsr;->valorTaxaCartao:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Ljsr;->valorTaxaCartao:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Ljsr;->valor:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Ljsr;->valor:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Ljsr;->objSerial:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Ljsr;->objSerial:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Ljsr;->listaFields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Ljsr;->flagOfertaDebitoAutomatico:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Ljsr;->flagOfertaDebitoAutomatico:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Ljsr;->b:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Ljsr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Ljsr;->flagDtVencimento:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Ljsr;->flagDtVencimento:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Ljsr;->dtVencimentoYYYYMMDD:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Ljsr;->dtVencimentoYYYYMMDD:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Ljsr;->flagFavorecido:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Ljsr;->flagFavorecido:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Ljsr;->dtAgendamentoYYYYMMDD:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Ljsr;->dtAgendamentoYYYYMMDD:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/santander/app/components/model/ListValueString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Ljsr;->a:Ljava/util/HashMap;

    return-object v0
.end method
