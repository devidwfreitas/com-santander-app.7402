.class public Lgio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgim;


# instance fields
.field private a:Lmip;

.field private b:Landroid/app/Activity;

.field private c:Lgin;

.field private d:Lgjr;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgin;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgio;->a:Lmip;

    .line 49
    iput-object p1, p0, Lgio;->b:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lgio;->c:Lgin;

    .line 52
    iget-object v0, p0, Lgio;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lgjn;

    invoke-direct {v0, p1}, Lgjn;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lgio;->d:Lgjr;

    .line 57
    :goto_0
    iget-object v0, p0, Lgio;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgio;->e:Z

    .line 58
    return-void

    .line 55
    :cond_0
    new-instance v0, Lgjs;

    invoke-direct {v0, p1}, Lgjs;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lgio;->d:Lgjr;

    goto :goto_0
.end method

.method private a(Lghw;Lghu;Ljava/lang/String;Ljava/lang/String;)Lghx;
    .locals 3

    .prologue
    .line 195
    invoke-static {p4}, Lnaj;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Lghx;

    invoke-direct {v1}, Lghx;-><init>()V

    .line 198
    iget-object v2, p0, Lgio;->a:Lmip;

    invoke-interface {v2}, Lmip;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lghx;->setConnUuid(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lgio;->a:Lmip;

    invoke-interface {v2}, Lmip;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lghx;->setTokenSessao(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lgio;->a:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lghx;->setTokenTransacao(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Lghu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lghx;->a(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Lghu;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lghx;->b(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, p3}, Lghx;->c(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, v0}, Lghx;->d(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lghw;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lghx;->e(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lghw;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lghx;->f(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lghw;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lghx;->g(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lghw;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lghx;->h(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lghw;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lghx;->i(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lghw;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lghx;->j(Ljava/lang/String;)V

    .line 212
    return-object v1
.end method

.method private a(Lghv;Lghu;Ljava/lang/String;Ljava/lang/String;)Lghy;
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p1}, Lghv;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {p4}, Lnaj;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v2, Lghy;

    invoke-direct {v2}, Lghy;-><init>()V

    .line 172
    iget-object v3, p0, Lgio;->a:Lmip;

    invoke-interface {v3}, Lmip;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->setConnUuid(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lgio;->a:Lmip;

    invoke-interface {v3}, Lmip;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->setTokenSessao(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lgio;->a:Lmip;

    invoke-interface {v3}, Lmip;->f()Lmir;

    move-result-object v3

    invoke-virtual {v3}, Lmir;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->setTokenTransacao(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->b(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->setAgencia(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lmzr;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->g(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Lghu;->H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->h(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lghv;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->a(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lghv;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->c(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lghv;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lghv;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->e(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lghv;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->f(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lghv;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lghy;->i(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2, p3}, Lghy;->j(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2, v1}, Lghy;->k(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lghv;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lghy;->l(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2, v0}, Lghy;->m(Ljava/lang/String;)V

    .line 190
    return-object v2
.end method

.method private a(Lghv;Lghu;)Lgih;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lgih;

    invoke-direct {v0}, Lgih;-><init>()V

    .line 228
    invoke-virtual {p2}, Lghu;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->setAgencia(Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgih;->a(Z)V

    .line 230
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lgih;->c(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->d(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Lghv;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->e(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Lghv;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->f(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lghv;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->k(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lghv;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->l(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Lghv;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->m(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lmzr;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->n(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lghv;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->a(Ljava/util/List;)V

    .line 239
    invoke-virtual {p2}, Lghu;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->t(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Lghv;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->v(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lghv;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->x(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lghv;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->z(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Lghv;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->C(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lghv;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->A(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Lghv;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->B(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lghv;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->D(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Lghv;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->E(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lghv;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->F(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lgio;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->setTokenSessao(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lgio;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->setTokenTransacao(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lgio;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgih;->setConnUuid(Ljava/lang/String;)V

    .line 253
    return-object v0
.end method

.method private a(Lghv;Lgif;)V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p1}, Lghv;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgif;

    .line 217
    invoke-virtual {v0, p2}, Lgif;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const-string v2, "true"

    invoke-virtual {v0, v2}, Lgif;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    const-string v2, "false"

    invoke-virtual {v0, v2}, Lgif;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method static synthetic a(Lgio;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lgio;->e:Z

    return v0
.end method

.method private b(Lghu;)Lgic;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lgic;

    invoke-direct {v0}, Lgic;-><init>()V

    .line 143
    iget-object v1, p0, Lgio;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgic;->setConnUuid(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lgio;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgic;->setTokenSessao(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lgio;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgic;->setTokenTransacao(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgic;->a(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgic;->setAgencia(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lmzr;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgic;->c(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lghu;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgic;->b(Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method static synthetic b(Lgio;)Lgin;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgio;->c:Lgin;

    return-object v0
.end method

.method private c(Lghu;)Lgib;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lgib;

    invoke-direct {v0}, Lgib;-><init>()V

    .line 157
    iget-object v1, p0, Lgio;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgib;->setConnUuid(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lgio;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgib;->setTokenSessao(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lgio;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgib;->setTokenTransacao(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lghu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgib;->a(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lghu;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgib;->b(Ljava/lang/String;)V

    .line 163
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lgio;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lghu;)V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lgio;->d:Lgjr;

    new-instance v2, Lgip;

    invoke-direct {v2, p0}, Lgip;-><init>(Lgio;)V

    iget-boolean v0, p0, Lgio;->e:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lgio;->c(Lghu;)Lgib;

    move-result-object v0

    .line 76
    :goto_0
    invoke-interface {v1, v2, v0}, Lgjr;->a(Lgkw;Lgoe;)V

    .line 96
    return-void

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lgio;->b(Lghu;)Lgic;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lghv;Lghu;Lgif;)V
    .locals 3

    .prologue
    .line 125
    invoke-direct {p0, p1, p3}, Lgio;->a(Lghv;Lgif;)V

    .line 126
    iget-object v0, p0, Lgio;->d:Lgjr;

    new-instance v1, Lgir;

    invoke-direct {v1, p0}, Lgir;-><init>(Lgio;)V

    .line 137
    invoke-direct {p0, p1, p2}, Lgio;->a(Lghv;Lghu;)Lgih;

    move-result-object v2

    .line 126
    invoke-interface {v0, v1, v2}, Lgjr;->c(Lgkw;Lgoe;)V

    .line 138
    return-void
.end method

.method public a(Lgnb;Lghu;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lgio;->d:Lgjr;

    new-instance v2, Lgiq;

    invoke-direct {v2, p0}, Lgiq;-><init>(Lgio;)V

    iget-boolean v0, p0, Lgio;->e:Z

    if-eqz v0, :cond_0

    check-cast p1, Lghw;

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lgio;->a(Lghw;Lghu;Ljava/lang/String;Ljava/lang/String;)Lghx;

    move-result-object v0

    .line 100
    :goto_0
    invoke-interface {v1, v2, v0}, Lgjr;->b(Lgkw;Lgoe;)V

    .line 120
    return-void

    .line 118
    :cond_0
    check-cast p1, Lghv;

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lgio;->a(Lghv;Lghu;Ljava/lang/String;Ljava/lang/String;)Lghy;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    const-string v1, "Parcelas Fixas"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v1, "Valor Parcial (Entrada + Parcelas Fixas)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-object v0
.end method
