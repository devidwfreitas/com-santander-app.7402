.class public Ljff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljfd;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lmip;

.field private c:Ljiy;

.field private d:Ljfe;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljfe;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Ljff;->a:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Ljff;->d:Ljfe;

    .line 36
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljff;->b:Lmip;

    .line 37
    new-instance v0, Ljiz;

    invoke-direct {v0, p1}, Ljiz;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ljff;->c:Ljiy;

    .line 38
    return-void
.end method

.method static synthetic a(Ljff;)Ljfe;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljff;->d:Ljfe;

    return-object v0
.end method

.method private b()Ljdp;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljdp;

    invoke-direct {v0}, Ljdp;-><init>()V

    .line 57
    iget-object v1, p0, Ljff;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdp;->setConnUuid(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Ljff;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdp;->setTokenSessao(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Ljff;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdp;->setTokenTransacao(Ljava/lang/String;)V

    .line 61
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Ljff;->c:Ljiy;

    new-instance v1, Ljfg;

    invoke-direct {v1, p0}, Ljfg;-><init>(Ljff;)V

    .line 52
    invoke-direct {p0}, Ljff;->b()Ljdp;

    move-result-object v2

    .line 43
    invoke-interface {v0, v1, v2}, Ljiy;->a(Lgkw;Ljdp;)V

    .line 53
    return-void
.end method
