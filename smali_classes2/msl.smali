.class Lmsl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmsi;


# instance fields
.field private a:Lmqn;

.field private b:Lmiq;

.field private c:Lmlq;

.field private d:Lmlp;

.field private e:Lmrp;

.field private f:Lmrk;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lmqn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmqn;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lmsl;->a:Lmqn;

    .line 34
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lmsl;->b:Lmiq;

    .line 35
    return-void
.end method

.method static synthetic a(Lmsl;Lmlp;)Lmlp;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lmsl;->d:Lmlp;

    return-object p1
.end method

.method private a(Lmrp;)Lmlq;
    .locals 5

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 39
    new-instance v1, Lmlq;

    invoke-direct {v1}, Lmlq;-><init>()V

    .line 40
    iget-object v0, p0, Lmsl;->b:Lmiq;

    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->setConnUuid(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lmsl;->b:Lmiq;

    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->setTokenSessao(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lmsl;->b:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->setTokenTransacao(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lmrp;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TEF"

    :goto_0
    invoke-virtual {v1, v0}, Lmlq;->q(Ljava/lang/String;)V

    .line 46
    const-string v0, "CC"

    invoke-virtual {v1, v0}, Lmlq;->o(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lmsl;->b:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->b(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lmsl;->b:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->f(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lmsl;->b:Lmiq;

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->t(Ljava/lang/String;)V

    .line 51
    const-string v0, "CC"

    invoke-virtual {v1, v0}, Lmlq;->p(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lmrp;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->c(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lmrp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->a(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lmrp;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[^0-9]+"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    .line 55
    invoke-static {v0, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->e(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lmrp;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lmrp;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnai;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->g(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lmrp;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->k(Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {v1, v4}, Lmlq;->b(Z)V

    .line 64
    const-string v0, ""

    invoke-virtual {v1, v0}, Lmlq;->n(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v4}, Lmlq;->a(Z)V

    .line 66
    const-string v0, ""

    invoke-virtual {v1, v0}, Lmlq;->m(Ljava/lang/String;)V

    .line 67
    const-string v0, ""

    invoke-virtual {v1, v0}, Lmlq;->j(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lmrp;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlq;->r(Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lmsl;->e:Lmrp;

    .line 73
    return-object v1

    .line 44
    :cond_1
    const-string v0, "TED"

    goto/16 :goto_0
.end method

.method private a(Lmlp;)Lmrk;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lmsl;->e:Lmrp;

    invoke-virtual {v0}, Lmrp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmsl;->d:Lmlp;

    .line 174
    invoke-virtual {v0}, Lmlp;->b()Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    invoke-virtual {p1, v0}, Lmlp;->b(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lmrl;

    iget-object v1, p0, Lmsl;->c:Lmlq;

    iget-object v2, p0, Lmsl;->e:Lmrp;

    invoke-direct {v0, v1, p1, v2}, Lmrl;-><init>(Lmlq;Lmlp;Lmrp;)V

    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Lmsl;->e:Lmrp;

    invoke-virtual {v0}, Lmrp;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lmsl;)Lmrk;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmsl;->f:Lmrk;

    return-object v0
.end method

.method static synthetic a(Lmsl;Lmrk;)Lmrk;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lmsl;->f:Lmrk;

    return-object p1
.end method

.method private a(Lmsk;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lmsl;->a:Lmqn;

    new-instance v1, Lmsm;

    invoke-direct {v1, p0, p1}, Lmsm;-><init>(Lmsl;Lmsk;)V

    iget-object v2, p0, Lmsl;->c:Lmlq;

    invoke-virtual {v0, v1, v2}, Lmqn;->a(Lgkw;Lmlq;)V

    .line 115
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PZE5618"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PZE5619"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lmsl;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lmsl;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lmsl;Lmlp;)Lmrk;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lmsl;->a(Lmlp;)Lmrk;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PZE1010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BGE0002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lmsl;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lmsl;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lmrp;Lmsk;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lmsl;->a(Lmrp;)Lmlq;

    move-result-object v0

    iput-object v0, p0, Lmsl;->c:Lmlq;

    .line 79
    invoke-direct {p0, p2}, Lmsl;->a(Lmsk;)V

    .line 80
    return-void
.end method

.method public a(Lmsj;)V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lmsl;->c:Lmlq;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {p1, v0}, Lmsj;->a(Ljava/lang/Exception;)V

    .line 160
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lmsl;->c:Lmlq;

    iget-object v1, p0, Lmsl;->b:Lmiq;

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->setTokenTransacao(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lmsl;->c:Lmlq;

    iget-object v1, p0, Lmsl;->d:Lmlp;

    invoke-virtual {v1}, Lmlp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->d(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lmsl;->c:Lmlq;

    iget-object v1, p0, Lmsl;->d:Lmlp;

    invoke-virtual {v1}, Lmlp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->s(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lmsl;->c:Lmlq;

    iget-object v1, p0, Lmsl;->d:Lmlp;

    invoke-virtual {v1}, Lmlp;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->l(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lmsl;->c:Lmlq;

    iget-object v1, p0, Lmsl;->d:Lmlp;

    invoke-virtual {v1}, Lmlp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->i(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lmsl;->c:Lmlq;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Lmlq;->v(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lmsl;->c:Lmlq;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Lmlq;->u(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lmsl;->d:Lmlp;

    invoke-virtual {v0}, Lmlp;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lmsl;->c:Lmlq;

    iget-object v1, p0, Lmsl;->d:Lmlp;

    invoke-virtual {v1}, Lmlp;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlq;->k(Ljava/lang/String;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lmsl;->a:Lmqn;

    new-instance v1, Lmsn;

    invoke-direct {v1, p0, p1}, Lmsn;-><init>(Lmsl;Lmsj;)V

    iget-object v2, p0, Lmsl;->c:Lmlq;

    invoke-virtual {v0, v1, v2}, Lmqn;->b(Lgkw;Lmlq;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lmsl;->c:Lmlq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmsl;->c:Lmlq;

    invoke-virtual {v0}, Lmlq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lmrk;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lmsl;->f:Lmrk;

    return-object v0
.end method

.method public b(Lmrp;Lmsk;)V
    .locals 4

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lmsl;->a(Lmrp;)Lmlq;

    move-result-object v0

    iput-object v0, p0, Lmsl;->c:Lmlq;

    .line 85
    iget-object v0, p0, Lmsl;->c:Lmlq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmlq;->a(Z)V

    .line 86
    iget-object v0, p0, Lmsl;->c:Lmlq;

    invoke-virtual {p1}, Lmrp;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^0-9]+"

    const-string v3, ""

    .line 87
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lmlq;->h(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p2}, Lmsl;->a(Lmsk;)V

    .line 89
    return-void
.end method
