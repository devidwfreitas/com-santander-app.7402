.class public Lkdv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkdu;


# instance fields
.field private a:Lkec;

.field private b:Lkfy;


# direct methods
.method public constructor <init>(Lkec;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lkdv;->a:Lkec;

    .line 24
    new-instance v0, Lkfz;

    invoke-direct {v0}, Lkfz;-><init>()V

    iput-object v0, p0, Lkdv;->b:Lkfy;

    .line 25
    return-void
.end method

.method static synthetic a(Lkdv;)Lkec;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lkdv;->a:Lkec;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 31
    new-instance v1, Lkcz;

    invoke-direct {v1}, Lkcz;-><init>()V

    .line 32
    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkcz;->setTokenTransacao(Ljava/lang/String;)V

    .line 33
    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkcz;->setConnUuid(Ljava/lang/String;)V

    .line 34
    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkcz;->setTokenSessao(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lkdv;->b:Lkfy;

    new-instance v2, Lkdw;

    invoke-direct {v2, p0}, Lkdw;-><init>(Lkdv;)V

    invoke-interface {v0, v2, v1}, Lkfy;->b(Lgkw;Lgoe;)V

    .line 65
    return-void
.end method
