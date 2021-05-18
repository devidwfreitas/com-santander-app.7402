.class Lgmf;
.super Lgml;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lgml;-><init>(Landroid/content/Context;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "Renegocie suas D\u00edvidas"

    return-object v0
.end method

.method a(I)V
    .locals 1
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lgmf;->k()V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-static {}, Lgpu;->j()V

    .line 41
    iget-object v0, p0, Lgmf;->c:Lhya;

    invoke-interface {v0}, Lhya;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lgmf;->c:Lhya;

    invoke-interface {v0}, Lhya;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :cond_2
    invoke-static {}, Lhxi;->b()V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "Condi\u00e7\u00e3o Especial"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "Condi\u00e7\u00e3o Especial"

    return-object v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
