.class public Lkmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkmd;


# instance fields
.field private a:Lmip;

.field private b:Lkme;

.field private c:Lknm;


# direct methods
.method public constructor <init>(Lkme;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lkmf;->a:Lmip;

    .line 28
    iput-object p1, p0, Lkmf;->b:Lkme;

    .line 29
    new-instance v0, Lknn;

    invoke-direct {v0}, Lknn;-><init>()V

    iput-object v0, p0, Lkmf;->c:Lknm;

    .line 30
    return-void
.end method

.method static synthetic a(Lkmf;)Lkme;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lkmf;->b:Lkme;

    return-object v0
.end method


# virtual methods
.method public a(Lkla;)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lkmf;->c:Lknm;

    new-instance v1, Lkmg;

    invoke-direct {v1, p0}, Lkmg;-><init>(Lkmf;)V

    .line 57
    invoke-virtual {p0, p1}, Lkmf;->b(Lkla;)Lkla;

    move-result-object v2

    .line 34
    invoke-interface {v0, v1, v2}, Lknm;->c(Lgkw;Lgoe;)V

    .line 58
    return-void
.end method

.method public b(Lkla;)Lkla;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lkmf;->a:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkla;->setConnUuid(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lkmf;->a:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkla;->setTokenSessao(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lklg;

    invoke-direct {v0}, Lklg;-><init>()V

    invoke-virtual {v0, p1}, Lklg;->a(Lkla;)Lklq;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Lklq;->a()Lkla;

    move-result-object v0

    return-object v0
.end method
