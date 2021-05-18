.class public Ljjy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljjw;


# instance fields
.field private a:Lmip;

.field private b:Ljla;

.field private c:Ljjx;


# direct methods
.method public constructor <init>(Ljjx;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljjy;->c:Ljjx;

    .line 28
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljjy;->a:Lmip;

    .line 29
    new-instance v0, Ljlb;

    invoke-direct {v0}, Ljlb;-><init>()V

    iput-object v0, p0, Ljjy;->b:Ljla;

    .line 30
    return-void
.end method

.method static synthetic a(Ljjy;)Ljjx;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Ljjy;->c:Ljjx;

    return-object v0
.end method

.method private b()Ljdg;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljdg;

    invoke-direct {v0}, Ljdg;-><init>()V

    .line 50
    iget-object v1, p0, Ljjy;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdg;->setConnUuid(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Ljjy;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdg;->setTokenSessao(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Ljjy;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdg;->setTokenTransacao(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Ljjy;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdg;->setAgencia(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Ljjy;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljdg;->setConta(Ljava/lang/String;)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Ljjy;->b:Ljla;

    new-instance v1, Ljjz;

    invoke-direct {v1, p0}, Ljjz;-><init>(Ljjy;)V

    .line 45
    invoke-direct {p0}, Ljjy;->b()Ljdg;

    move-result-object v2

    .line 34
    invoke-interface {v0, v1, v2}, Ljla;->a(Lgkw;Ljdg;)V

    .line 46
    return-void
.end method
