.class public Lkmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkml;


# instance fields
.field private a:Lmip;

.field private b:Lkmm;

.field private c:Lknm;


# direct methods
.method public constructor <init>(Lkmm;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lkmn;->a:Lmip;

    .line 27
    iput-object p1, p0, Lkmn;->b:Lkmm;

    .line 28
    new-instance v0, Lknn;

    invoke-direct {v0}, Lknn;-><init>()V

    iput-object v0, p0, Lkmn;->c:Lknm;

    .line 29
    return-void
.end method

.method static synthetic a(Lkmn;)Lkmm;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lkmn;->b:Lkmm;

    return-object v0
.end method


# virtual methods
.method public a(Lklu;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lkmn;->c:Lknm;

    new-instance v1, Lkmo;

    invoke-direct {v1, p0}, Lkmo;-><init>(Lkmn;)V

    .line 55
    invoke-virtual {p0, p1}, Lkmn;->b(Lklu;)Lklz;

    move-result-object v2

    .line 33
    invoke-interface {v0, v1, v2}, Lknm;->b(Lgkw;Lgoe;)V

    .line 56
    return-void
.end method

.method public b(Lklu;)Lklz;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lklz;

    invoke-direct {v0}, Lklz;-><init>()V

    .line 60
    invoke-virtual {p1}, Lklu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklz;->setAgencia(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lklu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklz;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lklu;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklz;->c(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lklu;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklz;->b(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lklu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklz;->d(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lkmn;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklz;->setTokenSessao(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lkmn;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lklz;->setConnUuid(Ljava/lang/String;)V

    .line 68
    return-object v0
.end method
