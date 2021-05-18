.class public Ljcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljcl;
.implements Ljcp;


# instance fields
.field private a:Ljco;

.field private b:Ljck;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:Lmip;


# direct methods
.method public constructor <init>(Ljco;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Ljcq;->a:Ljco;

    .line 32
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Ljcq;->c:Landroid/app/Activity;

    .line 33
    new-instance v0, Ljcm;

    iget-object v1, p0, Ljcq;->c:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Ljcm;-><init>(Ljcl;Landroid/app/Activity;)V

    iput-object v0, p0, Ljcq;->b:Ljck;

    .line 34
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Ljcq;->e:Lmip;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ljcq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljcq;->b:Ljck;

    invoke-interface {v0, p1}, Ljck;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public a(Ljcg;)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Ljcq;->a:Ljco;

    invoke-interface {v0}, Ljco;->e()V

    .line 40
    invoke-virtual {p1}, Ljcg;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljcg;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Ljcq;->c(Ljcg;)V

    .line 43
    iget-object v0, p0, Ljcq;->a:Ljco;

    .line 44
    invoke-virtual {p1}, Ljcg;->h()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Ljcg;->a()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-interface {v0, v1, v2}, Ljco;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Ljcq;->a:Ljco;

    invoke-interface {v0}, Ljco;->d()V

    .line 73
    new-instance v0, Ljcv;

    invoke-direct {v0}, Ljcv;-><init>()V

    .line 74
    invoke-virtual {p0}, Ljcq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcv;->e(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Ljcq;->b:Ljck;

    invoke-interface {v1, v0}, Ljck;->a(Ljcv;)V

    .line 76
    return-void
.end method

.method public b(Ljcg;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Ljcq;->a:Ljco;

    invoke-interface {v0}, Ljco;->e()V

    .line 52
    iget-object v0, p0, Ljcq;->e:Lmip;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljcg;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Ljcq;->a:Ljco;

    invoke-virtual {p1}, Ljcg;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljco;->b(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Ljcq;->a:Ljco;

    invoke-interface {v0}, Ljco;->c()V

    goto :goto_0
.end method

.method public c(Ljcg;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Ljcq;->e:Lmip;

    invoke-virtual {p1}, Ljcg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmip;->b(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Ljcq;->e:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Ljcg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->g(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Ljcq;->e:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {p1}, Ljcg;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->h(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Ljcq;->e:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmir;->a(Ljava/lang/Boolean;)V

    .line 85
    iget-object v0, p0, Ljcq;->e:Lmip;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmip;->c(Z)V

    .line 86
    iget-object v0, p0, Ljcq;->e:Lmip;

    invoke-static {}, Lmzr;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Lmip;->a(Z)V

    .line 88
    invoke-virtual {p1}, Ljcg;->e()Liow;

    move-result-object v0

    .line 90
    iget-object v1, p0, Ljcq;->e:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmir;->a(Liow;)V

    .line 91
    iget-object v0, p0, Ljcq;->e:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->v()V

    .line 92
    return-void
.end method
