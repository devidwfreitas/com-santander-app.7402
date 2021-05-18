.class public Lhjq;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lhkm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

.field private b:Lhkm;

.field private c:Lhkp;


# direct methods
.method private constructor <init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;Lhjm;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lhjq;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)V

    return-void
.end method

.method private a()Lhkp;
    .locals 4

    .prologue
    .line 309
    new-instance v0, Lhkp;

    invoke-direct {v0}, Lhkp;-><init>()V

    .line 310
    invoke-static {}, Lmzr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkp;->setAgencia(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lmzr;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkp;->setConta(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->l(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Lhkk;

    move-result-object v1

    invoke-virtual {v1}, Lhkk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkp;->a(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->l(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Lhkk;

    move-result-object v1

    invoke-virtual {v1}, Lhkk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkp;->b(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->c(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/widget/EditText;

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

    invoke-virtual {v0, v1}, Lhkp;->c(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->i(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/widget/EditText;

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

    invoke-virtual {v0, v1}, Lhkp;->d(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    iget-object v1, v1, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->v:Lmip;

    invoke-interface {v1}, Lmip;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkp;->setConnUuid(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    iget-object v1, v1, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->v:Lmip;

    invoke-interface {v1}, Lmip;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkp;->setTokenSessao(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    iget-object v1, v1, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->v:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhkp;->setTokenTransacao(Ljava/lang/String;)V

    .line 320
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lhkm;
    .locals 6

    .prologue
    .line 277
    invoke-direct {p0}, Lhjq;->a()Lhkp;

    move-result-object v0

    iput-object v0, p0, Lhjq;->c:Lhkp;

    .line 278
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 279
    iget-object v1, p0, Lhjq;->c:Lhkp;

    const-class v2, Lhkm;

    invoke-static {}, Lhas;->U()Ljava/lang/String;

    move-result-object v3

    const-string v4, "simularAntecipacaoIR"

    const-string v5, "return"

    invoke-interface/range {v0 .. v5}, Lgof;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhkm;

    iput-object v0, p0, Lhjq;->b:Lhkm;

    .line 281
    iget-object v0, p0, Lhjq;->b:Lhkm;

    return-object v0
.end method

.method protected a(Lhkm;)V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->g(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->g(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 289
    iget-object v0, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 292
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lhkm;->getConfirmacao()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-static {v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->d(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    const-string v1, "simularAntecipacaoIR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 297
    const-string v1, "simularAntecipacaoIRRequest"

    iget-object v2, p0, Lhjq;->c:Lhkp;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-virtual {v1, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->startActivity(Landroid/content/Intent;)V

    .line 305
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 306
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->d(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lhkm;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmxn;->e(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhjq;->a([Ljava/lang/Void;)Lhkm;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 263
    check-cast p1, Lhkm;

    invoke-virtual {p0, p1}, Lhjq;->a(Lhkm;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 271
    iget-object v0, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    iget-object v1, p0, Lhjq;->a:Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;

    invoke-static {v1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;->a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/SimulacaoAntecipacaoIRPasso1Activity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 272
    return-void
.end method
