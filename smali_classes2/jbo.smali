.class public Ljbo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgkw;

.field private b:Lmip;


# direct methods
.method public constructor <init>(Lgkw;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Ljbo;->a:Lgkw;

    .line 25
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljbo;->b:Lmip;

    .line 26
    return-void
.end method

.method static synthetic a(Ljbo;)Lgkw;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Ljbo;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Liuy;

    invoke-direct {v0}, Liuy;-><init>()V

    .line 30
    iget-object v1, p0, Ljbo;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liuy;->setConnUuid(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Ljbo;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liuy;->setTokenSessao(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Ljbo;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liuy;->setTokenTransacao(Ljava/lang/String;)V

    .line 34
    new-instance v1, Ljbw;

    new-instance v2, Ljbp;

    invoke-direct {v2, p0}, Ljbp;-><init>(Ljbo;)V

    invoke-direct {v1, v2}, Ljbw;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Liuy;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 39
    invoke-virtual {v1, v2}, Ljbw;->c([Ljava/lang/Object;)Lgne;

    .line 40
    return-void
.end method
