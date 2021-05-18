.class public Ljbm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgkw;

.field private b:Lmip;


# direct methods
.method public constructor <init>(Lgkw;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Ljbm;->a:Lgkw;

    .line 24
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljbm;->b:Lmip;

    .line 25
    return-void
.end method

.method static synthetic a(Ljbm;)Lgkw;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Ljbm;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Livd;

    invoke-direct {v0}, Livd;-><init>()V

    .line 30
    iget-object v1, p0, Ljbm;->b:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livd;->setConnUuid(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Ljbm;->b:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livd;->setTokenSessao(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Ljbm;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livd;->setTokenTransacao(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Ljbm;->b:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->c()Live;

    move-result-object v1

    invoke-virtual {v1}, Live;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Livd;->b(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p1}, Livd;->a(Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljbz;

    new-instance v2, Ljbn;

    invoke-direct {v2, p0}, Ljbn;-><init>(Ljbm;)V

    invoke-direct {v1, v2}, Ljbz;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Livd;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 41
    invoke-virtual {v1, v2}, Ljbz;->c([Ljava/lang/Object;)Lgne;

    .line 42
    return-void
.end method
