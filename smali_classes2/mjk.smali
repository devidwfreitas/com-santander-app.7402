.class public Lmjk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmji;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Lmjj;

.field private c:Lmki;

.field private d:Lmip;


# direct methods
.method public constructor <init>(Lmjj;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmjk;->b:Lmjj;

    .line 37
    new-instance v0, Lmkc;

    invoke-direct {v0}, Lmkc;-><init>()V

    iput-object v0, p0, Lmjk;->c:Lmki;

    .line 38
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lmjk;->d:Lmip;

    .line 39
    iput-object p2, p0, Lmjk;->a:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method static synthetic a(Lmjk;)Lmjj;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmjk;->b:Lmjj;

    return-object v0
.end method

.method private b(Lmiv;)Lgoe;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmjk;->d:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiv;->setAgencia(Ljava/lang/String;)V

    .line 187
    const-string v0, "0033"

    invoke-virtual {p1, v0}, Lmiv;->a(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lmjk;->d:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiv;->c(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lmjk;->d:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiv;->setConnUuid(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lmjk;->d:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiv;->setTokenSessao(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lmjk;->d:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiv;->setTokenTransacao(Ljava/lang/String;)V

    .line 194
    return-object p1
.end method

.method private b(Lmje;)Lgoe;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lmjk;->d:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmje;->setAgencia(Ljava/lang/String;)V

    .line 159
    const-string v0, "false"

    invoke-virtual {p1, v0}, Lmje;->a(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lmjk;->d:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmje;->setConta(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lmjk;->d:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmje;->setConnUuid(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lmjk;->d:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmje;->setTokenSessao(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lmjk;->d:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmje;->setTokenTransacao(Ljava/lang/String;)V

    .line 166
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->b(Ljava/lang/String;)V

    .line 167
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->c(Ljava/lang/String;)V

    .line 168
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->d(Ljava/lang/String;)V

    .line 169
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->f(Ljava/lang/String;)V

    .line 170
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->g(Ljava/lang/String;)V

    .line 171
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->h(Ljava/lang/String;)V

    .line 172
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->j(Ljava/lang/String;)V

    .line 173
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->l(Ljava/lang/String;)V

    .line 174
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->m(Ljava/lang/String;)V

    .line 175
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->n(Ljava/lang/String;)V

    .line 176
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->o(Ljava/lang/String;)V

    .line 177
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->q(Ljava/lang/String;)V

    .line 178
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->r(Ljava/lang/String;)V

    .line 179
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->s(Ljava/lang/String;)V

    .line 180
    const-string v0, ""

    invoke-virtual {p1, v0}, Lmje;->t(Ljava/lang/String;)V

    .line 182
    return-object p1
.end method

.method static synthetic b(Lmjk;)Lmip;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmjk;->d:Lmip;

    return-object v0
.end method

.method static synthetic c(Lmjk;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmjk;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Lmiv;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lmjk;->c:Lmki;

    new-instance v1, Lmjm;

    invoke-direct {v1, p0}, Lmjm;-><init>(Lmjk;)V

    .line 135
    invoke-direct {p0, p1}, Lmjk;->b(Lmiv;)Lgoe;

    move-result-object v2

    .line 104
    invoke-interface {v0, v1, v2}, Lmki;->c(Lgkw;Lgoe;)V

    .line 136
    return-void
.end method

.method public a(Lmix;)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lmjk;->c:Lmki;

    new-instance v1, Lmjl;

    invoke-direct {v1, p0}, Lmjl;-><init>(Lmjk;)V

    .line 63
    invoke-virtual {p0, p1}, Lmjk;->b(Lmix;)Lmix;

    move-result-object v2

    .line 44
    invoke-interface {v0, v1, v2}, Lmki;->a(Lgkw;Lgoe;)V

    .line 64
    return-void
.end method

.method public a(Lmje;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lmjk;->c:Lmki;

    new-instance v1, Lmjn;

    invoke-direct {v1, p0}, Lmjn;-><init>(Lmjk;)V

    .line 154
    invoke-direct {p0, p1}, Lmjk;->b(Lmje;)Lgoe;

    move-result-object v2

    .line 140
    invoke-interface {v0, v1, v2}, Lmki;->d(Lgkw;Lgoe;)V

    .line 155
    return-void
.end method

.method public a(Lmjg;)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lmjk;->c:Lmki;

    new-instance v1, Lmjo;

    invoke-direct {v1, p0}, Lmjo;-><init>(Lmjk;)V

    .line 218
    invoke-virtual {p0, p1}, Lmjk;->b(Lmjg;)Lmjg;

    move-result-object v2

    .line 199
    invoke-interface {v0, v1, v2}, Lmki;->a(Lgkw;Lgoe;)V

    .line 219
    return-void
.end method

.method public b(Lmix;)Lmix;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lmix;

    invoke-direct {v0}, Lmix;-><init>()V

    .line 68
    invoke-virtual {p1}, Lmix;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmix;->m(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lmjk;->d:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmix;->setAgencia(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lmjk;->d:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmix;->setConta(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lmjk;->d:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmix;->setConnUuid(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lmjk;->d:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmix;->setTokenSessao(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lmjk;->d:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmix;->setTokenTransacao(Ljava/lang/String;)V

    .line 75
    const-string v1, "false"

    invoke-virtual {v0, v1}, Lmix;->b(Ljava/lang/String;)V

    .line 76
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->a(Ljava/lang/String;)V

    .line 77
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->c(Ljava/lang/String;)V

    .line 78
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->d(Ljava/lang/String;)V

    .line 79
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->e(Ljava/lang/String;)V

    .line 80
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->f(Ljava/lang/String;)V

    .line 81
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->g(Ljava/lang/String;)V

    .line 82
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->h(Ljava/lang/String;)V

    .line 83
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->i(Ljava/lang/String;)V

    .line 84
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->h(Ljava/lang/String;)V

    .line 85
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->j(Ljava/lang/String;)V

    .line 86
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->k(Ljava/lang/String;)V

    .line 87
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->l(Ljava/lang/String;)V

    .line 88
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->a(Ljava/lang/String;)V

    .line 89
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->n(Ljava/lang/String;)V

    .line 90
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->o(Ljava/lang/String;)V

    .line 91
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->p(Ljava/lang/String;)V

    .line 92
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->q(Ljava/lang/String;)V

    .line 93
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->r(Ljava/lang/String;)V

    .line 94
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->s(Ljava/lang/String;)V

    .line 95
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->t(Ljava/lang/String;)V

    .line 96
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->u(Ljava/lang/String;)V

    .line 97
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmix;->v(Ljava/lang/String;)V

    .line 99
    return-object v0
.end method

.method public b(Lmjg;)Lmjg;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lmjg;

    invoke-direct {v0}, Lmjg;-><init>()V

    .line 223
    invoke-virtual {p1}, Lmjg;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmjg;->setAgencia(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lmjg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmjg;->a(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lmjg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmjg;->b(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmjg;->setConnUuid(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lmjg;->getConta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmjg;->c(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmjg;->setTokenSessao(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmjg;->setTokenTransacao(Ljava/lang/String;)V

    .line 231
    return-object v0
.end method
