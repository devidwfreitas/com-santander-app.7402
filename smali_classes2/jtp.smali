.class public Ljtp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljtn;


# instance fields
.field private a:Lmip;

.field private b:Landroid/app/Dialog;

.field private c:Ljsr;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lghu;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/app/Activity;

.field private g:Ljto;

.field private h:Ljwi;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljsr;Ljto;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ljtp;->f:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Ljtp;->c:Ljsr;

    .line 43
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljtp;->a:Lmip;

    .line 44
    iput-object p3, p0, Ljtp;->g:Ljto;

    .line 45
    new-instance v0, Ljwj;

    iget-object v1, p0, Ljtp;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljwj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ljtp;->h:Ljwi;

    .line 46
    return-void
.end method

.method static synthetic a(Ljtp;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Ljtp;->b:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Ljtp;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljtp;->f()V

    return-void
.end method

.method static synthetic b(Ljtp;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ljtp;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method private b(Ljss;)Ljss;
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p1}, Ljss;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnak;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->e(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Ljss;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->b(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Ljtp;->a:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setTokenSessao(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Ljtp;->a:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljss;->setConnUuid(Ljava/lang/String;)V

    .line 124
    return-object p1
.end method

.method static synthetic c(Ljtp;)Ljto;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ljtp;->g:Ljto;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Ljtp;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljtp;->a:Lmip;

    .line 59
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljtp;->a:Lmip;

    .line 60
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->A()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Ljtp;->f:Landroid/app/Activity;

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Ljtp;->b:Landroid/app/Dialog;

    .line 65
    iget-object v0, p0, Ljtp;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->t()Lgke;

    move-result-object v0

    new-instance v1, Ljtq;

    invoke-direct {v1, p0}, Ljtq;-><init>(Ljtp;)V

    invoke-interface {v0, v1}, Lgke;->a(Lfoh;)V

    .line 75
    return-void
.end method

.method private f()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Ljtp;->b()V

    .line 79
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljtp;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Ljtp;->e()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Ljtp;->f()V

    goto :goto_0
.end method

.method public a(Ljss;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Ljtp;->h:Ljwi;

    new-instance v1, Ljtr;

    invoke-direct {v1, p0, p1}, Ljtr;-><init>(Ljtp;Ljss;)V

    .line 115
    invoke-direct {p0, p1}, Ljtp;->b(Ljss;)Ljss;

    move-result-object v2

    .line 93
    invoke-interface {v0, v1, v2}, Ljwi;->a(Lgkw;Ljss;)V

    .line 116
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Ljtp;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljtp;->e:Ljava/util/List;

    .line 84
    iget-object v0, p0, Ljtp;->c:Ljsr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljtp;->c:Ljsr;

    invoke-virtual {v0}, Ljsr;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljtp;->c:Ljsr;

    .line 85
    invoke-virtual {v0}, Ljsr;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Ljtp;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljtp;->d:Ljava/util/List;

    .line 88
    :cond_0
    iget-object v0, p0, Ljtp;->g:Ljto;

    iget-object v1, p0, Ljtp;->e:Ljava/util/List;

    iget-object v2, p0, Ljtp;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljto;->a(Ljava/util/List;Ljava/util/List;)V

    .line 89
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Ljtp;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljtp;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    new-instance v0, Lmzn;

    invoke-direct {v0}, Lmzn;-><init>()V

    .line 131
    const/4 v1, 0x2

    new-array v1, v1, [Lmzp;

    const/4 v2, 0x0

    sget-object v3, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lmzp;->RELOAD_CARTOES_DESBLOQUEIO:Lmzp;

    aput-object v3, v1, v2

    new-instance v2, Ljts;

    invoke-direct {v2, p0}, Ljts;-><init>(Ljtp;)V

    invoke-virtual {v0, v1, v2}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Ljtp;->a()V

    goto :goto_0
.end method
