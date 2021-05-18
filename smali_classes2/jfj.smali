.class public Ljfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljfh;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lmip;

.field private c:Ljiy;

.field private d:Ljfi;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljfi;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ljfj;->a:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Ljfj;->d:Ljfi;

    .line 39
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljfj;->b:Lmip;

    .line 40
    new-instance v0, Ljiz;

    invoke-direct {v0, p1}, Ljiz;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ljfj;->c:Ljiy;

    .line 41
    return-void
.end method

.method static synthetic a(Ljfj;)Ljfi;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ljfj;->d:Ljfi;

    return-object v0
.end method

.method private b(Ljdv;)Ljdn;
    .locals 2

    .prologue
    .line 135
    new-instance v1, Ljdn;

    invoke-direct {v1}, Ljdn;-><init>()V

    .line 136
    iget-object v0, p0, Ljfj;->b:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljdn;->setConnUuid(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Ljfj;->b:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljdn;->setTokenSessao(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Ljfj;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljdn;->setTokenTransacao(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Ljfj;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljdn;->setAgencia(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Ljfj;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljdn;->setConta(Ljava/lang/String;)V

    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljdv;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljdn;->a(Ljava/lang/String;)V

    .line 144
    return-object v1

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljdg;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljdg;

    invoke-direct {v0}, Ljdg;-><init>()V

    .line 105
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdg;->setConnUuid(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdg;->setTokenSessao(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdg;->setTokenTransacao(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdg;->setAgencia(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdg;->setConta(Ljava/lang/String;)V

    .line 111
    return-object v0
.end method

.method private e()Ljdr;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljdr;

    invoke-direct {v0}, Ljdr;-><init>()V

    .line 116
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdr;->setConnUuid(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdr;->setTokenSessao(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdr;->setTokenTransacao(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdr;->setAgencia(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdr;->setConta(Ljava/lang/String;)V

    .line 122
    return-object v0
.end method

.method private f()Ljdp;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljdp;

    invoke-direct {v0}, Ljdp;-><init>()V

    .line 127
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdp;->setConnUuid(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdp;->setTokenSessao(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Ljfj;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdp;->setTokenTransacao(Ljava/lang/String;)V

    .line 131
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Ljfj;->c:Ljiy;

    new-instance v1, Ljfl;

    invoke-direct {v1, p0}, Ljfl;-><init>(Ljfj;)V

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, v2}, Ljfj;->b(Ljdv;)Ljdn;

    move-result-object v2

    .line 60
    invoke-interface {v0, v1, v2}, Ljiy;->b(Lgkw;Ljdn;)V

    .line 70
    return-void
.end method

.method public a(Ljdv;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Ljfj;->c:Ljiy;

    new-instance v1, Ljfk;

    invoke-direct {v1, p0}, Ljfk;-><init>(Ljfj;)V

    .line 54
    invoke-direct {p0, p1}, Ljfj;->b(Ljdv;)Ljdn;

    move-result-object v2

    .line 45
    invoke-interface {v0, v1, v2}, Ljiy;->a(Lgkw;Ljdn;)V

    .line 56
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Ljfj;->c:Ljiy;

    new-instance v1, Ljfm;

    invoke-direct {v1, p0}, Ljfm;-><init>(Ljfj;)V

    .line 84
    invoke-direct {p0}, Ljfj;->f()Ljdp;

    move-result-object v2

    .line 75
    invoke-interface {v0, v1, v2}, Ljiy;->a(Lgkw;Ljdp;)V

    .line 85
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Ljfj;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Ljfj;->c:Ljiy;

    new-instance v1, Ljfn;

    invoke-direct {v1, p0}, Ljfn;-><init>(Ljfj;)V

    .line 99
    invoke-direct {p0}, Ljfj;->e()Ljdr;

    move-result-object v2

    .line 90
    invoke-interface {v0, v1, v2}, Ljiy;->a(Lgkw;Ljdr;)V

    .line 101
    :cond_0
    return-void
.end method
