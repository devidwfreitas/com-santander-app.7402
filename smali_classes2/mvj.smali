.class Lmvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmrx;


# instance fields
.field final synthetic a:Lmvi;


# direct methods
.method constructor <init>(Lmvi;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lmvj;->a:Lmvi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->b(Lmvi;)Lmsc;

    move-result-object v0

    invoke-interface {v0}, Lmsc;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    invoke-interface {v0}, Lmuk;->j()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-virtual {v0}, Lmvi;->h()V

    .line 82
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    invoke-interface {v0}, Lmuk;->q()V

    .line 83
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    invoke-interface {v0}, Lmuk;->d()V

    .line 84
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->b(Lmvi;)Lmsc;

    move-result-object v0

    invoke-interface {v0}, Lmsc;->e()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lmvj;->a:Lmvi;

    invoke-static {v1}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v1

    invoke-interface {v1, v0}, Lmuk;->a(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->c(Lmvi;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->b(Lmvi;)Lmsc;

    move-result-object v0

    invoke-interface {v0}, Lmsc;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    const-string v0, "Biometrico"

    invoke-static {v0}, Lmwm;->d(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->d(Lmvi;)V

    .line 93
    :goto_1
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    invoke-interface {v0}, Lmuk;->n()V

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "Senha"

    invoke-static {v0}, Lmwm;->d(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    invoke-interface {v0}, Lmuk;->g()V

    goto :goto_1
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    invoke-interface {v0}, Lmuk;->q()V

    .line 101
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    invoke-interface {v0}, Lmuk;->d()V

    .line 102
    iget-object v0, p0, Lmvj;->a:Lmvi;

    invoke-static {v0}, Lmvi;->a(Lmvi;)Lmuk;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmvk;

    invoke-direct {v2, p0}, Lmvk;-><init>(Lmvj;)V

    invoke-interface {v0, v1, v2}, Lmuk;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
