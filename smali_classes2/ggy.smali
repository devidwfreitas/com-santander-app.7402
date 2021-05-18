.class public Lggy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lghc;


# instance fields
.field private a:Lmip;

.field private b:Landroid/app/Activity;

.field private c:Lghk;

.field private d:Lghd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lghd;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lggy;->b:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lggy;->d:Lghd;

    .line 46
    new-instance v0, Lghk;

    iget-object v1, p0, Lggy;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lghk;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lggy;->c:Lghk;

    .line 47
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lggy;->a:Lmip;

    .line 48
    return-void
.end method

.method static synthetic a(Lggy;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lggy;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Lfvw;Lggs;Lggx;)Lgvb;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 118
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v2, Lgky;

    const-string v3, "Titular: "

    invoke-virtual {p1}, Lfvw;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2, v5}, Lgky;->a(Z)V

    .line 123
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v2, Lgky;

    const-string v3, "Situa\u00e7\u00e3o: "

    invoke-virtual {p1}, Lfvw;->z()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v2, Lgky;

    const-string v3, "Modalidade: "

    invoke-virtual {p1}, Lfvw;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v2, Lgky;

    const-string v3, "Motivo: "

    invoke-virtual {p3}, Lggx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v2, "Comprovante - Bloqueio de Cart\u00e3o"

    invoke-virtual {v0, v2}, Lgvb;->g(Ljava/lang/String;)V

    .line 129
    const-string v2, ""

    invoke-virtual {v0, v2}, Lgvb;->e(Ljava/lang/String;)V

    .line 130
    const-string v2, ""

    invoke-virtual {v0, v2}, Lgvb;->f(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 132
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->h(Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvb;->d(Z)V

    .line 134
    const-string v1, "Bloqueio de Cart\u00e3o"

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 135
    const-string v1, "N\u00e3o foi poss\u00edvel bloquear o cart\u00e3o"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, v5}, Lgvb;->e(Z)V

    .line 138
    return-object v0
.end method

.method static synthetic a(Lggy;Lfvw;Lggs;Lggx;)Lgvb;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lggy;->a(Lfvw;Lggs;Lggx;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lggy;Lghu;Lggs;Lggx;)Lgvb;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lggy;->a(Lghu;Lggs;Lggx;)Lgvb;

    move-result-object v0

    return-object v0
.end method

.method private a(Lghu;Lggs;Lggx;)Lgvb;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p3}, Lggx;->b()I

    move-result v2

    sget-object v3, Lggw;->PERDA:Lggw;

    invoke-virtual {v3}, Lggw;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 88
    const-string v2, "shareBloqPerda"

    invoke-virtual {v0, v2}, Lgvb;->j(Ljava/lang/String;)V

    .line 92
    :goto_0
    new-instance v2, Lgky;

    const-string v3, "Titular: "

    invoke-virtual {p1}, Lghu;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, v6}, Lgky;->a(Z)V

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Lgky;

    const-string v3, "Situa\u00e7\u00e3o: "

    const-string v4, "Bloqueado"

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Lgky;

    const-string v3, "Modalidade: "

    invoke-virtual {p1}, Lghu;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Lgky;

    const-string v3, "Motivo: "

    invoke-virtual {p3}, Lggx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v2, "Comprovante - Bloqueio de Cart\u00e3o"

    invoke-virtual {v0, v2}, Lgvb;->g(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Lggs;->getAutenticacao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgvb;->e(Ljava/lang/String;)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lggs;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lggs;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgvb;->f(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 103
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->h(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v5}, Lgvb;->d(Z)V

    .line 105
    const-string v1, "Bloqueio de Cart\u00e3o"

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 106
    const-string v1, "Cart\u00e3o Bloqueado com sucesso"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lggy;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090786

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->a(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, v5}, Lgvb;->f(Z)V

    .line 111
    invoke-virtual {v0, v6}, Lgvb;->h(Z)V

    .line 114
    return-object v0

    .line 90
    :cond_0
    const-string v2, "shareBloqRoubo"

    invoke-virtual {v0, v2}, Lgvb;->j(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Lggt;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lggt;",
            ")",
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Lggt;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lggu;

    .line 193
    new-instance v3, Lghu;

    invoke-direct {v3}, Lghu;-><init>()V

    .line 194
    invoke-virtual {v0}, Lggu;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lghu;->y(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Lggu;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lghu;->b(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Lggu;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lghu;->g(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Lggu;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lghu;->q(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Lggu;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lghu;->h(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Lggu;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lghu;->r(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Lggu;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lghu;->C(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Lggu;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Final"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 203
    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lghu;->a(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Lggu;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lghu;->z(Ljava/lang/String;)V

    .line 206
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lggy;Lggt;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lggy;->a(Lggt;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lggy;)Lghd;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lggy;->d:Lghd;

    return-object v0
.end method

.method private b(Lghu;Lggx;)Lghq;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lghq;

    invoke-direct {v0}, Lghq;-><init>()V

    .line 143
    invoke-virtual {p2}, Lggx;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghq;->a(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lghu;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghq;->b(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lggy;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghq;->setConnUuid(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lggy;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghq;->setTokenSessao(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghq;->setAgencia(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghq;->setConta(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lggy;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghq;->setTokenTransacao(Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method private c()Lghr;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lghr;

    invoke-direct {v0}, Lghr;-><init>()V

    .line 156
    const-string v1, "04"

    invoke-virtual {v0, v1}, Lghr;->a(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghr;->setAgencia(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghr;->setConta(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lggy;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghr;->setConnUuid(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lggy;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghr;->setTokenSessao(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lggy;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghr;->setTokenTransacao(Ljava/lang/String;)V

    .line 163
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lggy;->c:Lghk;

    new-instance v1, Lghb;

    invoke-direct {v1, p0}, Lghb;-><init>(Lggy;)V

    .line 184
    invoke-direct {p0}, Lggy;->c()Lghr;

    move-result-object v2

    .line 169
    invoke-virtual {v0, v1, v2}, Lghk;->a(Lgkw;Lghr;)V

    .line 185
    return-void
.end method

.method public a(Lghu;Lggx;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lggy;->c:Lghk;

    new-instance v1, Lggz;

    invoke-direct {v1, p0, p1, p2}, Lggz;-><init>(Lggy;Lghu;Lggx;)V

    .line 80
    invoke-direct {p0, p1, p2}, Lggy;->b(Lghu;Lggx;)Lghq;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lghk;->a(Lgkw;Lghq;)V

    .line 81
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    new-instance v1, Lggx;

    invoke-direct {v1}, Lggx;-><init>()V

    .line 217
    sget-object v2, Lggw;->SELECIONE_MOTIVO:Lggw;

    invoke-virtual {v2}, Lggw;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lggx;->a(I)V

    .line 218
    sget-object v2, Lggw;->SELECIONE_MOTIVO:Lggw;

    invoke-virtual {v2}, Lggw;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lggx;->a(Ljava/lang/String;)V

    .line 220
    new-instance v2, Lggx;

    invoke-direct {v2}, Lggx;-><init>()V

    .line 221
    sget-object v3, Lggw;->PERDA:Lggw;

    invoke-virtual {v3}, Lggw;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lggx;->a(I)V

    .line 222
    sget-object v3, Lggw;->PERDA:Lggw;

    invoke-virtual {v3}, Lggw;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lggx;->a(Ljava/lang/String;)V

    .line 224
    new-instance v3, Lggx;

    invoke-direct {v3}, Lggx;-><init>()V

    .line 225
    sget-object v4, Lggw;->ROUBO:Lggw;

    invoke-virtual {v4}, Lggw;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lggx;->a(I)V

    .line 226
    sget-object v4, Lggw;->ROUBO:Lggw;

    invoke-virtual {v4}, Lggw;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lggx;->a(Ljava/lang/String;)V

    .line 228
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v1, p0, Lggy;->d:Lghd;

    invoke-interface {v1, v0}, Lghd;->b(Ljava/util/List;)V

    .line 233
    return-void
.end method
