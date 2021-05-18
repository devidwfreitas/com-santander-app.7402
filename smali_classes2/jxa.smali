.class public Ljxa;
.super Lfvu;
.source "SourceFile"

# interfaces
.implements Lcom/santander/app/contacorrente/domain/SaldoDetalhado;
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0}, Lfvu;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Ljxa;->A(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private B(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    const-string p1, "0"

    .line 283
    :cond_1
    return-object p1
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Ljxa;->u:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ljxa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Ljxa;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljxa;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Ljxa;->c:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Ljxa;->d:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Ljxa;->e:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Ljxa;->f:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Ljxa;->g:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Ljxa;->h:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public getCpmfAcumulado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Ljxa;->A:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCpmfProvisionadaSobreSaldo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ljxa;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getDesbloqueio1Dia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Ljxa;->v:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesbloqueio2Dias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Ljxa;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesbloqueioMais2Dias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Ljxa;->x:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIofAcumuladosAteData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ljxa;->z:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJurosAcumuladosAteData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Ljxa;->y:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLancamentosProvisionadosCredito()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Ljxa;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLancamentosProvisionadosDebito()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ljxa;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLimiteDescricao1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ljxa;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getLimiteDescricao2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Ljxa;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getLimiteValor1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Ljxa;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLimiteValor2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Ljxa;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMensagemErro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Ljxa;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getMensagemRetorno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Ljxa;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisaoEncargos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ljxa;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoBloqueado()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ljxa;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoBloqueadoJudicial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ljxa;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoBloqueioDia()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ljxa;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoContaCorrenteContaMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljxa;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoDisponivel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ljxa;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoDisponivelContaCorrenteContaMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Ljxa;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoDisponivelTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Ljxa;->s:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoFundosComResgateAutomatico()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ljxa;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljxa;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaldoTotalContaCorrenteContaMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljxa;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Ljxa;->i:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Ljxa;->j:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Ljxa;->k:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Ljxa;->l:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Ljxa;->m:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Ljxa;->n:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Ljxa;->o:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Ljxa;->p:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Ljxa;->q:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Ljxa;->r:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Ljxa;->s:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Ljxa;->t:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Ljxa;->v:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Ljxa;->w:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Ljxa;->y:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Ljxa;->z:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Ljxa;->A:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Ljxa;->B:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Ljxa;->x:Ljava/lang/String;

    .line 269
    return-void
.end method
