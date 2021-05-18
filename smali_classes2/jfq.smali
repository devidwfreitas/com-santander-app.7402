.class public Ljfq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljfo;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lmip;

.field private c:Ljiy;

.field private d:Ljfp;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljfp;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Ljfq;->a:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Ljfq;->d:Ljfp;

    .line 40
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljfq;->b:Lmip;

    .line 41
    new-instance v0, Ljiz;

    invoke-direct {v0, p1}, Ljiz;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ljfq;->c:Ljiy;

    .line 42
    return-void
.end method

.method static synthetic a(Ljfq;)Ljfp;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljfq;->d:Ljfp;

    return-object v0
.end method

.method private a(Ljdi;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Ljfq;->c:Ljiy;

    new-instance v1, Ljfr;

    invoke-direct {v1, p0}, Ljfr;-><init>(Ljfq;)V

    .line 54
    invoke-direct {p0, p1}, Ljfq;->b(Ljdi;)Ljdt;

    move-result-object v2

    .line 45
    invoke-interface {v0, v1, v2}, Ljiy;->a(Lgkw;Ljdt;)V

    .line 55
    return-void
.end method

.method static synthetic a(Ljfq;Ljdi;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljfq;->a(Ljdi;)V

    return-void
.end method

.method static synthetic b(Ljfq;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljfq;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljdx;)Ljdj;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 76
    new-instance v0, Ljdj;

    invoke-direct {v0}, Ljdj;-><init>()V

    .line 78
    iget-object v1, p0, Ljfq;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->setConnUuid(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Ljfq;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->setTokenSessao(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Ljfq;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->setTokenTransacao(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljdx;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->setAgencia(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Ljdx;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->setConta(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Ljdx;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljdj;->a(Z)V

    .line 85
    invoke-virtual {p1}, Ljdx;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p1}, Ljdx;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    const-string v3, "ddMMyyyy"

    invoke-static {v1, v2, v3}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->a(Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-virtual {v0, v4}, Ljdj;->b(Z)V

    .line 89
    const-string v1, "APLICACAO"

    invoke-virtual {v0, v1}, Ljdj;->d(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljdx;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljdx;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->b(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v4}, Ljdj;->c(Z)V

    .line 92
    invoke-virtual {p1}, Ljdx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnaj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdj;->e(Ljava/lang/String;)V

    .line 94
    return-object v0
.end method

.method private b(Ljdi;)Ljdt;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljdt;

    invoke-direct {v0}, Ljdt;-><init>()V

    .line 99
    iget-object v1, p0, Ljfq;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdt;->setConnUuid(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Ljfq;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdt;->setTokenSessao(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Ljfq;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdt;->setTokenTransacao(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Ljdi;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdt;->b(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Ljdi;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdt;->a(Ljava/lang/String;)V

    .line 104
    return-object v0
.end method


# virtual methods
.method public a(Ljdx;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Ljfq;->c:Ljiy;

    new-instance v1, Ljfs;

    invoke-direct {v1, p0}, Ljfs;-><init>(Ljfq;)V

    .line 72
    invoke-direct {p0, p1}, Ljfq;->b(Ljdx;)Ljdj;

    move-result-object v2

    .line 59
    invoke-interface {v0, v1, v2}, Ljiy;->a(Lgkw;Ljdj;)V

    .line 73
    return-void
.end method
