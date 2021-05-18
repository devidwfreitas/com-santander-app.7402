.class public Lmnh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmnf;


# instance fields
.field private a:Lmip;

.field private b:Landroid/app/Activity;

.field private c:Lmng;

.field private d:Lmqn;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmng;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmnh;->b:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lmnh;->c:Lmng;

    .line 31
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lmnh;->a:Lmip;

    .line 32
    new-instance v0, Lmqn;

    invoke-direct {v0, p1}, Lmqn;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lmnh;->d:Lmqn;

    .line 34
    return-void
.end method

.method static synthetic a(Lmnh;)Lmng;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmnh;->c:Lmng;

    return-object v0
.end method

.method private b(Lcom/santander/app/contacorrente/domain/Conta;)Lmll;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lmll;

    invoke-direct {v0}, Lmll;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getAgencia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmll;->a(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/santander/app/contacorrente/domain/Conta;->getCuenta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmll;->b(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lmnh;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmll;->setTokenSessao(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lmnh;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmll;->setTokenTransacao(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lmnh;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmll;->setConnUuid(Ljava/lang/String;)V

    .line 58
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lmnh;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmnh;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    iget-object v0, p0, Lmnh;->c:Lmng;

    iget-object v1, p0, Lmnh;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->q()Lgvx;

    move-result-object v1

    invoke-interface {v1}, Lgvx;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lmng;->a(Ljava/util/List;)V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lmnh;->d:Lmqn;

    new-instance v1, Lmni;

    invoke-direct {v1, p0}, Lmni;-><init>(Lmnh;)V

    .line 47
    invoke-direct {p0, p1}, Lmnh;->b(Lcom/santander/app/contacorrente/domain/Conta;)Lmll;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v1, v2}, Lmqn;->a(Lgkw;Lmll;)V

    .line 48
    return-void
.end method
