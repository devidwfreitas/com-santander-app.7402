.class public Lmjr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmjp;


# instance fields
.field private a:Lmjq;

.field private b:Lmki;


# direct methods
.method public constructor <init>(Lmjq;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lmjr;->a:Lmjq;

    .line 24
    new-instance v0, Lmkc;

    invoke-direct {v0}, Lmkc;-><init>()V

    iput-object v0, p0, Lmjr;->b:Lmki;

    .line 25
    return-void
.end method

.method static synthetic a(Lmjr;)Lmjq;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lmjr;->a:Lmjq;

    return-object v0
.end method


# virtual methods
.method public a(Lmja;)V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lmjr;->b:Lmki;

    new-instance v1, Lmjs;

    invoke-direct {v1, p0}, Lmjs;-><init>(Lmjr;)V

    .line 48
    invoke-virtual {p0, p1}, Lmjr;->b(Lmja;)Lmja;

    move-result-object v2

    .line 29
    invoke-interface {v0, v1, v2}, Lmki;->b(Lgkw;Lgoe;)V

    .line 49
    return-void
.end method

.method public b(Lmja;)Lmja;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lmja;

    invoke-direct {v0}, Lmja;-><init>()V

    .line 53
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmja;->setAgencia(Ljava/lang/String;)V

    .line 54
    const-string v1, "false"

    invoke-virtual {v0, v1}, Lmja;->a(Ljava/lang/String;)V

    .line 55
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->b(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmja;->setConnUuid(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmja;->setConta(Ljava/lang/String;)V

    .line 58
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->c(Ljava/lang/String;)V

    .line 59
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->d(Ljava/lang/String;)V

    .line 60
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->e(Ljava/lang/String;)V

    .line 61
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->f(Ljava/lang/String;)V

    .line 62
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->g(Ljava/lang/String;)V

    .line 63
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->i(Ljava/lang/String;)V

    .line 64
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->h(Ljava/lang/String;)V

    .line 65
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->j(Ljava/lang/String;)V

    .line 66
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->k(Ljava/lang/String;)V

    .line 67
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->l(Ljava/lang/String;)V

    .line 68
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->m(Ljava/lang/String;)V

    .line 69
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->o(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmja;->setTokenSessao(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v1

    invoke-virtual {v1}, Lmiq;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmja;->setTokenTransacao(Ljava/lang/String;)V

    .line 72
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->p(Ljava/lang/String;)V

    .line 73
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->q(Ljava/lang/String;)V

    .line 74
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->r(Ljava/lang/String;)V

    .line 75
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->s(Ljava/lang/String;)V

    .line 76
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->u(Ljava/lang/String;)V

    .line 77
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->t(Ljava/lang/String;)V

    .line 78
    const-string v1, ""

    invoke-virtual {v0, v1}, Lmja;->n(Ljava/lang/String;)V

    .line 80
    return-object v0
.end method
