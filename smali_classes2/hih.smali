.class public Lhih;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lhjb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

.field private b:Lhjb;

.field private c:Lhje;


# direct methods
.method private constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Lhhz;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lhih;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)V

    return-void
.end method

.method private a()Lhje;
    .locals 4

    .prologue
    .line 406
    new-instance v0, Lhje;

    invoke-direct {v0}, Lhje;-><init>()V

    .line 407
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->setAgencia(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->setConta(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->c(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Lhiz;

    move-result-object v1

    invoke-virtual {v1}, Lhiz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->b(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->c(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Lhiz;

    move-result-object v1

    invoke-virtual {v1}, Lhiz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->c(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->d(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->d(Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->e(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->a(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->j(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Lhiw;

    move-result-object v1

    invoke-virtual {v1}, Lhiw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->f(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->m(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->e(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    iget-object v1, v1, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->v:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->setConnUuid(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    iget-object v1, v1, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->v:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->setTokenSessao(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    iget-object v1, v1, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhje;->setTokenTransacao(Ljava/lang/String;)V

    .line 419
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lhjb;
    .locals 6

    .prologue
    .line 398
    invoke-direct {p0}, Lhih;->a()Lhje;

    move-result-object v0

    iput-object v0, p0, Lhih;->c:Lhje;

    .line 399
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 400
    iget-object v1, p0, Lhih;->c:Lhje;

    const-class v2, Lhjb;

    invoke-static {}, Lhas;->T()Ljava/lang/String;

    move-result-object v3

    const-string v4, "simularAntecipacao13"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjb;

    iput-object v0, p0, Lhih;->b:Lhjb;

    .line 402
    iget-object v0, p0, Lhih;->b:Lhjb;

    return-object v0
.end method

.method protected a(Lhjb;)V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->i(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->i(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 370
    iget-object v0, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 373
    :cond_0
    if-eqz p1, :cond_1

    .line 376
    invoke-virtual {p1}, Lhjb;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    const-string v1, "simularAntecipacaoDT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 381
    const-string v1, "simularAntecipacaoRequest"

    iget-object v2, p0, Lhih;->c:Lhje;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 383
    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-virtual {v1, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->startActivity(Landroid/content/Intent;)V

    .line 392
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 393
    return-void

    .line 386
    :cond_2
    iget-object v0, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lhjb;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 354
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhih;->a([Ljava/lang/Void;)Lhjb;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 354
    check-cast p1, Lhjb;

    invoke-virtual {p0, p1}, Lhih;->a(Lhjb;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 362
    iget-object v0, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    iget-object v1, p0, Lhih;->a:Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;->a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/SimulacaoAntecipacaoDTPasso1Activity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 363
    return-void
.end method
