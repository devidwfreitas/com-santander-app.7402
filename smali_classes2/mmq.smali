.class public Lmmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmmo;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lmmp;

.field private c:Lmqn;

.field private d:Lmip;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmmp;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lmmq;->a:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lmmq;->b:Lmmp;

    .line 35
    new-instance v0, Lmqn;

    invoke-direct {v0, p1}, Lmqn;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lmmq;->c:Lmqn;

    .line 36
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lmmq;->d:Lmip;

    .line 37
    return-void
.end method

.method static synthetic a(Lmmq;)Lmmp;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmmq;->b:Lmmp;

    return-object v0
.end method

.method private b(Lmlr;)Lmla;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lmla;

    invoke-direct {v0}, Lmla;-><init>()V

    .line 62
    invoke-virtual {p1}, Lmlr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmla;->c(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lmlr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmla;->a(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lmlr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmla;->b(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lmmq;->d:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmla;->setConnUuid(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lmmq;->d:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmla;->setTokenSessao(Ljava/lang/String;)V

    .line 68
    return-object v0
.end method

.method private b(Lcom/santander/app/contacorrente/domain/Conta;Lmlr;)Lmlc;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lmlc;

    invoke-direct {v0}, Lmlc;-><init>()V

    .line 93
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlc;->a(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lnaj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlc;->b(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Lmlr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlc;->e(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Lmlr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlc;->c(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Lmlr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlc;->d(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lmmq;->d:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlc;->setConnUuid(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lmmq;->d:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlc;->setTokenSessao(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lmmq;->d:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmlc;->setTokenTransacao(Ljava/lang/String;)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public a(Lcom/santander/app/contacorrente/domain/Conta;Lmlr;)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lmmq;->c:Lmqn;

    new-instance v1, Lmms;

    invoke-direct {v1, p0}, Lmms;-><init>(Lmmq;)V

    .line 86
    invoke-direct {p0, p1, p2}, Lmmq;->b(Lcom/santander/app/contacorrente/domain/Conta;Lmlr;)Lmlc;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lmqn;->a(Lgkw;Lmlc;)V

    .line 87
    return-void
.end method

.method public a(Lmlr;)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lmmq;->c:Lmqn;

    new-instance v1, Lmmr;

    invoke-direct {v1, p0}, Lmmr;-><init>(Lmmq;)V

    .line 54
    invoke-direct {p0, p1}, Lmmq;->b(Lmlr;)Lmla;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Lmqn;->a(Lgkw;Lmla;)V

    .line 57
    return-void
.end method
