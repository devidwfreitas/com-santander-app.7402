.class public Liba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Libg;


# instance fields
.field private a:Lmip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Liba;->a:Lmip;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lhzf;)Lhzf;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lhzf;

    invoke-direct {v0}, Lhzf;-><init>()V

    .line 112
    iget-object v1, p0, Liba;->a:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzf;->setConnUuid(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Liba;->a:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzf;->setTokenSessao(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lhzf;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzf;->b(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lhzf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzf;->a(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Liba;->a:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzf;->setTokenTransacao(Ljava/lang/String;)V

    .line 117
    return-object v0
.end method

.method public a(Lhzi;)Lhzi;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Liba;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhzi;->a(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Liba;->a:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhzi;->setConnUuid(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Liba;->a:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhzi;->setTokenSessao(Ljava/lang/String;)V

    .line 100
    return-object p1
.end method

.method public a(Lhzq;)Lhzq;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Liba;->a:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhzq;->setConnUuid(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Liba;->a:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhzq;->setTokenSessao(Ljava/lang/String;)V

    .line 123
    return-object p1
.end method

.method public a(Lgkw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgkw",
            "<",
            "Lhzt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    .line 64
    new-instance v1, Lhzs;

    invoke-direct {v1}, Lhzs;-><init>()V

    .line 65
    invoke-virtual {v0}, Lmiq;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhzs;->setConnUuid(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lmiq;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lhzs;->setTokenSessao(Ljava/lang/String;)V

    .line 68
    new-instance v0, Libl;

    new-instance v2, Libd;

    invoke-direct {v2, p0, p1}, Libd;-><init>(Liba;Lgkw;)V

    invoke-direct {v0, v2}, Libl;-><init>(Lgkv;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lhzs;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 73
    invoke-virtual {v0, v2}, Libl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method

.method public a(Lgkw;Lgoe;)V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Libh;

    new-instance v1, Libb;

    invoke-direct {v1, p0, p1}, Libb;-><init>(Liba;Lgkw;)V

    invoke-direct {v0, v1}, Libh;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhzf;

    const/4 v2, 0x0

    check-cast p2, Lhzf;

    .line 43
    invoke-virtual {p0, p2}, Liba;->a(Lhzf;)Lhzf;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Libh;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method

.method public a(Lhzk;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Liba;->a:Lmip;

    invoke-interface {v0}, Lmip;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhzk;->setTokenSessao(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Liba;->a:Lmip;

    invoke-interface {v0}, Lmip;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhzk;->setConnUuid(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Liba;->a:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhzk;->setTokenTransacao(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public b(Lgkw;Lgoe;)V
    .locals 3

    .prologue
    .line 49
    check-cast p2, Lhzk;

    .line 50
    invoke-virtual {p0, p2}, Liba;->a(Lhzk;)V

    .line 52
    new-instance v0, Libk;

    new-instance v1, Libc;

    invoke-direct {v1, p0, p1}, Libc;-><init>(Liba;Lgkw;)V

    invoke-direct {v0, v1}, Libk;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhzk;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 57
    invoke-virtual {v0, v1}, Libk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method

.method public c(Lgkw;Lgoe;)V
    .locals 4

    .prologue
    .line 78
    new-instance v0, Libi;

    new-instance v1, Libe;

    invoke-direct {v1, p0, p1}, Libe;-><init>(Liba;Lgkw;)V

    invoke-direct {v0, v1}, Libi;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhzi;

    const/4 v2, 0x0

    check-cast p2, Lhzi;

    .line 83
    invoke-virtual {p0, p2}, Liba;->a(Lhzi;)Lhzi;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Libi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method

.method public d(Lgkw;Lgoe;)V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Libj;

    new-instance v1, Libf;

    invoke-direct {v1, p0, p1}, Libf;-><init>(Liba;Lgkw;)V

    invoke-direct {v0, v1}, Libj;-><init>(Lgkv;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhzq;

    const/4 v2, 0x0

    check-cast p2, Lhzq;

    .line 93
    invoke-virtual {p0, p2}, Liba;->a(Lhzq;)Lhzq;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Libj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method
