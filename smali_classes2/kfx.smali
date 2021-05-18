.class public Lkfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkec;
.implements Lkfw;


# instance fields
.field private a:Lkew;

.field private b:Lkcy;

.field private c:Lkcz;

.field private d:Lkeb;

.field private e:Lmip;


# direct methods
.method public constructor <init>(Lkew;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lkfx;->a:Lkew;

    .line 28
    new-instance v0, Lkcy;

    invoke-direct {v0}, Lkcy;-><init>()V

    iput-object v0, p0, Lkfx;->b:Lkcy;

    .line 29
    new-instance v0, Lked;

    invoke-direct {v0, p0}, Lked;-><init>(Lkec;)V

    iput-object v0, p0, Lkfx;->d:Lkeb;

    .line 30
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lkfx;->e:Lmip;

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lkfx;->a:Lkew;

    invoke-interface {v0}, Lkew;->b()V

    .line 41
    new-instance v0, Lkcz;

    invoke-direct {v0}, Lkcz;-><init>()V

    iput-object v0, p0, Lkfx;->c:Lkcz;

    .line 42
    iget-object v0, p0, Lkfx;->c:Lkcz;

    iget-object v1, p0, Lkfx;->e:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkcz;->setTokenTransacao(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lkfx;->c:Lkcz;

    iget-object v1, p0, Lkfx;->e:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkcz;->setConnUuid(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lkfx;->c:Lkcz;

    iget-object v1, p0, Lkfx;->e:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkcz;->setTokenSessao(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lkfx;->d:Lkeb;

    iget-object v1, p0, Lkfx;->c:Lkcz;

    invoke-interface {v0, v1}, Lkeb;->a(Lkcz;)V

    .line 46
    return-void
.end method

.method public a(Lkcy;)V
    .locals 2

    .prologue
    .line 50
    iput-object p1, p0, Lkfx;->b:Lkcy;

    .line 51
    iget-object v0, p0, Lkfx;->a:Lkew;

    invoke-interface {v0}, Lkew;->c()V

    .line 52
    invoke-virtual {p1}, Lkcy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lkfx;->a:Lkew;

    invoke-interface {v0, p1}, Lkew;->a(Lkcy;)V

    .line 55
    :cond_0
    return-void
.end method

.method public b(Lkcy;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lkfx;->a:Lkew;

    invoke-interface {v0}, Lkew;->c()V

    .line 60
    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p1}, Lkcy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1}, Lkcy;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lkfx;->a:Lkew;

    invoke-virtual {p1}, Lkcy;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkew;->a(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lkfx;->a:Lkew;

    invoke-interface {v0}, Lkew;->d()V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lkfx;->a:Lkew;

    invoke-interface {v0}, Lkew;->d()V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lkfx;->a:Lkew;

    invoke-interface {v0}, Lkew;->d()V

    goto :goto_0
.end method

.method public c(Lkcy;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lkfx;->b:Lkcy;

    .line 36
    return-void
.end method
