.class public Lhht;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lhje;",
        "Ljava/lang/Void;",
        "Lhiy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

.field private b:Lhiy;


# direct methods
.method private constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;Lhhs;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lhht;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lhje;)Lhiy;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 95
    aget-object v0, p1, v2

    iget-object v1, p0, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    iget-object v1, v1, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->setTokenTransacao(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 97
    aget-object v1, p1, v2

    const-class v2, Lhiy;

    invoke-static {}, Lhas;->T()Ljava/lang/String;

    move-result-object v3

    const-string v4, "efetuarAntecipacao13"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhiy;

    iput-object v0, p0, Lhht;->b:Lhiy;

    .line 98
    iget-object v0, p0, Lhht;->b:Lhiy;

    return-object v0
.end method

.method protected a(Lhiy;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 105
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 106
    iget-object v0, p0, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "listaCustoCET"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 108
    const-string v2, "abrirComprovanteAnte13Salario"

    invoke-virtual {v1, v2}, Lgvb;->i(Ljava/lang/String;)V

    .line 109
    const-string v2, "shareComprovanteAnte13Salario"

    invoke-virtual {v1, v2}, Lgvb;->j(Ljava/lang/String;)V

    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lhiy;->getConfirmacao()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v2

    invoke-interface {v2}, Lhya;->h()V

    .line 115
    const/4 v2, 0x2

    new-array v2, v2, [Lmzp;

    sget-object v3, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v3, v2, v4

    sget-object v3, Lmzp;->RELOAD_EMPRESTIMOS:Lmzp;

    aput-object v3, v2, v5

    .line 119
    new-instance v3, Lmzn;

    invoke-direct {v3}, Lmzn;-><init>()V

    .line 120
    new-instance v4, Lhhu;

    invoke-direct {v4, p0, v1, p1, v0}, Lhhu;-><init>(Lhht;Lgvb;Lhiy;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v2, v4}, Lmzn;->a([Lmzp;Lfoh;)V

    .line 142
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lhiy;->getConfirmacao()Ljava/lang/String;

    move-result-object v2

    const-string v3, "erro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    invoke-static {v2, v1, p1, v0, v5}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;Lgvb;Lhiy;Ljava/util/ArrayList;Z)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    const-class v3, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const-string v2, "comprovanteBase"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    invoke-virtual {v1, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    iget-object v1, p0, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    iget-object v1, v1, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->i:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4, v4}, Lhav;->a(Landroid/app/Activity;Lfvu;ZZ)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    check-cast p1, [Lhje;

    invoke-virtual {p0, p1}, Lhht;->a([Lhje;)Lhiy;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p1, Lhiy;

    invoke-virtual {p0, p1}, Lhht;->a(Lhiy;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 89
    iget-object v0, p0, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    iget-object v1, p0, Lhht;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 90
    return-void
.end method
