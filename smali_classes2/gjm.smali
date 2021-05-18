.class public Lgjm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgin;
.implements Lgjl;


# instance fields
.field private a:Lgji;

.field private b:Landroid/app/Activity;

.field private c:Lgim;

.field private d:Lghu;


# direct methods
.method public constructor <init>(Lgji;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lgjm;->a:Lgji;

    .line 32
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lgjm;->b:Landroid/app/Activity;

    .line 34
    new-instance v0, Lgio;

    iget-object v1, p0, Lgjm;->b:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lgio;-><init>(Landroid/app/Activity;Lgin;)V

    iput-object v0, p0, Lgjm;->c:Lgim;

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lgjm;->a:Lgji;

    iget-object v1, p0, Lgjm;->c:Lgim;

    invoke-interface {v1}, Lgim;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lgji;->a(Ljava/util/List;)V

    .line 40
    return-void
.end method

.method public a(Lghu;)V
    .locals 2

    .prologue
    .line 50
    iput-object p1, p0, Lgjm;->d:Lghu;

    .line 51
    iget-object v0, p0, Lgjm;->c:Lgim;

    iget-object v1, p0, Lgjm;->d:Lghu;

    invoke-interface {v0, v1}, Lgim;->a(Lghu;)V

    .line 52
    return-void
.end method

.method public a(Lghv;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lgjm;->a:Lgji;

    invoke-interface {v0, p1}, Lgji;->a(Lghv;)V

    .line 84
    return-void
.end method

.method public a(Lghv;Lghu;Lgif;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lgjm;->c:Lgim;

    invoke-interface {v0, p1, p2, p3}, Lgim;->a(Lghv;Lghu;Lgif;)V

    .line 94
    return-void
.end method

.method public a(Lghw;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lgjm;->a:Lgji;

    invoke-interface {v0, p1}, Lgji;->a(Lghw;)V

    .line 137
    return-void
.end method

.method public a(Lghz;)V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lghv;

    invoke-direct {v0}, Lghv;-><init>()V

    .line 58
    invoke-virtual {p1}, Lghz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghv;->b(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lghz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghv;->d(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lghz;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghv;->f(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lghz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghv;->g(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lghz;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghv;->h(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lghz;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghv;->m(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lghz;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghv;->r(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lghz;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghv;->s(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lghz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghv;->u(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lgjm;->d:Lghu;

    const-string v2, "T"

    const-string v3, "00000000000"

    invoke-virtual {p0, v0, v1, v2, v3}, Lgjm;->a(Lgnb;Lghu;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public a(Lgia;)V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lghw;

    invoke-direct {v0}, Lghw;-><init>()V

    .line 111
    invoke-virtual {p1}, Lgia;->getCodErro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->b(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lgia;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->d(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lgia;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->f(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lgia;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->g(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lgia;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->h(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lgia;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->r(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lgia;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->s(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lgia;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->a(Ljava/util/List;)V

    .line 119
    invoke-virtual {p1}, Lgia;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->u(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lgia;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->n(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lgia;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->q(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lgia;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->e(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lgia;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lghw;->t(Ljava/lang/String;)V

    .line 124
    const-string v1, "T"

    invoke-virtual {v0, v1}, Lghw;->o(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lgjm;->a:Lgji;

    invoke-interface {v1, v0}, Lgji;->a(Lghw;)V

    .line 127
    return-void
.end method

.method public a(Lgig;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lgjm;->a:Lgji;

    invoke-interface {v0, p1}, Lgji;->a(Lgig;)V

    .line 99
    return-void
.end method

.method public a(Lgnb;Lghu;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lgjm;->c:Lgim;

    invoke-interface {v0, p1, p2, p3, p4}, Lgim;->a(Lgnb;Lghu;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lgjm;->a:Lgji;

    iget-object v1, p0, Lgjm;->c:Lgim;

    invoke-interface {v1}, Lgim;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lgji;->b(Ljava/util/List;)V

    .line 46
    return-void
.end method

.method public b(Lghv;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lgjm;->a:Lgji;

    invoke-virtual {p1}, Lghv;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgji;->a(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public b(Lghw;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lgjm;->a:Lgji;

    invoke-virtual {p1}, Lghw;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgji;->a(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public b(Lghz;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lgjm;->a:Lgji;

    invoke-virtual {p1}, Lghz;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgji;->a(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public b(Lgia;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lgjm;->a:Lgji;

    invoke-virtual {p1}, Lgia;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgji;->a(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public b(Lgig;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lgjm;->a:Lgji;

    invoke-virtual {p1}, Lgig;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgji;->a(Ljava/lang/String;)V

    .line 104
    return-void
.end method
