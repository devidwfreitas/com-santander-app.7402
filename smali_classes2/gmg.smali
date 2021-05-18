.class Lgmg;
.super Lgml;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lgml;-><init>(Landroid/content/Context;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "Antecipa\u00e7\u00e3o de 13\u00ba"

    return-object v0
.end method

.method a(I)V
    .locals 3
    .param p1    # I
        .annotation build Lhyr;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lgmg;->k()V

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lgmg;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->e()Lhxk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgmg;->b:Lhxo;

    invoke-virtual {v0}, Lhxo;->e()Lhxk;

    move-result-object v0

    invoke-virtual {v0}, Lhxk;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgmg;->a:Landroid/content/Context;

    const-class v2, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    iget-object v1, p0, Lgmg;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lgmg;->a:Landroid/content/Context;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "Antecipe j\u00e1"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lgmg;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method
