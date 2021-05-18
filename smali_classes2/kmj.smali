.class public Lkmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkmh;


# instance fields
.field private a:Lmip;

.field private b:Lkmi;

.field private c:Lknm;


# direct methods
.method public constructor <init>(Lkmi;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lkmj;->a:Lmip;

    .line 27
    iput-object p1, p0, Lkmj;->b:Lkmi;

    .line 28
    new-instance v0, Lknn;

    invoke-direct {v0}, Lknn;-><init>()V

    iput-object v0, p0, Lkmj;->c:Lknm;

    .line 29
    return-void
.end method

.method static synthetic a(Lkmj;)Lkmi;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lkmj;->b:Lkmi;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lkmj;->c:Lknm;

    new-instance v1, Lkmk;

    invoke-direct {v1, p0}, Lkmk;-><init>(Lkmj;)V

    .line 54
    invoke-virtual {p0}, Lkmj;->b()Lkls;

    move-result-object v2

    .line 33
    invoke-interface {v0, v1, v2}, Lknm;->a(Lgkw;Lgoe;)V

    .line 55
    return-void
.end method

.method public b()Lkls;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lkls;

    invoke-direct {v0}, Lkls;-><init>()V

    .line 59
    iget-object v1, p0, Lkmj;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkls;->setConnUuid(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lkmj;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkls;->setTokenSessao(Ljava/lang/String;)V

    .line 61
    return-object v0
.end method
