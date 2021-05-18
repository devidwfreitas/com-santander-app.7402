.class public Lgik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgii;


# instance fields
.field private a:Lmip;

.field private b:Landroid/app/Activity;

.field private c:Lgij;

.field private d:Lgjr;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgij;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lgik;->a:Lmip;

    .line 32
    iput-object p1, p0, Lgik;->b:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lgik;->c:Lgij;

    .line 35
    iget-object v0, p0, Lgik;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lgjn;

    invoke-direct {v0, p1}, Lgjn;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lgik;->d:Lgjr;

    .line 40
    :goto_0
    iget-object v0, p0, Lgik;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgik;->e:Z

    .line 41
    return-void

    .line 38
    :cond_0
    new-instance v0, Lgjs;

    invoke-direct {v0, p1}, Lgjs;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lgik;->d:Lgjr;

    goto :goto_0
.end method

.method static synthetic a(Lgik;)Lgij;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lgik;->c:Lgij;

    return-object v0
.end method

.method private b(Lghw;)Lgie;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lgie;

    invoke-direct {v0}, Lgie;-><init>()V

    .line 63
    iget-object v1, p0, Lgik;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->setConnUuid(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lgik;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->setTokenSessao(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lgik;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->setTokenTransacao(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lghw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->b(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lghw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->a(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lghw;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->c(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lghw;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->h(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lghw;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->i(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lghw;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->j(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lghw;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->k(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lghw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->d(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lghw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->e(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lghw;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->f(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lghw;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->g(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lghw;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgie;->a(Ljava/util/List;)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public a(Lghw;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lgik;->d:Lgjr;

    new-instance v1, Lgil;

    invoke-direct {v1, p0}, Lgil;-><init>(Lgik;)V

    .line 57
    invoke-direct {p0, p1}, Lgik;->b(Lghw;)Lgie;

    move-result-object v2

    .line 46
    invoke-interface {v0, v1, v2}, Lgjr;->d(Lgkw;Lgoe;)V

    .line 59
    return-void
.end method
