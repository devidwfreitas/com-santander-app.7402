.class abstract Lmso;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lmsp;


# instance fields
.field protected a:Lmsy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmso;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lmso;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->finish()V

    .line 44
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 62
    iget-object v0, p0, Lmso;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lmso;->a:Lmsy;

    invoke-interface {v0, p1}, Lmsy;->setTitle(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmso;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lmso;->a:Lmsy;

    invoke-interface {v0, p1}, Lmsy;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmso;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lmso;->a:Lmsy;

    invoke-interface {v0, p1, p2}, Lmsy;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 98
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lmso;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lmso;->a:Lmsy;

    invoke-interface {v0, p1}, Lmsy;->a(Z)V

    .line 51
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmso;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lmso;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->d()V

    .line 58
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v0, p0, Lmso;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lmso;->a:Lmsy;

    invoke-virtual {p0, p1}, Lmso;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmsy;->a(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f090b56

    invoke-virtual {p0, v0}, Lmso;->b(I)V

    .line 77
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmso;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lmso;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->e()V

    .line 91
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lmso;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lmso;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->f()V

    .line 105
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 27
    :try_start_0
    check-cast p1, Lmsy;

    iput-object p1, p0, Lmso;->a:Lmsy;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lmso;->a:Lmsy;

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lmso;->a:Lmsy;

    .line 37
    return-void
.end method
