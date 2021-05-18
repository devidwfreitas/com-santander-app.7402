.class public Lifz;
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
    iput-object p1, p0, Lifz;->a:Lgkw;

    .line 24
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lifz;->b:Lmip;

    .line 25
    return-void
.end method

.method static synthetic a(Lifz;)Lgkw;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lifz;->a:Lgkw;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .prologue
    .line 28
    new-instance v1, Lifa;

    invoke-direct {v1}, Lifa;-><init>()V

    .line 29
    iget-object v0, p0, Lifz;->b:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lifa;->setConnUuid(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lifz;->b:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lifa;->setTokenSessao(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lifz;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lifa;->setTokenTransacao(Ljava/lang/String;)V

    .line 32
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Lifa;->a(Ljava/lang/String;)V

    .line 34
    new-instance v0, Ligb;

    new-instance v2, Liga;

    invoke-direct {v2, p0}, Liga;-><init>(Lifz;)V

    invoke-direct {v0, v2}, Ligb;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lifa;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 39
    invoke-virtual {v0, v2}, Ligb;->c([Ljava/lang/Object;)Lgne;

    .line 40
    return-void

    .line 32
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
