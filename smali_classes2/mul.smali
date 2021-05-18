.class public Lmul;
.super Lmso;
.source "SourceFile"

# interfaces
.implements Lmuq;


# instance fields
.field private b:Lmvl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lmso;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lmso;->a()V

    return-void
.end method

.method public bridge synthetic a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-super {p0, p1}, Lmso;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1}, Lmso;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmul;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lmul;->a:Lmsy;

    invoke-interface {v0, p1}, Lmsy;->b(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lmso;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1}, Lmso;->a(Z)V

    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lmso;->b()V

    return-void
.end method

.method public bridge synthetic b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-super {p0, p1}, Lmso;->b(I)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lmso;->c()V

    return-void
.end method

.method public c(I)V
    .locals 1
    .param p1    # I
        .annotation build Lmww;
        .end annotation
    .end param

    .prologue
    .line 44
    iget-object v0, p0, Lmul;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lmul;->a:Lmsy;

    invoke-interface {v0, p1}, Lmsy;->b(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lmso;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lmso;->e()V

    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmul;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lmul;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->n()V

    .line 40
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmul;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lmul;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->o()V

    .line 54
    :cond_0
    return-void
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1}, Lmso;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-super {p0, p1}, Lmso;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v0, Lmvm;

    invoke-direct {v0, p0}, Lmvm;-><init>(Lmuq;)V

    iput-object v0, p0, Lmul;->b:Lmvl;

    .line 26
    iget-object v0, p0, Lmul;->b:Lmvl;

    invoke-virtual {p0}, Lmul;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lmvl;->a(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lmso;->onDestroy()V

    .line 32
    iget-object v0, p0, Lmul;->b:Lmvl;

    invoke-interface {v0}, Lmvl;->a()V

    .line 33
    return-void
.end method

.method public bridge synthetic onDetach()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lmso;->onDetach()V

    return-void
.end method
